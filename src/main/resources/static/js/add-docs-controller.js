function AddDocsCtrl($scope, $http, $uibModalInstance, existingDocs) {
    $scope.existingDocs = existingDocs;
    $scope.addedDocuments = [];
    function makeSet(existingDocs) {
        var docSet = {};
        R.forEach(function (docInfo) {
            docSet[docInfo.document.id] = true;
        }, existingDocs);
        return docSet;
    }

    function removeExistingDocs(newDocs, existingDocs) {
        var docSet = makeSet(existingDocs);
        return R.filter(function (d) {
            return !docSet[d.id];
        }, newDocs)
    }

    $scope.fetchDocuments = function () {
        $scope.documents = [];
        $scope.loading = true;
        $http.get('/documents', {params: {query: $scope.documentQuery}}).success(function (data) {
            $scope.documents = removeExistingDocs(convertDocuments(data), $scope.existingDocs);
            $scope.loading = false;
        });
    };
    var convertDocuments = function (docs) {
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
            newDoc.newlyAdded = true;
            newDoc.relevantTopics = doc.relevantTopics;
            newDoc.author = R.map(function (author) {
                return author.fullName
            }, doc.authors).join(",");
            return newDoc;
        }, docs)
    };
    $scope.addDocument = function (document) {
        document.added = true;
        $scope.addedDocuments.push(document);
    };

    $scope.finishAdd = function () {
        $uibModalInstance.close($scope.addedDocuments);
    };

    $scope.cancelAdd = function () {
        $uibModalInstance.dismiss('cancel');
    };

}