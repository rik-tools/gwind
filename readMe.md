


# GWind
GWind is a command-line tool for accomplishing some foundational tasks on a personal GCP account.  It won't take you far but it'll get you there quickly, to let you get on with more interesting activities, with more sophisticated tools.  GWind requires GCloud to be on the path.


## Operation
* [Tutorial](tutorial.md): is a chatty introduction, covering GWind's features, interspersed with some usability tips -- watch the [video](https://rik-howard.info/video/gwind-tutorial.mp4)!
* [Usage](usage.md): is a more-organised reference, covering, more or less, the same ground as the tutorial.
* [System](system.md): contains some technical notes.


## About
The assumption is that the personal GCP account is being used mainly for experimentation.  The key idea behind GWind is to be able to spin up a minimal GCP project with as little effort as possible so that more purposeful work can be undertaken with a minimum of fuss.  The problem is that many types of components built in GCP should be taken down soon after being built so as not to incur any unnecessary costs.  An interesting feature of GCP is that project ids must by globally unique and are lost forever on being permanently deleted.  So any code written with a project id hard-coded into it is broken by the final deletion of the project until the code is updated.  There may be other solutions, however, some ways to avoid having to update the code are: to keep the project empty (so that it attracts no cost) and active (so that it can be built up again when required); or, to keep the project in a deletion-requested state and periodically resurrect it temporarily (so that, when required, it can be undeleted and built up, as before).  GWind can help with these possibilities.
```
gwind <verb> <noun> [<adjective> ...]
source <(gwind --completion)
gwind --version
gwind --how
```
The idea is to provide a compact, command-line program for engaging with the GCP API.  The program provides the abilities to **create**, **revise** and **delete** some GCP objects; the objects are **project**, **service-account**, **service-account-key**, **iam-policy**, **billing-account**, **billing-project**, **service** and **storage-bucket**.  The user supplies some minimal data for _project_, _service account_, _billing account_ and _service_; everything else is inferred.  The supplied variables are provided in `Snake_Case`, which allows for fewer variables to be employed across all invocations -- if in doubt, tabbing provides a hint.  The [program](https://github.com/rik-routine/gwind/releases/latest) is a single-file, compiled binary with no dependencies (besides GCloud!) and so is easily deployable.  The program's commands are kept as distinct actions because, although the engagement with the API is synchronous, what GCP does in the background is not.  Hence, some care with the timing of the program's invocations is sometimes warranted.

After successfully running GWind's create-commands in the correct order, there will be:
* a project with a service account;
* both system-managed and user-managed keys for the service account;
* a local copy of the user-managed service account key JSON;
* an entry in the IAM policy editor role bindings for the service account;
* a billing project linked to the user's billing account;
* the specified (and possibly some unspecified) services; and,
* optionally, a storage bucket for storing any state that may be created by later activities.


## Development
* [Artisan](artisan.md): tabulates the exposed module members.
* [Builder](builder.md): preserves the development workflow.
* [Changes](changes.md): details the progress of the development.

*2025-05-06*
