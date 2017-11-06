function ReadingListCtrl($scope, $http, $uibModal, $q) {

    initialize();

    Array.prototype.move = function (from, to) {
        this.splice(to, 0, this.splice(from, 1)[0]);
    };

    $scope.sendReorderData = function (timeTaken) {
        var documents = $scope.moveableDocuments;
        var query = $scope.selectedTerms;
        var topics = $scope.selectedTopics;
        var originalDocuments = $scope.filteredDocuments;
        var data = {
            query: query,
            topics: getTopicIds(topics),
            documents: getDocumentIds(documents),
            originalDocuments: getDocumentIds(originalDocuments),
            timeTaken: timeTaken,
            expertise: $scope.complexity
        };
        $http.post('reorder', data).then(function (response) {
            console.log("success");
        }, function (response) {
            console.log("failure")
        });
    };

    $scope.toggleReordering = function () {
        $scope.reordering = !$scope.reordering;
        if ($scope.reordering) {
            $scope.reorderStart = new Date();
            $scope.moveableDocuments = $scope.filteredDocuments;
        } else {
            $scope.reorderEnd = new Date();
            var timeTaken = $scope.reorderEnd - $scope.reorderStart;
            $scope.sendReorderData(timeTaken);
            $scope.filteredDocuments = $scope.moveableDocuments;
        }
    };

    function getDocumentIds(documents) {
        return R.map(function (documentInfo) {
            return documentInfo.document.id
        }, documents);
    }

    function getTopicIds(topics) {
        return R.sort(function (a, b) {
            return a - b
        }, R.uniq(R.map(function (topic) {
            return topic.index
        }, topics)));
    }

    $scope.sortDocuments = function (documents) {
        return R.sortBy(R.path(['document', 'index']))(documents);
    };

    $scope.documentInserted = function (item, toIndex) {
        var fromIndex = R.findIndex(function (document) {
                return document.document.title == item.document.title
            },
            $scope.moveableDocuments);
        $scope.moveableDocuments.move(fromIndex, toIndex);
        return true;
    };

    $scope.treeOptions = {
        nodeChildren: "dependentTopics",
        dirSelectable: true,
        multiSelection: true,
        injectClasses: {
            "li": "topic-li"
        }
    };

    $scope.$watch('selectedOrder', function () {
        $scope.selectedOrderOption = $scope.getOrder();
        $scope.selectedOrderOption = $scope.getOrder();
        if ($scope.selectedOrderOption.field == 'pageRankScore') {
            $scope.hideGraph = true;
            $scope.hideTopics = true;
            $scope.disableButtons = true;
        } else {
            $scope.disableButtons = false;
        }
        $scope.filterDocuments();
        $scope.stats = $scope.calculateStats();
    });

    $scope.$watch('selectedTopics', function () {
        $scope.selectedTopics = $scope.getSelectedTopics();
        $scope.filterDocuments();
        $scope.stats = $scope.calculateStats();
    }, true);

    $scope.$watch('selectedTerm', function (term) {
        if (term == undefined || $scope.selectedTerms.indexOf(term) > -1) {
            return
        }
        $scope.selectedTerms.push(term.title);
    }, true);

    $scope.$watch('complexity', function (complexity, old) {
        if (complexity == 'beginner') {
            $scope.topics = 5;
            $scope.documents = 2;
        } else if (complexity == 'intermediate') {
            $scope.topics = 4;
            $scope.documents = 3;
        } else {
            $scope.topics = 3;
            $scope.documents = 5;
        }
        if (old != complexity && complexity != "") {
            $scope.fetchResult();
        }
    });

    $scope.getSelectedTopics = function () {
        topics = [];
        $scope.forEachTopic($scope.matchedTopics, function (topic) {
            if (topic.isSelected)
                topics.push(topic);
        });
        return topics;
    };

    $scope.getUnSelectedTopics = function () {
        topics = [];
        $scope.forEachTopic($scope.matchedTopics, function (topic) {
            if (!topic.isSelected)
                topics.push(topic);
        });
        return topics;
    };

    $scope.removeTerm = function (term) {
        $scope.selectedTerms = R.filter(function (x) {
            return x != term
        }, $scope.selectedTerms)
    };

    $scope.$watch('isSelectAll', function (newVal) {
        if ($scope.matchedTopics) {
            if (newVal) {
                $scope.selectAll();
            } else {
                $scope.deSelectAll();
            }
        }
    });

    function selectTopic(selectedTopic) {
        if (selectedTopic.isSelected) {
            return
        }
        $scope.forEachTopic([selectedTopic], function (topic) {
            topic.isSelected = true;
            $scope.selectedTopics.unshift(topic);
            selectAllSimilarNodes(topic);
        });
    }

    function deselectTopic(deselectedTopic) {
        if (!deselectedTopic.isSelected) {
            return
        }
        var deselectedChildren = [];
        $scope.forEachTopic([deselectedTopic], function (topic) {
            topic.isSelected = false;
            deselectedChildren.push(topic);
            deSelectAllSimilarNodes(topic);
        });
    }


    function selectAllSimilarNodes(node) {
        $scope.forEachTopic($scope.matchedTopics, function (topic) {
            if (topic.topicName == node.topicName) {
                selectTopic(topic);
            }
        });
    }

    function deSelectAllSimilarNodes(node) {
        $scope.forEachTopic($scope.matchedTopics, function (topic) {
            if (topic.topicName == node.topicName) {
                deselectTopic(topic);
            }
        });
    }

    $scope.topicSelected = function (node) {
        if (!node.isSelected) {
            selectAllSimilarNodes(node);
        } else {
            deSelectAllSimilarNodes(node);
        }
    };

    $scope.selectAll = function () {
        $scope.isSelectAll = true;
        $scope.selectedTopics = [];
        $scope.forEachTopic($scope.matchedTopics, function (topic) {
            topic.isSelected = true;
            $scope.selectedTopics.push(topic);
        });
    };

    $scope.deSelectAll = function () {
        $scope.selectedTopics = [];
        $scope.forEachTopic($scope.matchedTopics, function (topic) {
            topic.isSelected = false;
        });
    };

    $scope.forEachTopic = function recursiveApply(topics, f) {
        if (!topics) {
            return
        }
        return R.map(function (topic) {
            f(topic);
            var childNode = 'dependentTopics';
            if (topic[childNode]) {
                topic[childNode] = recursiveApply(topic[childNode], f)
            }
            return topic
        }, topics);

    };

    $scope.fetchReorderedDocs = function () {
        return $http.get('saved_list', {
            params: {
                query: $scope.selectedTerms,
                selectedTopics: getTopicIds($scope.selectedTopics),
                expertise: $scope.complexity
            }
        })
    };

    $scope.filterDocuments = function () {
        if ($scope.selectedOrder == 'pageRankScore') {
            $scope.filteredDocuments = R.map(function (document) {
                return {document: document, topic: {}}
            }, $scope.baselineDocuments);
            return
        }
        $scope.fetchReorderedDocs().then(function (payload) {
            $scope.filteredDocuments = R.map(function (d) {
                return {document: d, topic: {}}
            }, payload.data);
            $scope.moveableDocuments = $scope.filteredDocuments;
        }, function () {
            $scope.filteredDocuments = $scope.sortDocuments($scope.documentsForTopic($scope.selectedTopics));
            $scope.moveableDocuments = $scope.filteredDocuments;
        });
    };

    $scope.documentsForTopic = function (topics) {
        return R.chain(function (topic) {
            return R.map(function (document) {
                return {document: document, topic: topic}
            }, topic.documents)
        }, topics)
    };

    $scope.countNodes = function (topics) {
        if (topics == undefined) {
            return 0;
        }
        return R.reduce(function (total, topic) {
            return total + $scope.countNodes(topic['dependentTopics'])
        }, topics.length, topics);
    };

    $scope.getOrder = function () {
        return R.find(function (order) {
            return order.field == $scope.selectedOrder;
        }, $scope.documentOrderOptions)
    };

    $scope.expandAll = function () {
        $scope.expandedNodes = [];
        $scope.forEachTopic($scope.matchedTopics, function (topic) {
            if (topic.dependentTopics) {
                $scope.expandedNodes.push(topic);
            }
        });
    };

    $scope.calculateStats = function () {
        var max = R.reduce(function (max, current) {
            var currentVal = current.document[$scope.selectedOrder];
            if (currentVal > max) {
                return currentVal;
            }
            return max;
        }, 0, $scope.filteredDocuments);
        var min = R.reduce(function (max, current) {
            var currentVal = current.document[$scope.selectedOrder];
            if (currentVal < max) {
                return currentVal;
            }
            return max;
        }, Infinity, $scope.filteredDocuments);
        return {max: max, min: min}
    };

    $scope.showTopics = function () {
        if (!$scope.disableButtons) {
            $scope.hideTopics = false
        }
    };

    $scope.showGraph = function () {
        if (!$scope.disableButtons) {
            $scope.hideGraph = false
        }
    };

    $scope.addDocs = function () {
        var modalInstance = $uibModal.open({
            size: 'lg',
            templateUrl: 'adddocs.html',
            controller: ["$scope", "$http", "$uibModalInstance", 'existingDocs', AddDocsCtrl],
            resolve: {
                existingDocs: function () {
                    return $scope.moveableDocuments;
                }

            }
        });
        modalInstance.result.then(function (addedDocuments) {
            addedDocuments = R.map(function (doc) {
                return {document: doc}
            }, addedDocuments);
            $scope.moveableDocuments = addedDocuments.concat($scope.moveableDocuments);
        });
    };


    function initialize() {
        $http.get('topic_terms').success(function (data) {
            $scope.topicTerms = R.map(function (term) {
                return {term: term}
            }, data);
        });
        $scope.selectedOrder = 'index';
        $scope.documentOrderOptions = [{name: 'Concept Graph Traversal', field: 'index', reverse: true},
            {name: 'Pagerank', field: 'pageRankScore', reverse: false}
        ];
        $scope.selectedTerms = [];
        $scope.selectedTopics = [];
        $scope.matchedTopics = [];
        $scope.expandedNodes = [];
        $scope.baselineDocuments = [];
        $scope.filteredDocuments = [];
        $scope.allTopicsLength = 0;
        $scope.hideTopics = true;
        $scope.disableButtons = false;
        $scope.complexity = "beginner";
        $scope.loading = false;
        $scope.reordering = false;
    }

    function groupWords(words, n) {
        groups = [];
        for (var i = 0; i < words.length; i = i + n) {
            groups.push(words.slice(i, i + n))
        }
        return R.reduce(function (result, group) {
            return result + group.join(" ") + "\n"
        }, "", groups);
    }

    function processNodes(nodes) {
        return R.map(function (node) {
            var words = node.label.split(" ");
            if (node.label.length > 10 && words.length > 3) {
                node.label = groupWords(words, 3)
            }
            if (node.matched) {
                node.color = '#26a69a';
            }
            return node;
        }, nodes)
    }


    function addArrow(edges) {
        return R.map(function (edge) {
            edge.arrows = {middle: {scaleFactor: 1.2}};
            edge.length = edge.value;
            edge.value = undefined;
            return edge;
        }, edges)
    }

    function initgraph() {

        var container = document.getElementById('mynetwork');
        $scope.nodes = new vis.DataSet(processNodes($scope.graphResponse.nodes));
        $scope.edges = new vis.DataSet(addArrow($scope.graphResponse.edges));
        var data = {
            nodes: $scope.nodes,
            edges: $scope.edges
        };
        var options = {
            nodes: {
                shape: 'dot',
                size: 10,
                font: {
                    size: 15,
                    background: 'white'
                }
            },
            autoResize: true,
            "physics": {
                "repulsion": {
                    "centralGravity": 0,
                    "springLength": 50
                },
                "maxVelocity": 38,
                "minVelocity": 0.75,
                "solver": "repulsion"
            }
        };
        var network = new vis.Network(container, data, options);

        function topicsMatch(topicName, label) {
            return label != null && topicName == label.split("\n").join(" ").trim();
        }

        network.on('click', function (properties) {
            var topicData = $scope.nodes.get(properties.nodes[0]);
            R.forEach(function (document) {
                document.highlight = topicsMatch(document.topic.topicName, topicData.label);
            }, $scope.filteredDocuments);
            $scope.$apply();
        });

    }

    $scope.fetchResult = function () {
        if ($scope.selectedTerms.length == 0) {
            return;
        }
        $scope.loading = true;
        $http.get('readingList', {
            params: {
                query: $scope.selectedTerms,
                t: $scope.topics,
                d: $scope.documents
            }
        }).success(function (data) {
            $scope.deSelectAll();
            $scope.result = data;
            $scope.keyword = data['keyword'];
            $scope.matchedTopics = data['matchTopics'];
            $scope.graphResponse = data['graphResponse'];
            $scope.baselineDocuments = data['baseLineDocuments'];
            $scope.allTopicsLength = $scope.countNodes($scope.matchedTopics);
            $scope.selectAll();
            $scope.expandAll();
            initgraph();
            $scope.loading = false;
        });
    };

}