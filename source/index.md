---
title: Sherlock API Reference

language_tabs:
  - shell
  - ruby
  - python

toc_footers:
  - <a href="#">Sign Up for a Developer Key</a>
  - <a href="http://github.com/tripit/slate">Documentation Powered by Slate</a>

includes:
  - errors

search: true
---

# Introduction

Welcome to the Sherlock API!

We have language bindings in Shell, Ruby, and Python! You can view code examples in the dark area to the right, and you can switch the programming language of the examples with the tabs in the top right.

This example API documentation page was created with [Slate](http://github.com/tripit/slate). Feel free to edit it and use it as a base for your own API"s documentation.


# Base API

# Authentication

# Users

> The above command returns JSON structured like this:

```json
[
  {"user": user}
]
```

This endpoint gets you user object by id.

### HTTP Request

`GET /api/users/<user_id>`

<aside class="success">
Love thy users!
</aside>


# Namespace Add

> The above command returns JSON structured like this:

```json
[
  {"message": "Namespace request sent successfully!"}
]
```

This endpoint lets you add a namespace.

### HTTP Request

`GET /api/namespace_add`

<aside class="success">
Names divide knights from soldiers!
</aside>


# Store URL

> The above command returns JSON structured like this:

```json
[
  {"message": "success"}
]
```

This endpoint lets you submit a url from store for an app.

### HTTP Request

`POST /api/store_url`

### Query Parameters

Parameter | Default | Description
--------- | ------- | -----------
storeURL | NONE | The url of the app in store.


<aside class="success">

</aside>


# Init
> The above command returns JSON structured like this:

```json
[
  {
        "users": users,
        "currentUser": user,
        "projects": projects,
        "collaborations": collaborations,
        "files": files,
        "analyses": analyses,
        "vulnerabilities": vulnerabilities_dict,
        "pricings": pricing,
        "ratio": {
            "type": "ratio",
            "id": 1,
            "uuid": 1,
            "affected": get_affected_count_for_user,
            "unaffected": get_unaffected_count_for_user,
        },
        "urls": {
            "githubRedirect": {
                "redirect_uri": REDIRECT_BASE_URL,
                "github_redirect": github_redirect url),
                "github_client_id": GITHUB_CLIENT_ID,
                "state": "state",
            },
        }
    }
]
```

This endpoint is the initial call.

### HTTP Request

`GET /api/init`

<aside class="success">
Init is a chatterbox!
</aside>


# Manual Scan

> The above command returns JSON structured like this:

```json
[
  {"message": "Manual assessment is requested"}
]
```

This endpoint lets you request a manual scan.

### HTTP Request

`GET /api/manual/<file_id>`

<aside class="success">
The root of all automation is manual
</aside>


# Settings

## Change Password
> The above command returns JSON structured like this:

```json
[
  {"status": "success",
    "message": "Password updated successfully"}
]
```

This endpoint changes your account password.

### HTTP Request

`POST /api/change_password`

### Query Parameters

Parameter | Default | Description
--------- | ------- | -----------
password | NONE | Your current password.
newPassword | NONE | Your new password.

<aside class="success">
Changing your password is a good habit!
</aside>

# Collaboration

## Add Collaborator

```ruby
require "kittn"

api = Kittn::APIClient.authorize!("meowmeowmeow")
api.kittens.get
```

```python
import kittn

api = kittn.authorize("meowmeowmeow")
api.kittens.get()
```

```shell
curl "http://example.com/api/kittens"
  -H "Authorization: meowmeowmeow"
```

> The above command returns JSON structured like this:

```json
[
  {
        "success": True,
        "message": "An invitation is sent out to the user."
    }
]
```

This adds collaborator.

### HTTP Request

`POST /api/collaboration`

### Query Parameters

Parameter | Default | Description
--------- | ------- | -----------
email | NONE | Email of user to be added as collaborator.
role | NONE | role of collaborator.

<aside class="success">
Remember — Teamwork, Teamwork, Teamwork!
</aside>
## Delete Collaborator

> The above command returns JSON structured like this:

```json
[
  {"message": "Collaborator Removed."}
]
```

This removes a collaborator.

### HTTP Request

`GET /api/collaboration/delete/<collaboration_id>`

<aside class="success">
Remember — Bad Collaborators don"t make good teams!
</aside>


# Projects

## List Projects
> The above command returns JSON structured like this:

```json
[
  {"projects": projects}
]
```

This endpoint lists your projects.

### HTTP Request

`GET /api/projects`

<aside class="success">
Don't forget what you scanned!
</aside>

## Get Project
> The above command returns JSON structured like this:

```json
[
  {
        "project": project,
        "files": files,
        "analyses": analyses,
    }
]
```

This endpoint gets your project data by id.

### HTTP Request

`GET /api/projects/<project_id>`

<aside class="success">
Deep deep down lies the critical data!
</aside>


## Delete Project
> The above command returns JSON structured like this:

```json
[
  {
        "project": project,
        "files": files,
        "analyses": analyses,
  }
]
```

This endpoint deletes your project data by id.

### HTTP Request

`GET /api/projects/delete/<project_id>`

<aside class="success">
We understand what we had when we lose it!
</aside>


## Update Project Credentials
> The above command returns JSON structured like this:

```json
[
  {
    "project": project
  }
]
```

This endpoint gets your project data by id.

### HTTP Request

`POST /api/projects/save_credentials/<project_id>`

### Query Parameters

Parameter | Default | Description
--------- | ------- | -----------
testUser | NONE | Username.
testPassword | NONE | Password.


<aside class="success">

</aside>
