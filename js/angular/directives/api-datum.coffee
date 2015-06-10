---
searchable: false
---

datumProvider = (type) ->
  ->
    require: "^apiExplorer"
    restrict: "E"
    transclude: true
    replace: true
    scope: {
      name: '@'
      default: '@'
      value: '@'
      required: '=?'
      enabled: '=?'
      editableKey: '=?'
      editableValue: '=?'
    }


    controller: ["$scope", ($scope) ->
      $scope.showCheckBox = false
      $scope.datumType = type
      $scope.value = $scope.value || $scope.default
      $scope.originalValue = $scope.value
      $scope.showCheckBox = true if $scope.enabled?

      $scope.required = false unless $scope.required?
      $scope.enabled = true unless $scope.enabled?
      $scope.editableKey = true unless $scope.editableKey?
      $scope.editableValue = true unless $scope.editableValue?

      $scope.reset = ->
        $scope.value = $scope.originalValue

      $scope.showReset = ->
        $scope.value != $scope.originalValue
      
      $scope.object = ->
        object = {}
        object[$scope.name] = $scope.value
        return object
    ]
    link: (scope, element, attrs, apiExplorerCtrl) ->
      apiExplorerCtrl.addDatum scope, scope.datumType
    templateUrl: "/templates/datum.html"

angular.module("app")
  .directive("apiParameter", datumProvider('parameters'))
  .directive("apiPart", datumProvider('parts'))
  .directive("apiHeader", datumProvider('headers'))
  .directive("apiResource", datumProvider('resources'))
