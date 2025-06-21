[GWind](readMe.md)



# Tutorial
This is a chatty introduction, covering GWind's features, interspersed with some usability tips.  GWind revises, creates and deletes GCP objects, using the GCP API.  Substitute the project name et al, below, with values that will work for you, then running these commands will set up and tear down a minimal GCP project.


## Preliminarily
GWind needs GCloud to be on the path.
```bash
gcloud --version
gwind --version
```
Now, let's see what GWind can do!
```bash
gwind --how
```
On the whole, the arguments are provided in snake case because they are easier to type and are easily transformed into kebab case and doughnut case, which is what GCP uses.  The subpenultimate command, in the preceding result, is used to engage the GWind tab completion.
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
gwind create project The_Project
```
In the result given by the invocation below, the name is the doughnut of the previously provided snake and the project id is the kebab.
```bash
gwind revise projects
```


## Continuing
Now that there is a project, a service account can be created.
```bash
gwind revise service-accounts The_Project | jq
```
In general, many objects (plural) are revised and one object (singular) is created or deleted.
```bash
gwind create service-account The_Project The_Service_Account
gwind revise service-accounts The_Project | jq
```


## Variables
The billing account display name for the `BA` snake can be found in the GCP console:
> ≡ Billing: Overview: Billing account (dropdown)

It can be convenient to create a `.variables` file.
```
#!/bin/bash
export P=The_Project
export SA=The_Service_Account
export BA=The_Billing_Account
export SNs=cloudresourcemanager:serviceusage
```
It can be sourced and used to simplify the command-line invocations.
```bash
source .variables
```
The service account creation has also created a system-managed key (which is the default GCP behaviour, nothing to do with GWind).
```bash
gwind revise service-account-keys $P $SA | jq
```
To acquire a key for the service account, a user-managed key needs to be created.
```bash
gwind create service-account-key $P $SA
gwind revise service-account-keys $P $SA | jq
```


## Kebabs
GWind has downloaded the key but, to continue obscuring the variables, we need a function.
```bash
kebab () { echo "${1,,}" | tr _ -; }; export -f kebab
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
Revising the IAM policy is the only revision that returns an object; the others return only lists.
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


## Money
GWind will later match the billing account variable to the display name (in the result) to retrieve the name.
```bash
gw revise billing-accounts
```
All billing projects are linked to the billing account.
```bash
gw revise billing-projects $BA
```
The create-command links the project to the billing account.
```bash
gw create billing-project $P $BA
```
A personal GCP account can have a maximum of five billable projects.
```bash
gw revise billing-projects $BA
```


##  Are we there yet?
Only the enabled services are returned.
```bash
gw revise services $P
```
The create-command enables the service(s) in the project.
```bash
gw create services $P $SNs
gw revise services $P
```
If the plan is to interact with GCP from the GWind machine, then, yes, we are there.  We can now switch to a more-sophisticated tool for interacting with the platform.  Any state can be kept on the GWind machine.


## Otherwise
If the plan is to interact with GCP from an ephemeral environment, it may be desirable to persist the state in a storage bucket in the project.  We can see all storage buckets in a project.
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
clear
gw revise storage-buckets $P
gw delete storage-bucket $P
gw revise storage-buckets $P
```
Services are disabled one at a time so a list of the API response codes is returned.
```bash
clear
gw revise services $P
gw delete services $P $SNs
gw revise services $P
```
GWind cannot alter the billing account; it can unlink a billing project.
```bash
clear
gw revise billing-projects $BA
gw delete billing-project $P
gw revise billing-projects $BA
```
An individual editor role service account can be removed from the IAM policy. 
```bash
clear
gw revise iam-policy $P
gw delete iam-policy-binding $P $SA
gw revise iam-policy $P
```
Alternatively, only the owner role can be retained, with all its members, while all other roles are removed.
```bash
gw delete iam-policy $P
gw revise iam-policy $P
```
Deleting the service account key removes the JSON file in the home-dot-gwind folder as well as the entry on the platform.
```bash
clear
cat $HOME/.gwind/$(kebab $P)/$(kebab $SA).json
gw revise service-account-keys $P $SA
gw delete service-account-key $P $SA
gw revise service-account-keys $P $SA
cat $HOME/.gwind/$(kebab $P)/$(kebab $SA).json
```
After deleting the service account,
```bash
clear
gw revise service-accounts $P
gw delete service-account $P $SA
gw revise service-accounts $P
```
don't revise the service account's keys :D  Finally,
```bash
clear
gw revise projects
gw delete project $P
gw revise projects
```
And we're done.
