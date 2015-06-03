---
searchable: false
---

$ ->
  SimpleJekyllSearch
    searchInput: $('#search-field')[0]
    resultsContainer: $('#search-results')[0]
    json: "/search.json"
    
  $('#search-field').on 'keypress', (event) ->
    event.preventDefault() if event.keyCode == 13      
