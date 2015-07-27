---
layout: doc
title: About the participant token
---

# About the participant token

### What is the participant token

Some endpoints on the Rusic API require you to provide a participant token. This is used by Rusic to authenticate a participant to be able to change
their details such as nickname or email address and is also used to identify the participant that is performing an action such as [creating an idea](/api/ideas/create/).

In other places in the API such as [idea#index](/api/ideas/) and [idea#show](/api/ideas/show/) providing the participant will return extra information such as `liked` which
tells you if that participant has liked the idea yet.

### Where can I find the participant token

As an API key holder you can retrive a participant token via the [participant#index](/api/participants/index/) endpoint.

When you [create a participant](/api/participants/create/) using the API this token is also returned.

### How do I provide the participant token

Certain endpoints will accept or require a header key of `X-Rusic-Participant-Token` with the value set to the token that can be retrived on the [participant#index](/api/participants/index/) endpoint
under the key `rusic_participant_token`.
