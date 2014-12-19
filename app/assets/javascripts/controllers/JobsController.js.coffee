jobCtrl = ($scope, $http) ->
  $http.get('/jobs.json')
    .success (data, status, headers, config) ->
      $scope.jobs = data

    .error (data, status, headers, config) ->
      console.log 'Did not get Jobs'

angular
  .module('Joynus')
  .controller('jobCtrl', ['$scope', '$http', jobCtrl])
