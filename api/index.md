---
layout: doc
title: API Overview
---

# API Overview

## Introduction

Rusic has a comprehensive [RESTful](http://en.wikipedia.org/wiki/Representational_state_transfer) API covering all of its public models:

- Accounts
- Buckets
- Participants
- Ideas
- Images
- Likes
- Comments

Within our documentation you can experiment with out interactive API explorer. Before you start we recommend you read the [Using Rusic API](#using-rusic-api) section listed below.

## Using Rusic API

All endpoints on the rusic API require two headers to be set at minimum.

**Accept**

The `Accept` header is how we version the Rusic API. The latest stable version is v1 and the value of this header should be set to `application/vnd.rusic.v1+json`.

**X-API-Key**

An API key is required for all requests. You can find the API key by reading the [documentation here](/api/where-can-i-find-my-api-key/).


## API response codes

Response Code | Meaning
---------- | -------
200 | Ok - Your request was understood and we handled it accordingly.
201 | Created - Your request to create a resource was successful.
204 | No Content - Your request was understood but we have not returned the resource.
400 | Bad Request - Your request sucks
401 | Unauthorized - Your API key is wrong or you do not have permission to perform an action.
403 | Forbidden - The resource requested is hidden for administrators only.
404 | Not Found - A specified resource could not be found
405 | Method Not Allowed - You tried to access a resource with an invalid method.
406 | Not Acceptable - You requested a format that isn't json
418 | I'm a teapot
422 | Unprocessable entity - Your request was received but can not be understood.
429 | Too Many Requests -- You're requesting too often! Slow down!
500 | Internal Server Error -- We had a problem with our server. Check your request or try again later.
503 | Service Unavailable -- We're temporarily offline for maintenance. Please try again later.
