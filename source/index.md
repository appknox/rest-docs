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

```python
client.submit_url(url)
```

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

```python

client.project_list()

```

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

```python

client.project_get(project_id)

```

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

This endpoint updates your project credentials.

### HTTP Request

`POST /api/projects/save_credentials/<project_id>`

### Query Parameters

Parameter | Default | Description
--------- | ------- | -----------
testUser | NONE | Username.
testPassword | NONE | Password.


<aside class="success">
Your username and password define your uniqueness!
</aside>

# Files

## Project Files

```python
client.file_list(project_id)
```
> The above command returns JSON structured like this:

```json
[
  {
    "files": files
  }
]
```

This endpoint gets your project's files.

### HTTP Request

`GET /api/projects/<project_id>/files`

<aside class="success">

</aside>


## Last Updated File
> The above command returns JSON structured like this:

```json
[
  {
    "file": file
  }
]
```

This endpoint gets your project's most recent file.

### HTTP Request

`GET /api/projects/<project_id>/last_file`

<aside class="success">
Current Affairs!
</aside>


## Get File by Id

```python
client.file_get(file_id)
```

> The above command returns JSON structured like this:

```json
[
  {
        "file": file,
        "projects": project,
        "analyses": analyses,
        "vulnerabilities": vulnerabilities,
    }
]
```

This endpoint gets your file by id.

### HTTP Request

`GET /api/files/<file_id>`

<aside class="success">

</aside>


# Analyses

```python
client.analyses_list(file_id)
```

> The above command returns JSON structured like this:

```json
[
  {"analyses": analyses}
]
```

This endpoint gives you analyses for a file id.

### HTTP Request

`GET /api/files/<file_id>/analyses`

<aside class="success">

</aside>


# Signed PDF URL
> The above command returns JSON structured like this:

```json
[
  {
        "base_url": base_url,
        "query_params": query_params,
        "headers": headers,
        "file_key": file_key,
        "file_key_signed": hmac_sign,
    }
]
```

This endpoint generates upload url for report.

### HTTP Request

`GET /api/signed_pdf_url/<file_id>`

<aside class="success">

</aside>


# Upload File

```python
client.upload_file(file)
```

> The above command returns JSON structured like this:

```json
[
  {"message": "File Uploaded successfully"}
]
```

This endpoint provides report in specified format.

### HTTP Request

`GET /api/uploaded_file`

### Query Parameters

Parameter | Default | Description
--------- | ------- | -----------
file_key | NONE | File Key.
file_key_signed | NONE | File Key Signed.

<aside class="success">

</aside>


# Report

```python
client.report(file_id, format_type)
```

> The above command returns JSON structured like this:

```json
[

]
```

This endpoint provides report in specified format.

### HTTP Request

`GET /api/report/<file_id>`

### Query Parameters

Parameter | Default | Description
--------- | ------- | -----------
format | json | Specify formats in `csv`, `pdf`, `xml` or `json`.

<aside class="success">

</aside>
