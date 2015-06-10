---
searchable: false
---

angular.module("app")
  .directive("apiExplorer", ->
    restrict: "E"
    transclude: true
    replace: true
    scope: {
      resource: "@"
      editable: "=?"
      method: "@"
    }
    controller: ["$scope", "$parse", "$compile", ($scope, $parse, $compile) ->
      $scope.editable = true unless $scope.editable?
      $scope.loading = false
      
      $scope.stores = {
        resources: {
          title: "Resources"
          singular: "resource"
          data: []
          allowNewRows: false
          allowCheckBox: false
        }
        parameters: { 
          title: "Parameters"
          singular: "parameter"
          data: []
          allowNewRows: true
          allowCheckBox: true
        }
        parts: { 
          title: "Body"
          singular: "body item"
          data: []
          allowNewRows: true
          allowCheckBox: false
        }
        headers: { 
          title: "Headers"
          singular: "header"
          data: []
          allowNewRows: true
          allowCheckBox: false
        }
      }

      $scope.addRow = (store) ->
        row = {}
        row.showCheckBox = true
        row.value = ""
        row.originalValue = ""
        row.showCheckBox = true if row.enabled?
        row.required = false
        row.enabled = true
        row.editableKey = true
        row.editableValue = true
        row.reset = -> row.value = row.originalValue
        row.showReset = -> row.value != row.originalValue
        store.data.push row
      
      $scope.status = ->
        return "Loading" if $scope.loading
        return $scope.response.status if $scope.response?.status?
        "No request has been made yet"

      $scope.appendParameters = (url, data) ->
        ret = []
        for datum of data
          unless datum == "undefined"
            ret.push encodeURIComponent(datum) + '=' + encodeURIComponent(data[datum])
        parameters = ret.join('&')
        if parameters == ""
          return url
        else
          return "#{url}?#{parameters}"
      
      $scope.compiledResource = ->
        str = $scope.resource.replace(/\/:(.+?)(?:\?+|\/+|$)/g, "/<%= $1 %>/").replace(/\/$/, '');
      
        resources = {}
        for resource in $scope.stores.resources.data
          resources[resource.name] = resource.value
          
        parameters = {}
        for parameter in $scope.stores.parameters.data
          parameters[parameter.name] = parameter.value if parameter.enabled
        
        try
          str = _.template(str)(resources)
        catch e
          console.log e
        
        return $scope.appendParameters(str, parameters)
      
      _lastGoodResult = ""
      $scope.toPrettyJSON = (objStr, tabWidth) ->
        try
          obj = $parse(objStr)({})
        catch e
          return _lastGoodResult

        result = JSON.stringify(obj, null, Number(tabWidth))
        _lastGoodResult = result
        result

      $scope.safeApply = (fn) ->
        phase = @$root.$$phase
        if phase is "$apply" or phase is "$digest"
          fn()  if fn and (typeof (fn) is "function")
        else
          @$apply fn
      
      
      $scope.performRequest = ->
        headers = {}
        for datum in $scope.stores.headers.data
          headers[datum.name] = datum.value
          
        parts = {}
        for datum in $scope.stores.parts.data
          parts[datum.name] = datum.value
        
        $scope.loading = true
        $scope.error = false

        $.ajax {
          url: $scope.compiledResource()
          method: $scope.method
          headers: headers
          contentType: "application/x-www-form-urlencoded"
          data: parts
          complete: (jqXHR, textStatus) ->
            $scope.safeApply ->
              $scope.loading = false
              $scope.response = jqXHR
              $scope.error = true
        }
      
      this.addDatum = (datum, type) ->
        $scope.stores[type].data.push datum
    ]
    templateUrl: "/templates/explorer.html"
)
