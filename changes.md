[GWind](readMe.md)



# Changes


## Doing

### 0.3.2 Gwind: iam policy binding creation supported


## To Do
* 0.3.3 Gwind: iam policy binding deletion supported
* 0.3.4 Gwind: iam policy deletion supported
* 0.4.0 Gwind: iam policy supported
* 0.4.1 Gwind: billing account revision supported
* 0.4.2 Gwind: billing project revision supported
* 0.4.3 Gwind: billing project creation supported
* 0.4.4 Gwind: billing project deletion supported
* 0.5.0 Gwind: billing supported
* 0.5.1 Gwind: service revision supported
* 0.5.2 Gwind: service creation supported
* 0.5.3 Gwind: service deletion supported
* 0.6.0 Gwind: services supported
* 0.6.1 Gwind: bucket revision supported
* 0.6.2 Gwind: bucket creation supported
* 0.6.3 Gwind: bucket deletion supported
* 0.7.0 GWind: buckets supported
* 1.0.0 GWind: supported


## Done

### 0.3.1 Gwind: iam policy revision supported
* src/GWind/IAMPolicy/Adapter.hs
* src/GWind/IAMPolicy/Constructor.hs
* src/GWind/IAMPolicy/Request.hs
* src/GWind/IAMPolicy/Response.hs
* src/GWind/IAMPolicy/Service.hs
* tst/GWind/IAMPolicy/AdapterIT.hs
* tst/GWind/IAMPolicy/ConstructorIT.hs
* tst/GWind/IAMPolicy/RequestUT.hs
* tst/GWind/IAMPolicy/ServiceIT.hs

### 0.3.0 Gwind: service account keys supported

### 0.2.3 Gwind: service account key deletion supported

### 0.2.2 Gwind: service account key creation supported

### 0.2.1 Gwind: service account key revision supported
* src/GWind/ServiceAccountKey/Accessor.hs
* src/GWind/ServiceAccountKey/Adapter.hs
* src/GWind/ServiceAccountKey/Constructor.hs
* src/GWind/ServiceAccountKey/Domain.hs
* src/GWind/ServiceAccountKey/Request.hs
* src/GWind/ServiceAccountKey/Response.hs
* src/GWind/ServiceAccountKey/Service.hs
* tst/GWind/ServiceAccountKey/AccessorIT.hs
* tst/GWind/ServiceAccountKey/AdapterIT.hs
* tst/GWind/ServiceAccountKey/ConstructorIT.hs
* tst/GWind/ServiceAccountKey/RequestUT.hs
* tst/GWind/ServiceAccountKey/ServiceIT.hs

### 0.2.0 Gwind: service accounts supported

### 0.1.3 GWind: service account deletion supported

### 0.1.2 GWind: service account creation supported

### 0.1.1 GWind: service account revision supported
* src/GWind/ServiceAccount/Request.hs
* src/GWind/ServiceAccount/Response.hs
* src/GWind/ServiceAccount/Service.hs
* src/GWind/ServiceAccount/Constructor.hs
* src/GWind/ServiceAccount/Adapter.hs
* src/GWind/ServiceAccount/Mutator.hs
* tst/GWind/ServiceAccount/RequestUT.hs
* tst/GWind/ServiceAccount/ServiceIT.hs
* tst/GWind/ServiceAccount/ConstructorIT.hs
* tst/GWind/ServiceAccount/AdapterIT.hs
* tst/GWind/ServiceAccount/MutatorUT.hs

### 0.1.0 GWind: projects supported

### 0.0.4 GWind: project deletion supported

### 0.0.3 GWind: project creation supported

### 0.0.2 GWind: project revision supported
* src/GWind/Common/Auth.hs
* src/GWind/Common/Caller.hs
* src/GWind/Common/HTTP.hs
* src/GWind/Common/Mutator.hs
* src/GWind/Common/Opter.hs
* src/GWind/Common/Presenter.hs
* src/GWind/Common/Preserver.hs
* src/GWind/Common/Request.hs
* src/GWind/Common/Transport.hs
* src/GWind/Project/Mutator.hs
* src/GWind/Project/Accessor.hs
* src/GWind/Project/Service.hs
* src/GWind/Project/Constructor.hs
* src/GWind/Project/Request.hs
* src/GWind/Project/Adapter.hs
* src/GWind/Project/Response.hs
* tst/GWind/Common/AuthIT.hs
* tst/GWind/Common/CallerIT.hs
* tst/GWind/Common/HTTPIT.hs
* tst/GWind/Common/MutatorUT.hs
* tst/GWind/Common/OpterIT.hs
* tst/GWind/Common/PresenterIT.hs
* tst/GWind/Common/PreserverIT.hs
* tst/GWind/Common/RequestUT.hs
* tst/GWind/Common/TransportUT.hs
* tst/GWind/Project/AccessorIT.hs
* tst/GWind/Project/MutatorUT.hs
* tst/GWind/Project/ServiceIT.hs
* tst/GWind/Project/ConstructorIT.hs
* tst/GWind/Project/RequestUT.hs
* tst/GWind/Project/AdapterIT.hs

### 0.0.1 GWind: program introduced
* src/GWind/Common/Domain.hs
* src/GWind/Project/Domain.hs
* src/GWind/ServiceAccount/Domain.hs
* src/GWind/BillingProject/Domain.hs
* src/GWind/Service/Domain.hs
* src/GWind/Project/Control.hs
* src/GWind/ServiceAccount/Control.hs
* src/GWind/ServiceAccountKey/Control.hs
* src/GWind/IAMPolicy/Control.hs
* src/GWind/BillingAccount/Control.hs
* src/GWind/BillingProject/Control.hs
* src/GWind/Service/Control.hs
* src/GWind/StorageBucket/Control.hs
* tst/GWind/Project/ControlIT.hs
* tst/GWind/ServiceAccount/ControlIT.hs
* tst/GWind/ServiceAccountKey/ControlIT.hs
* tst/GWind/IAMPolicy/ControlIT.hs
* tst/GWind/BillingAccount/ControlIT.hs
* tst/GWind/BillingProject/ControlIT.hs
* tst/GWind/Service/ControlIT.hs
* tst/GWind/StorageBucket/ControlIT.hs

### 0.0.0 GWind: initialised
* readMe.md
* artisan.md
* builder.md
* changes.md
* app/Main.hs
* app/Strings.hs
* etc/stack.yaml
* etc/stack.yaml.lock
* etc/package.yaml
* etc/completion
* etc/license
* tst/Test.hs
* usr/usage
* usr/use
