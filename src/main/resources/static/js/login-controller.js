function LoginCtrl($scope, $location) {
    if ($location.search().error) {
        $scope.errorMessage = "Authentication failure. Please try again."
    }
    if ($location.search().logout) {
        $scope.infoMessage = "Logout successful."
    }

}
