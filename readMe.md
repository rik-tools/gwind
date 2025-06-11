


# GWind
GWind is a command-line tool for accomplishing some foundational tasks on a personal GCP account.  It won't take you far but it'll get you there quickly, to let you get on with more interesting activities, with more sophisticated tools.  GWind requires GCloud to be on the path.

The assumption is that the personal GCP account is being used mainly for experimentation.  The key idea behind GWind is to spin up a minimal GCP project with as little effort as possible so that more purposeful work can be undertaken with a minimum of fuss.  The problem is that many types of components built in GCP should be taken down soon after being built so as not to incur any unnecessary costs.  An interesting feature of GCP is that project ids must by globally unique and are lost forever on being permanently deleted.  So any code written with a project id hard-coded into it is broken until changed upon the final deletion of the project.  There may be other solutions, however, some ways to avoid having to update the code are: to keep the project empty and active; or, to keep the project in a deletion-requested state and resurrect it temporarily every 25 days or so.  GWind facilitates the offered solutions.
```
gwind <verb> <noun> [<adjective> ...]
source <(gwind --completion)
gwind --version
gwind --how
```

The idea is to provide a compact, command-line program for engaging with the GCP API.  The program provides the abilities to **create**, **revise** and **delete** some GCP objects; the objects are **project**, **service-account**, **service-account-key**, **iam-policy**, **billing-account**, **billing-project**, **service** and **storage-bucket**.  The user supplies some minimal _project_, _service account_, _billing account_ and _service_ data, everything else being inferred: the supply is provided in `Snake_Case` (and make use the tab completion).  The [program](https://github.com/rik-routine/gwind/releases/latest) is a compiled, single-file binary with no dependencies (besides GCloud!) and so is easily deployable.  The program's commands are kept as distinct actions because, although the engagement with the API is synchronous, what GCP does in the background is not.  Hence, some care with the timing of the program's invocations is sometimes warranted.

After successfully running GWind's create-commands in the correct order, there will be:
* a project and a service account;
* both system-managed and user-managed service account keys;
* a local copy of the user-managed service account key JSON;
* an entry in the IAM policy editor role bindings for the service account;
* a billing project linked to the user's billing account;
* the specified (and possibly some unspecified) services; and,
* optionally, a storage bucket for storing any state that may be created by later activities.


## Operation
* [Tutorial](tutorial.md): is a chatty introduction, covering GWind's features, interspersed with some usability tips.
* [Usage](usage.md): is a more-organised reference, covering the same ground as the tutorial.
* [System](system.md): contains some technical notes.


## Development
* [Artisan](artisan.md): tabulates the exposed module members.
* [Builder](builder.md): preserves the development workflow.
* [Changes](changes.md): details the progress of the development.

*2025-05-06*
