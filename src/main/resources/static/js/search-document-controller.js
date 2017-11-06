function SearchDocumentController($scope) {
    $scope.setSummary = function (showMore) {
        $scope.showMore = showMore;
        var abstractText = $scope.document.abstractText;
        if (showMore) {
            $scope.abstract = abstractText;
        } else {
            $scope.abstract = abstractText.split(/\s+/).slice(0, 12).join(" ");
        }
    };

    $scope.showMore = false;
    $scope.setSummary();
}