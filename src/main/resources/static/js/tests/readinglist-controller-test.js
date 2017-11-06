describe('readinglist', function () {

    beforeEach(module('app'));

    var $controller;

    beforeEach(inject(function (_$controller_) {
        $controller = _$controller_;
    }));

    describe('initialization', function () {
        it('should initialize necessary $scope variables', function () {
            var $scope = {
                $watch: function () {

                }
            };
            var controller = $controller('ReadingListCtrl', {$scope: $scope});
            expect($scope.allTopicsLength).toBe(0);
            expect($scope.selectedTopics.length).toBe(0);
            expect($scope.matchedTopics.length).toBe(0);
            expect($scope.expandedNodes.length).toBe(0);
        });

        it('should initialize tree control', function () {
            var $scope = {
                $watch: function () {

                }
            };
            var controller = $controller('ReadingListCtrl', {$scope: $scope});
            expect($scope.treeOptions.nodeChildren).toBe('dependentTopics');
            expect($scope.treeOptions.dirSelectable).toBe(true);
            expect($scope.treeOptions.multiSelection).toBe(true);
        });

        it('should initialize orderby map', function () {
            var $scope = {
                $watch: function () {

                }
            };
            var controller = $controller('ReadingListCtrl', {$scope: $scope});
            expect($scope.documentOrderOptions).toEqual([{name: 'Pagerank score', field: 'pageRankScore'},
                {name: 'Relevance', field: 'relevanceScore'},
                {name: 'Time', field: 'year'},
                {name: 'Author reputation', field: 'authorScore'}]);
            expect($scope.selectedOrder).toBe("pageRankScore");
        });

    });

    describe('methods on topic', function () {
        it('should apply function for all topic', function () {
            var $scope = {
                $watch: function () {

                }
            };
            var controller = $controller('ReadingListCtrl', {$scope: $scope});
            var collector = [];
            var topics = [{
                topic: [{word: "foo"}],
                dependentTopics: [{
                    topic: [{word: "bar"}]
                }]
            }, {
                topic: [{word: "baz"}]
            }];

            $scope.forEachTopic(topics, function (topic) {
                collector.push(topic)
            });
            expect(collector.length).toBe(3);
        });

        it('should select all topic', function () {
            var $scope = {
                $watch: function () {
                }
            };

            var controller = $controller('ReadingListCtrl', {$scope: $scope});
            $scope.matchedTopics = [{
                topic: [{word: "foo"}],
                dependentTopics: [{
                    topic: [{word: "bar"}]
                }]
            }, {
                topic: [{word: "baz"}]
            }];

            $scope.selectAll();

            expect($scope.isSelectAll).toBe(true);
            expect($scope.selectedTopics.length).toBe(3);
            expect($scope.selectedTopics[0].isSelected).toBe(true);
            expect($scope.selectedTopics[1].isSelected).toBe(true);
            expect($scope.selectedTopics[2].isSelected).toBe(true);
        });

        it('should deselect all topic', function () {
            var $scope = {
                $watch: function () {
                }
            };

            var controller = $controller('ReadingListCtrl', {$scope: $scope});
            $scope.matchedTopics = [{
                topic: [{word: "foo"}],
                dependentTopics: [{
                    topic: [{word: "bar"}],
                    isSelected: true
                }],
                isSelected: false
            }, {
                topic: [{word: "baz"}],
                isSelected: true
            }];

            $scope.deSelectAll();

            expect($scope.selectedTopics.length).toBe(0);
            expect($scope.matchedTopics[0].isSelected).toBe(false);
            expect($scope.matchedTopics[0].dependentTopics[0].isSelected).toBe(false);
            expect($scope.matchedTopics[1].isSelected).toBe(false);

        });

        it('should count no.of topics', function () {
            var $scope = {
                $watch: function () {
                }
            };

            var controller = $controller('ReadingListCtrl', {$scope: $scope});
            var topics = [{
                topic: [{word: "foo"}],
                dependentTopics: [{
                    topic: [{word: "bar"}],
                    isSelected: true
                }],
                isSelected: false
            }, {
                topic: [{word: "baz"}],
                isSelected: true
            }];

            var count = $scope.countNodes(topics);

            expect(count).toBe(3);
        });
    });

    describe('methods for documents', function () {
        it('should filter documents based on selected topics', function () {
            var $scope = {
                $watch: function () {

                }
            };
            var controller = $controller('ReadingListCtrl', {$scope: $scope});
            $scope.selectedTopics = [{
                topic: [{word: "foo"}],
                dependentTopics: [{
                    topic: [{word: "bar"}]
                }],
                documents: [{
                    "author": "author1",
                    "title": "title1"
                }]
            }, {
                topic: [{word: "baz"}],
                documents: [{
                    "author": "author2",
                    "title": "title2"
                }]
            }, {
                topic: [{word: "bar"}],
                documents: [{
                    "author": "author3",
                    "title": "title3"
                }, {
                    "author": "author4",
                    "title": "title4"
                }]
            }];

            var docInfo = $scope.filterDocuments();
            expect(docInfo.length).toBe(4);
            expect(docInfo[0].document.author).toBe("author1");
            expect(docInfo[1].document.author).toBe("author2");
            expect(docInfo[2].document.author).toBe("author3");
            expect(docInfo[3].document.author).toBe("author4");
            expect(docInfo[0].document.title).toBe("title1");
            expect(docInfo[1].document.title).toBe("title2");
            expect(docInfo[2].document.title).toBe("title3");
            expect(docInfo[3].document.title).toBe("title4");
        });
    });

});