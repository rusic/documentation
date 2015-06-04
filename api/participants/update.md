---
layout: api
title: Participants/Update
---

# Participants/Update

<api-explorer resource="http://api.rusic.dev/participants/:participant_token" method="PUT" editable="true">
  <api-header name="Accept" required="true" value="application/vnd.rusic.v1+json" editable-key="false" editable-value="false"></api-header>
  <api-header name="X-Rusic-Participant-Token" required="true" value="" editable-key="false"></api-header>
  <api-header name="X-API-Key" required="true" value="abc123" editable-key="false"></api-header>
  <api-resource name="participant_token" required="true" value="" editable-key="false"></api-resource>
  <api-part name="participant[blocked]" required="false" value="true" editable-key="true"></api-part>
</api-explorer>
