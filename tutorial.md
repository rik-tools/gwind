[GWind](readMe.md)



# Tutorial
GWind revises, creates and deletes GCP objects, using the GCP API.


## Preliminarily
GWind needs GCloud to be on the path.
```bash
clear
gcloud --version
gwind --version
```
Now, let's see what GWind can do!
```bash
gwind --how
```
On the whole, the arguments are provided in snake case because they are easier to type and are easily transformed into kebab case and doughnut case, which is what the GCP API uses.  The subpenultimate command, above, is used to engage the GWind tab completion.
```bash
source <(gwind --completion)
```
The tab completion gives hints at each stage, for example
```
gwind revise service-account <tab>
service-account-keys  service-accounts 
```
and
```
gwind revise service-account-keys <tab>
gwind revise service-account-keys <project-snake> <service-snake>
```


## In earnest
The GWind revise-commands return JSON.
```bash
gwind revise projects
```
The GWind create- and delete-commands return the received HTTP response code.
```bash
gwind create project Rik_XYZ
```
In the result below, the name is the doughnut of the above snake and the project id is the kebab.
```bash
gwind revise projects | jq '.[] | select (.projectId == "rik-xyz")'
```


## Continuing
Now that there is a project, a service account can be created.
```bash
gwind revise service-accounts Rik_XYZ
```
In general, many objects (plural) are revised and one object (singular) is created or deleted.
```bash
gwind create service-account Rik_XYZ Robot_0
gwind revise service-accounts Rik_XYZ
```


## Secrets
It can be convenient to create a `.secrets` file.
```
#!/bin/bash
export P=The_Project
export SA=The_Service_Account
export BA=The_Billing_Account
export SNs=cloudresourcemanager:serviceusage
```
It can be sourced and used to simplify the command-line invocations.
```bash
source .secrets
```
The service account creation has also created a system-managed key (which is the default GCP behaviour, nothing to do with GWind).
```bash
gwind revise service-account-keys $P $SA
```
To acquire a key for the service account, a key first needs to be created.
```bash
gwind create service-account-key $P $SA
```
Unsurprisingly perhaps, the new key is user-managed.
```bash
gwind revise service-account-keys $P $SA | jq
```


## Kebabs
GWind has downloaded the key but, to continue obscuring the variables, we need a function.
```bash
kebab () { echo "$1" | tr [:upper:] [:lower:] | tr _ -; }; export -f kebab
```
Back to the point, the service account key can be used, say, by a CI/CD tool.
```bash
cat $HOME/.gwind/$(kebab $P)/$(kebab $SA).json
```


## Colours
If you like the JQ colouring, a function can be defined and exported, which also abbreviates.
```bash
gw () { gwind "$@" | jq 2>/dev/null || gwind "$@"; }; export -f gw
```
Revising the IAM policy is the only revision that returns an object; the others return some lists.
```bash
gw revise iam-policy $P
```
By using `gw`, the ability to tab-complete has been lost.  Assuming that the completion was sourced preliminarily, the ability can be regained.
```bash
complete -F cmp_gwind gw
```
The service account is given the editor role.
```bash
gw create iam-policy-binding $P $SA
gw revise iam-policy $P
```


## Show me the money!
GWind will later match the billing account variable to the display name to retrieve the name.
```bash
gw revise billing-accounts
```
All billing projects are linked to the billing account.
```bash
gw revise billing-projects $BA
```
A personal GCP account can have a maximum of five billable projects.
```bash
gw create billing-project $P $BA
```


## Filtering
Filtering on strings can be useful.
```bash
filter () { key=$1; gem=$2;  jq '.[] | select ('$1' == "'$2'")'; }; export -f filter
```
It permits a more-refined response.
```bash
gw revise billing-projects $BA | filter .projectId $(kebab $P)
```

##  Are we there yet?
Only the enabled services are returned.
```bash
gw revise services $P
```
The create-command enables the service(s) in the project.
```bash
gw create services $P $SNs
```
It can take some time for the services to be enabled.
```bash
gw revise services $P
```
If the plan is to interact with GCP from the GWind machine, then, yes, we are there.  We can now switch to a more sophisticated tool for interacting with the platform.  Any state can be kept on the GWind machine.

## Otherwise
If the plan is to interact with GCP from an ephemeral environment, it may be desirable to persist the state in a bucket in the project.  We can see all storage buckets in a project.
```bash
gw revise storage-buckets $P
```
However, there is only one that can be created with GWind, namely `$(kebab $P)-state`.
```bash
gw create storage-bucket $P
gw revise storage-buckets $P
```


## Tearing down
GWind only deletes the project `-state` bucket.
```bash
gw delete storage-bucket $P
```
Services are disabled one at a time so a list of the API response codes is returned.
```bash
gw delete services $P $SNs
```
GWind cannot alter the billing account; it can unlink a billing project.
```bash
gw delete billing-project $P
```
An individual service account can be removed from the IAM policy. 
```bash
gw delete iam-policy-binding $P $SA
```
Alternatively, only the owner role can be retained, with all its members, while all other roles are removed.
```bash
gw delete iam-policy $P
```
Deleting the service account key removes the JSON file in the home-dot-gwind folder as well as the entry on the platform.
```bash
gw delete service-account-key $P $SA
```
After deleting the service account,
```bash
gw delete service-account $P $SA
```
don't revise the service account's keys :D
```bash
gw delete project $P
```
And we're done.
