---
layout: api
title: Participants/Create
---

# Participants/Create

<api-explorer resource="http://api.rusic.dev/participants" method="POST" editable="true">
  <api-header name="Accept" required="true" value="application/vnd.rusic.v1+json" editable-key="false" editable-value="false"></api-header>
  <api-header name="X-API-Key" required="true" value="abc123" editable-key="false"></api-header>
  <api-part name="participant[provider]" required="true" default="" value="saml"></api-part>
  <api-part name="participant[nickname]" required="true" default="" value="joebloggs"></api-part>
  <api-part name="participant[uid]" required="true" default="" value="florida.buzzard@message.hu"></api-part>
  <api-part name="participant[name]" required="false" default="" value="Joe Bloggs "></api-part>
  <api-part name="participant[oauth_token]" required="false" default="" value="xyz"></api-part>
</api-explorer>
