[GWind](readMe.md)



# Builder
```bash
clear; source path diva gcloud
```
```bash
clear; diva show state task
```
Edit [Changes](changes.md), [Artisan](artisan.md) and [use](usr/use).
```bash
clear; before diva show state task -- diva update clean build test zippe install
```
```bash
clear; before diva show state task -- diva check stage
```
```bash
clear; before diva show state task -- diva commit entag push  # release
```
Other
```bash
diva show database gitbase
```
```bash
diva reverse
```
```bash
diva rename Original.Source Final.Target
```
Using Stack
```bash
diva unpack
source path stack
```
```bash
stack ...
```
```bash
source path diva
diva repack
```
Note: running `diva check` invokes `usr/use`; for the invocation to succeed, when the 'exit 0' assertions are uncommented and moved above the 'echo ®' line, a `.secrets` bash module must be present, containing, with suitable value substitutions,
```
#!/bin/bash
export P=Thy_Project
export SA=Robot_Thou
export BA=Thy_Billing
export SNs=cloudresourcemanager:serviceusage
```
