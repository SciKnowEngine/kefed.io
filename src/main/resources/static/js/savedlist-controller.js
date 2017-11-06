function SavedListCtrl($scope, $http) {

    $scope.fetchResult = function () {
        $http.get('all_saved_list', {}).success(function (data) {
            $scope.result = data;
            if ($scope.result.length > 0) {
                $scope.showDocuments($scope.result[0])
            }
        }).finally(function () {
            $scope.ready = true;
        });
    };

    $scope.showDocuments = function (query) {
        $scope.currentQueryId = query.id;
        $scope.documents = query.documents;
        $scope.topics = query.topics;
    };

    $scope.fetchResult();

}