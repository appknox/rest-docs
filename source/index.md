---
title: API Reference

language_tabs:
  - shell
  - ruby
  - python

toc_footers:
  - <a href='#'>Sign Up for a Developer Key</a>
  - <a href='http://github.com/tripit/slate'>Documentation Powered by Slate</a>

includes:
  - errors

search: true
---

# Introduction

Welcome to the Sherlock API!

We have language bindings in Shell, Ruby, and Python! You can view code examples in the dark area to the right, and you can switch the programming language of the examples with the tabs in the top right.

This example API documentation page was created with [Slate](http://github.com/tripit/slate). Feel free to edit it and use it as a base for your own API's documentation.

# Base API

# Authentication

# Init
> The above command returns JSON structured like this:

```json
[
  {
        'users': users,
        'currentUser': user,
        'projects': projects,
        'collaborations': collaborations,
        'files': files,
        'analyses': analyses,
        'vulnerabilities': vulnerabilities_dict,
        'pricings': pricing,
        'ratio': {
            'type': 'ratio',
            'id': 1,
            'uuid': 1,
            'affected': get_affected_count_for_user,
            'unaffected': get_unaffected_count_for_user,
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
Init tells you a lot of things!
</aside>


# Settings
> The above command returns JSON structured like this:

```json
[
  {'status': 'success',
    'message': 'Password updated successfully'}
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
require 'kittn'

api = Kittn::APIClient.authorize!('meowmeowmeow')
api.kittens.get
```

```python
import kittn

api = kittn.authorize('meowmeowmeow')
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
        'success': True,
        'message': "An invitation is sent out to the user."
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
  {'message': 'Collaborator Removed.'}
]
```

This removes a collaborator.

### HTTP Request

`GET /api/collaboration/delete/<collaboration_id>`

<aside class="success">
Remember — Bad Collaborators don't make good teams!
</aside>
