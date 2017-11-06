function TopicController($scope) {
    $scope.isSelected = function () {
        return R.contains($scope.data, $scope.selected)
    };

    $scope.getId = function (node) {
        return node.$$hashKey.split(':')[1];
    };

    $scope.topicSelectedUnder = function (topic) {
        if (topic == undefined) {
            return 0;
        }
        var count = 0;
        if (topic.isSelected) {
            count = 1;
        }
        if (topic.dependentTopics == undefined) {
            return count;
        }
        return R.reduce(function (total, topic) {
            return total + $scope.topicSelectedUnder(topic)
        }, count, topic.dependentTopics);
    }
}