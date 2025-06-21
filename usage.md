[GWind](readMe.md)



# Usage
This is a more-organised reference, covering, more or less, the same ground as the tutorial.


## Informational Commands
```
gwind --how 
gwind --version
source <(gwind --completion) 
```


## Operational Commands
```
gwind <verb> <noun> [<adjective> ...]
```

### Variables
| Adjective       | Form                                  |
|-----------------|---------------------------------------|
| *project-snake* | The_Project                           |
| *service-snake* | The_Service_Account                   |
| *billing-snake* | The_Billing_Account                   |
| *service-nicks* | cloudresourcemanager:serviceusage:... |

### Invocations
| Verb   | Noun                 | Adjectives                      | Description                                                                 |
|--------|----------------------|---------------------------------|:----------------------------------------------------------------------------|
| revise | projects             |                                 | revises all projects                                                        |
| revise | service-accounts     | *project-snake*                 | revises all project service accounts                                        |
| revise | service-account-keys | *project-snake* *service-snake* | revises all project service account's keys                                  |
| revise | iam-policy           | *project-snake*                 | revises the project IAM policy                                              |
| revise | billing-accounts     |                                 | revises all billing accounts                                                |
| revise | billing-projects     | *billing-snake*                 | revises all billing account billing projects                                |
| revise | services             | *project-snake*                 | revises all enabled project services                                        |
| revise | buckets              | *project-snake*                 | revises all project storage buckets                                         |
| create | project              | *project-snake*                 | creates or undeletes the given project                                      |
| create | service-account      | *project-snake* *service-snake* | creates the given service account in the project                            |
| create | service-account-key  | *project-snake* *service-snake* | creates a user-managed key for the project service account and downloads it |
| create | iam-policy-binding   | *project-snake* *service-snake* | appends the service account name to the editor role binding members         |
| create | billing-project      | *project-snake* *billing-snake* | links the project to the billing account                                    |
| create | services             | *project-snake* *service-nicks* | enables the services of the project                                         |
| create | bucket               | *project-snake*                 | creates the state storage bucket of the project                             |
| delete | project              | *project-snake*                 | deletes the project                                                         |
| delete | service-account      | *project-snake* *service-snake* | deletes the project service account                                         |
| delete | service-account-key  | *project-snake* *service-snake* | deletes the service account key on the platform and deletes the local file  |
| delete | iam-policy-binding   | *project-snake* *service-snake* | removes a project service account from the editor role binding members      |
| delete | iam-policy           | *project-snake*                 | removes all members from all bindings except the owner role                 |
| delete | billing-project      | *project-snake* *billing-snake* | unlinks the project from the billing account                                |
| delete | services             | *project-snake* *service-nicks* | disables the services with the project                                      |
| delete | bucket               | *project-snake*                 | deletes the project state storage bucket                                    |


## Variables
It is convenient to specify the snakes in a file of variables.  For example, were `.variables` to be
```
#!/bin/bash
export P=The_Project
export SA=The_Service_Account
export BA=The_Billing_Account
export SNs=cloudresourcemanager:serviceusage
```
then it could be sourced to hide the details and simplify the invocations.
```
$ source .variables
$ gwind revise service-accounts $P
```


## Batching GWind

### Reviewing
```bash
gwind revise projects
gwind revise service-accounts $P $SA
gwind revise service-account-keys $P $SA
gwind revise iam-policy $P
gwind revise billing-accounts
gwind revise billing-projects $BA
gwind revise services $P
gwind revise storage-buckets $P
```

### Setting Up
```bash
gwind create project $P
gwind create service-account $P $SA
gwind create service-account-key $P $SA
gwind create iam-policy-binding $P $SA
gwind create billing-project $P $BA
gwind create services $P $SNs
gwind create storage-bucket $P
```

### Tearing Down
```bash
gwind delete storage-bucket $P
gwind delete services $P $SNs
gwind delete billing-project $P
gwind delete iam-policy-binding $P $SA  # or: gwind delete iam-policy $P
gwind delete service-account-key $P $SA
gwind delete service-account $P $SA
gwind delete project $P
```


## Tips 'n' Tricks
```bash
# This function serves to abbreviate `gwind` and to pipe its output through `jq`.
gw () { gwind "$@" | jq 2>/dev/null || gwind "$@"; }; export -f gw

# This invocation serves to assign the `gwind` tab completion to the `gw` abbreviation.
source <(gwind --completion)
complete -F cmp_gwind gw

# This function filters a list from a pipe, selecting the objects whose key string-equals gem.
filter () { key=$1; gem=$2; jq '.[] | select ('"$key"' == "'"$gem"'")'; }; export -f filter

# This function does the same as above for non-quoted data types (boolean, integer, ...).
fylter () { key=$1; gem=$2; jq '.[] | select ('"$key"' == '"$gem"')'; }; export -f fylter

# This function maps from a snake to a kebab.
kebab () { echo "${1,,}" | tr _ -; }; export -f kebab

# This function maps from a snake to a donut.
donut () { echo "$1" | tr _ ' '; }; export -f donut
```
```bash
# For example,
gw revise projects | filter .lifecycleState ACTIVE
gw revise billing-projects $BA | filter .projectId $(kebab $P)
gw revise billing-accounts | fylter .open true
```
