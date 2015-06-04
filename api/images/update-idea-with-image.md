---
layout: api
title: Images/Update idea with image
---

# Images/Update idea with image

<api-explorer resource="http://api.rusic.dev/buckets/:bucket_id/ideas/:idea_id" method="PUT">
  <api-header name="Accept" required="true" value="application/vnd.rusic.v1+json" editable-key="false" editable-value="false"></api-header>
  <api-header name="X-Rusic-Participant-Token" required="true" value="" editable-key="false"></api-header>
  <api-header name="X-API-Key" required="true" value="abc123" editable-key="false"></api-header>
  <api-part name="idea[title]" required="true" default="" value="Title"></api-part>
  <api-part name="idea[content]" required="true" default="" value="Content"></api-part>
  <api-part name="idea[image_ids][]" required="false" default="" value="1"></api-part>
  <api-resource name="bucket_id" required="true" default="" value="1"></api-resource>
  <api-resource name="idea_id" required="true" default="" value="1"></api-resource>
</api-explorer>
