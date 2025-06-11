[GWind](readMe.md)



# Usage


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
| Adjective       | Form                                  |
|-----------------|---------------------------------------|
| *project-snake* | The_Project                           |
| *service-snake* | The_Service_Account                   |
| *billing-snake* | The_Billing_Account                   |
| *service-nicks* | cloudresourcemanager:serviceusage:... |

| Verb   | Noun                 | Adjectives                      |
|--------|----------------------|---------------------------------|
| revise | projects             |                                 |
| revise | service-accounts     | *project-snake*                 |
| revise | service-account-keys | *project-snake* *service-snake* |
| revise | iam-policy           | *project-snake*                 |
| revise | billing-accounts     |                                 |
| revise | billing-projects     | *billing-snake*                 |
| revise | services             | *project-snake*                 |
| revise | buckets              | *project-snake*                 |
| create | project              | *project-snake*                 |
| create | service-account      | *project-snake* *service-snake* |
| create | service-account-key  | *project-snake* *service-snake* |
| create | iam-policy-binding   | *project-snake* *service-snake* |
| create | billing-project      | *project-snake* *billing-snake* |
| create | services             | *project-snake* *service-nicks* |
| create | bucket               | *project-snake*                 |
| delete | project              | *project-snake*                 |
| delete | service-account      | *project-snake* *service-snake* |
| delete | service-account-key  | *project-snake* *service-snake* |
| delete | iam-policy-binding   | *project-snake* *service-snake* |
| delete | iam-policy           | *project-snake*                 |
| delete | billing-project      | *project-snake* *billing-snake* |
| delete | services             | *project-snake* *service-nicks* |
| delete | bucket               | *project-snake*                 |


## Secrets
It is convenient to specify the snakes in a file of so-called secrets.  For example, were `.secrets` to be
```
#!/bin/bash
export P=The_Project
export SA=The_Service_Account
export BA=The_Billing_Account
export SNs=cloudresourcemanager:serviceusage
```
then it could be sourced to hide details and simplify invocation.
```
$ source .secrets
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
#gwind delete iam-policy-binding $P $SA
gwind delete iam-policy $P
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

# This function accepts a list from a pipe to select the objects whose given key equals the given gem.
filter () { key=$1; gem=$2; jq '.[] | select ('$key' == "'"$gem"'")'; }; export -f filter

# This function maps from a snake to a kebab.
kebab () { echo "$1" | tr [:upper:] [:lower:] | tr _ -; }; export -f kebab

# This function maps from a snake to a donut.
donut () { echo "$1" | tr _ ' '; }; export -f donut
```
```bash
# For example,
gw revise billing-projects $BA | filter .projectId $(kebab $P)
```
