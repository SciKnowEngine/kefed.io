angular.module('app', ['treeControl', 'ui.bootstrap', 'ui.materialize', 'angucomplete-alt', 'dndLists', 'angularUtils.directives.dirPagination'])
    .config(['$locationProvider', function ($locationProvider) {
        $locationProvider.html5Mode(true);
    }])
    .controller('ReadingListCtrl', ['$scope', '$http', '$uibModal', '$q', ReadingListCtrl])
    .controller('LoginCtrl', ['$scope', '$location', LoginCtrl])
    .controller('SavedListCtrl', ['$scope', '$http', SavedListCtrl])
    .controller('DocumentListCtrl', ['$scope', '$http', DocumentListCtrl])
    .directive('document', function () {
        return {
            restrict: 'E',
            controller: DocumentController,
            scope: {
                documentInfo: '=info',
                order: '=order',
                stats: '=stats',
                moveable: '=moveable',
                onDelete: '&'
            },
            templateUrl: 'document.html'
        };
    })
    .directive('topic', function () {
        return {
            restrict: 'E',
            controller: TopicController,
            scope: {
                data: '=data',
                selected: '=selected',
                onselection: '=onselection',
                countNodes: '=nodecounter'
            },
            templateUrl: 'topic.html'
        };

    })
    .directive('query', function () {
        return {
            restrict: 'E',
            scope: {
                item: '=item'
            },
            templateUrl: '../query.html'
        };

    })
    .directive('searchdocument', function () {
        return {
            restrict: 'E',
            controller: SearchDocumentController,
            scope: {
                document: '=document',
                onadd: '&'
            },
            templateUrl: 'search-document.html'
        };
    });