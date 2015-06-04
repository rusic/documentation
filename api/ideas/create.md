---
layout: api
title: Ideas/Create
---

# Ideas/Create

<api-explorer resource="http://api.rusic.com/buckets/:bucket_id/ideas" method="POST">
  <api-header name="X-API-Key" required="true" value="abc123" editable-key="false"></api-header>
  <api-header name="X-Rusic-Participant-Token" required="true" value="" editable-key="false"></api-header>
  <api-header name="Accept" required="true" value="application/vnd.rusic.v1+json" editable-key="false" editable-value="false"></api-header>
  <api-part name="idea[content]" required="true" default="" value="Some content"></api-part>
  <api-part name="idea[title]" required="true" default="" value="Some title"></api-part>
  <api-resource name="bucket_id" required="true" default="" value="1"></api-resource>
</api-explorer>
