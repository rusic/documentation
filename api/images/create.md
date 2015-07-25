---
layout: doc
title: Images/Create
---

# Images/Create

> Sorry: The API explorer doesn't currently have file upload support.

### Example using curl

    curl -X "POST" "http://api.rusic.dev/images" \
      -H "Accept: application/vnd.rusic.v1+json" \
      -H "X-Rusic-Participant-Token: abc123" \
      -H "X-API-Key: abc123" \
      -F "image[file]=@/some/file/path.jpg"

### Example with jQuery

    var formData = new FormData();
    formData.append("image[file]", $('#fileInput').val());

    jQuery.ajax({
      url: "http://api.rusic.dev/images",
      type: "POST",
      headers: {
        "Accept": "application/vnd.rusic.v1+json",
        "X-Rusic-Participant-Token": "abc123",
        "X-API-Key": "abc123",
      },
      processData: false,
      contentType: false,
      data: formData,
    })
    .done(function(data, textStatus, jqXHR) {
      console.log("HTTP Request Succeeded: " + jqXHR.status);
      console.log(data);
    })
    .fail(function(jqXHR, textStatus, errorThrown) {
      console.log("HTTP Request Failed");
    });
