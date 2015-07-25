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
