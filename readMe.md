


# GWind
GWind is a command-line tool for accomplishing some foundational tasks on a personal GCP account.  It won't take you far but it'll get you there quickly, to let you get on with more interesting activities.  GWind requires GCloud to be on the path. 


## Usage
```
gwind --how 
gwind --version
source <(gwind --completion) 

gwind <verb> <noun> [<adjective> ...]
```
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

| Adjective       | Form                                  |
|-----------------|---------------------------------------|
| *project-snake* | Thy_Project                           |
| *service-snake* | Thy_Service_Account                   |
| *billing-snake* | Thy_Billing_Account                   |
| *service-nicks* | cloudresourcemanager:serviceusage:... |


## Development
* [Artisan](artisan.md)
* [Builder](builder.md)
* [Changes](changes.md)


## Note
The response seems to be untrappable and has been seen when GCloud is not on the path.
```
$ gwind revise projects
gwind: gcloud: readCreateProcessWithExitCode: posix_spawnp: does not exist (No such file or directory)
```


## *2025-05-06*
