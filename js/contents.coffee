---
searchable: false
---

$ ->
  headlines = $('.main--content').find('h2, h3')
  
  $list = $("<ol></ol>")
  console.log $list.addClass("nav-list")

  for headline in headlines
    text = $(headline).text()
    id = "##{$(headline).attr("id")}"
    $item = $("<li></li>")
    $("<a></a>")
      .attr("href", id)
      .text(text)
      .appendTo($item)
      .addClass("nav-item")
    $item.appendTo($list)
    $('#contents').append($list)
