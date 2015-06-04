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
      $scope.showCheckBox = true if $scope.enabled?

      $scope.required = false unless $scope.required?
      $scope.enabled = true unless $scope.enabled?
      $scope.editableKey = true unless $scope.editableKey?
      $scope.editableValue = true unless $scope.editableValue?
      
      console.log $scope.name
      console.log $scope.editableKey
      console.log typeof($scope.editableKey)
      console.log $scope.name
      console.log $scope.editableValue
      console.log typeof($scope.editableValue)

      # $scope.keyIsEditable = ->
      #   return $scope.editableKey if $scope.editableKey?
      #   true

      # $scope.valueIsEditable = ->
      #   return $scope.editableValue if $scope.editableValue?
      #   true

      # $scope.enabled = true
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
