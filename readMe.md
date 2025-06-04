


# GWind
GWind is a command-line tool for accomplishing some foundational tasks on a personal GCP account.  It won't take you


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

| Adjective       | Form                              |
|-----------------|-----------------------------------|
| *project-snake* | Thy_GCP                           |
| *service-snake* | Robot_Thou                        |
| *billing-snake* | Thy_Billing                       |
| *service-nicks* | cloudresourcemanager:serviceusage |


## Development
* [Artisan](artisan.md)
* [Builder](builder.md)
* [Changes](changes.md)


## Note
The response seems to be untrappable and has been seen when GCloud is not on the path.
```
$ gwind revise projects
gwind-0.0.2-linux-x86_64: gcloud: readCreateProcessWithExitCode: posix_spawnp: does not exist (No such file or directory)
```


## *2025-05-06*
