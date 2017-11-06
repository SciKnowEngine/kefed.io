function DocumentListCtrl($scope, $http) {
    $scope.fetchDocuments = function () {
        $scope.documents = [];
        $scope.loading = true;
        $http.get('/documents', {params: {query: $scope.documentQuery}}).success(function (data) {
            $scope.documents = convertDocuments(data);
            $scope.loading = false;
        });
    };

    function convertDocuments(docs) {
        return R.map(function (doc) {
            var newDoc = {};
            newDoc.id = doc.id;
            newDoc.title = doc.title;
            newDoc.year = doc.year;
            newDoc.abstractText = doc.abstractText;
            newDoc.pedagogicalRole = doc.attributes.pedagogicalRole;
            newDoc.pageRankScore = doc.attributes.pageRankScore;
            newDoc.relevanceScore = doc.attributes.relevanceScore;
            newDoc.authorScore = doc.attributes.authorScore;
            newDoc.readabilityScore = doc.attributes.readabilityScore;
            newDoc.relevantTopics = doc.relevantTopics;
            newDoc.author = R.map(function (author) {
                return author.fullName
            }, doc.authors).join(",");
            return {document: newDoc};
        }, docs)
    }

}