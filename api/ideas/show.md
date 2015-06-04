---
layout: api
title: Ideas/Show
---

# Ideas/Show

<api-explorer resource="http://api.rusic.com/buckets/:bucket_id/ideas/:idea_id" method="GET">
  <api-header name="X-API-Key" required="true" value="abc123" editable-key="false"></api-header>
  <api-header name="Accept" required="true" value="application/vnd.rusic.v1+json" editable-key="false" editable-value="false"></api-header>
  <api-resource name="bucket_id" required="true" default="" value="1"></api-resource>
  <api-resource name="idea_id" required="true" default="" value="1"></api-resource>
</api-explorer>
