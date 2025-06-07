[GWind](readMe.md)



# Artisan
* Hacker pipe: ¦
* Hacker main root: app
* Hacker sour root: src
* Hacker test root: tst
* Hacker main runner: Main
* Hacker test runner: Test


## Presets
| Module               | Name       |
|----------------------|------------|
| Data.Aeson           | ToJSON     |
| Data.Aeson.Types     | Value      |
| Data.ByteString.Lazy | ByteString |
| Data.Text            | Text       |
| GHC.Generics         | Generic    |
| Network.Wreq         | Options    |


## Types
| Folder | Module                         | Name                      | Value          |
|--------|--------------------------------|---------------------------|----------------|
| src    | GWind.Common.Domain            | Snake                     | String         |
| src    | GWind.Common.Domain            | Kebab                     | String         |
| src    | GWind.Common.Domain            | Donut                     | String         |
| src    | GWind.Common.Domain            | URL                       | String         |
| src    | GWind.Common.Domain            | Code                      | Int            |
| src    | GWind.Common.Domain            | Body                      | ByteString     |
| src    | GWind.Common.Domain            | Param                     | (Text, [Text]) |
| src    | GWind.Project.Domain           | ProjectSnake              | Snake          |
| src    | GWind.Project.Domain           | ProjectId                 | Kebab          |
| src    | GWind.Project.Domain           | ProjectName               | Donut          |
| src    | GWind.Project.Domain           | LifecycleState            | Snake          |
| src    | GWind.ServiceAccount.Domain    | ServiceSnake              | Snake          |
| src    | GWind.ServiceAccount.Domain    | ServiceAccountId          | Kebab          |
| src    | GWind.ServiceAccount.Domain    | ServiceAccountDisplayName | Donut          |
| src    | GWind.ServiceAccount.Domain    | ServiceAccountEmail       | String         |
| src    | GWind.ServiceAccountKey.Domain | ServiceAccountKeyName     | Kebab          |
| src    | GWind.BillingProject.Domain    | BillingSnake              | Snake          |
| src    | GWind.BillingProject.Domain    | BillingAccountName        | String         |
| src    | GWind.BillingProject.Domain    | BillingAccountDisplayName | String         |
| src    | GWind.Service.Domain           | ServiceNicks              | String         |


## Data
| Folder | Module                           | Name               | Value                                                                                                                                                                                         |
|--------|----------------------------------|--------------------|-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| src    | GWind.Common.Request             | Empty              | Empty {} deriving (Eq, Show, Read, Generic)                                                                                                                                                   |
| src    | GWind.Common.Transport           | InComer            | InComer {code :: Code, body :: Body} deriving (Eq, Show, Read)                                                                                                                                |
| src    | GWind.Common.Transport           | OutGoer            | OutGoer {url :: URL, params :: [Param], value :: Value} deriving (Eq, Show, Read)                                                                                                             |
| src    | GWind.Project.Request            | ProjectQ           | ProjectQ {projectId :: String, name :: String} deriving (Eq, Show, Read, Generic)                                                                                                             |
| src    | GWind.Project.Response           | Project            | Project {projectNumber :: String, projectId :: String, lifecycleState :: String, name :: String, createTime :: String} deriving (Eq, Show, Read, Generic)                                     |
| src    | GWind.Project.Response           | Projects           | Projects {projects :: [Project]} deriving (Eq, Show, Read, Generic)                                                                                                                           |
| src    | GWind.ServiceAccount.Request     | ServiceAccountQ    | ServiceAccountQ {accountId :: String, serviceAccount :: DisplayName} deriving (Eq, Show, Read, Generic)                                                                                       |
| src    | GWind.ServiceAccount.Request     | DisplayName        | DisplayName {displayName :: String} deriving (Eq, Show, Read, Generic)                                                                                                                        |
| src    | GWind.ServiceAccount.Response    | ServiceAccount     | ServiceAccount {displayName :: String, email :: String, etag :: String, name :: String, oauth2ClientId :: String, projectId :: String, uniqueId :: String} deriving (Eq, Show, Read, Generic) |
| src    | GWind.ServiceAccount.Response    | ServiceAccounts    | ServiceAccounts {accounts :: [ServiceAccount]} deriving (Eq, Show, Read, Generic)                                                                                                             |
| src    | GWind.ServiceAccountKey.Request  | ServiceAccountKeyQ | ServiceAccountKeyQ {keyAlgorithm :: String, privateKeyType :: String} deriving (Eq, Show, Read, Generic)                                                                                      |
| src    | GWind.ServiceAccountKey.Response | ServiceAccountKey  | ServiceAccountKey {keyAlgorithm :: String, keyOrigin :: String, keyType :: String, name :: String, validAfterTime :: String, validBeforeTime :: String} deriving (Eq, Show, Read, Generic)    |
| src    | GWind.ServiceAccountKey.Response | ServiceAccountKeys | ServiceAccountKeys {keys :: [ServiceAccountKey]} deriving (Eq, Show, Read, Generic)                                                                                                           |
| src    | GWind.IAMPolicy.Request          | IAMPolicyQ         | IAMPolicyQ {policy :: IAMPolicy} deriving (Eq, Show, Read, Generic)                                                                                                                           |
| src    | GWind.IAMPolicy.Response         | Binding            | Binding {members :: [String], role :: String} deriving (Eq, Show, Read, Generic)                                                                                                              |
| src    | GWind.IAMPolicy.Response         | IAMPolicy          | IAMPolicy {bindings :: [Binding], etag :: String, version :: Int} deriving (Eq, Show, Read, Generic)                                                                                          |
| src    | GWind.BillingAccount.Response    | BillingAccount     | BillingAccount {currencyCode :: String, displayName :: String, masterBillingAccount :: String, name :: String, open :: Bool, parent :: String} deriving (Eq, Show, Read, Generic)             |
| src    | GWind.BillingAccount.Response    | BillingAccounts    | BillingAccounts {billingAccounts :: [BillingAccount]} deriving (Eq, Show, Read, Generic)                                                                                                      |
| src    | GWind.BillingProject.Request     | BillingProjectQ    | BillingProjectQ {billingAccountName :: String} deriving (Eq, Show, Read, Generic)                                                                                                             |
| src    | GWind.BillingProject.Response    | BillingProject     | BillingProject  {billingAccountName :: String, billingEnabled :: Bool, name :: String, projectId :: String} deriving (Eq, Show, Read, Generic)                                                |
| src    | GWind.BillingProject.Response    | BillingProjects    | BillingProjects {projectBillingInfo :: [BillingProject]} deriving (Eq, Show, Read, Generic)                                                                                                   |


## Constants
| Folder | Module               | Name        | Type      |
|--------|----------------------|-------------|-----------|
| app    | Main                 | main        | IO ()     |
| app    | Strings              | how         | String    |
| app    | Strings              | version     | String    |
| app    | Strings              | completion  | String    |
| src    | GWind.Common.Request | emptyValue  | Empty     |
| src    | GWind.Common.Request | emptyObject | Value     |
| src    | GWind.Common.Auth    | tokenM      | IO String |


## Functions
| Folder | Module                              | Name                        | Type                                                                     |
|--------|-------------------------------------|-----------------------------|--------------------------------------------------------------------------|
| src    | GWind.Common.Presenter              | presentingM                 | ToJSON preJSON => preJSON -> IO ()                                       |
| src    | GWind.Common.Preserver              | preservingM                 | FilePath -> FilePath -> ByteString -> IO Code                            |
| src    | GWind.Common.Preserver              | postervingM                 | FilePath -> FilePath -> IO ()                                            |
| src    | GWind.Common.Mutator                | kebab                       | Snake -> Kebab                                                           |
| src    | GWind.Common.Mutator                | donut                       | Snake -> Donut                                                           |
| src    | GWind.Common.Transport              | inComer                     | (Int, ByteString) -> InComer                                             |
| src    | GWind.Common.Transport              | outGoer                     | ToJSON preJSON => URL -> [Param] -> preJSON -> OutGoer                   |
| src    | GWind.Common.Opter                  | optionsM                    | [(Text, [Text])] -> String -> IO Options                                 |
| src    | GWind.Common.Caller                 | rawGettingM                 | String -> Options -> IO (Int, ByteString)                                |
| src    | GWind.Common.Caller                 | rawDeletionM                | String -> Options -> IO (Int, ByteString)                                |
| src    | GWind.Common.Caller                 | rawPostingM                 | Value -> String -> Options -> IO (Int, ByteString)                       |
| src    | GWind.Common.Caller                 | rawPuttingM                 | Value -> String -> Options -> IO (Int, ByteString)                       |
| src    | GWind.Common.HTTP                   | gettingM                    | OutGoer -> IO InComer                                                    |
| src    | GWind.Common.HTTP                   | deletingM                   | OutGoer -> IO InComer                                                    |
| src    | GWind.Common.HTTP                   | postingM                    | OutGoer -> IO InComer                                                    |
| src    | GWind.Common.HTTP                   | puttingM                    | OutGoer -> IO InComer                                                    |
|        |                                     |                             |                                                                          |
| src    | GWind.Project.Control               | reviseProjectsM             | IO ()                                                                    |
| src    | GWind.Project.Control               | createProjectM              | ProjectSnake -> IO ()                                                    |
| src    | GWind.Project.Control               | deleteProjectM              | ProjectSnake -> IO ()                                                    |
| src    | GWind.Project.Mutator               | projectId                   | ProjectSnake -> ProjectId                                                |
| src    | GWind.Project.Mutator               | projectName                 | ProjectSnake -> ProjectName                                              |
| src    | GWind.Project.Accessor              | lifecycleStateMM            | ProjectId -> [Project] -> IO (Maybe LifecycleState)                      |
| src    | GWind.Project.Service               | revisionProjectsM           | IO [Project]                                                             |
| src    | GWind.Project.Service               | creationCodeM               | ProjectId -> ProjectName -> IO Code                                      |
| src    | GWind.Project.Service               | deletionCodeM               | ProjectId -> IO Code                                                     |
| src    | GWind.Project.Service               | undeletionCodeM             | ProjectId -> IO Code                                                     |
| src    | GWind.Project.Constructor           | revisionOutGoerM            | IO OutGoer                                                               |
| src    | GWind.Project.Constructor           | creationOutGoerM            | ProjectId -> ProjectName -> IO OutGoer                                   |
| src    | GWind.Project.Constructor           | deletionOutGoerM            | ProjectId -> IO OutGoer                                                  |
| src    | GWind.Project.Constructor           | undeletionOutGoerM          | ProjectId -> IO OutGoer                                                  |
| src    | GWind.Project.Request               | projectQ                    | ProjectId -> ProjectName -> ProjectQ                                     |
| src    | GWind.Project.Adapter               | revimentProjectsM           | InComer -> IO [Project]                                                  |
| src    | GWind.Project.Adapter               | creamentCodeM               | InComer -> IO Code                                                       |
| src    | GWind.Project.Adapter               | delementCodeM               | InComer -> IO Code                                                       |
| src    | GWind.Project.Adapter               | undelementCodeM             | InComer -> IO Code                                                       |
|        |                                     |                             |                                                                          |
| src    | GWind.ServiceAccount.Control        | reviseServiceAccountsM      | ProjectSnake -> IO ()                                                    |
| src    | GWind.ServiceAccount.Control        | createServiceAccountM       | ProjectSnake -> ServiceSnake -> IO ()                                    |
| src    | GWind.ServiceAccount.Control        | deleteServiceAccountM       | ProjectSnake -> ServiceSnake -> IO ()                                    |
| src    | GWind.ServiceAccount.Mutator        | serviceAccountId            | ServiceSnake -> ServiceAccountId                                         |
| src    | GWind.ServiceAccount.Mutator        | serviceAccountDisplayName   | ServiceSnake -> ServiceAccountDisplayName                                |
| src    | GWind.ServiceAccount.Mutator        | serviceAccountEmail         | ProjectSnake -> ServiceSnake -> ServiceAccountEmail                      |
| src    | GWind.ServiceAccount.Service        | revisionServiceAccountsM    | ProjectId -> IO [ServiceAccount]                                         |
| src    | GWind.ServiceAccount.Service        | creationCodeM               | ProjectId -> ServiceAccountId -> ServiceAccountEmail -> IO Code          |
| src    | GWind.ServiceAccount.Service        | deletionCodeM               | ProjectId -> ServiceAccountEmail -> IO Code                              |
| src    | GWind.ServiceAccount.Constructor    | revisionOutGoerM            | ProjectId -> IO OutGoer                                                  |
| src    | GWind.ServiceAccount.Constructor    | creationOutGoerM            | ProjectId -> ServiceAccountId -> ServiceAccountDisplayName -> IO OutGoer |
| src    | GWind.ServiceAccount.Constructor    | deletionOutGoerM            | ProjectId -> ServiceAccountEmail -> IO OutGoer                           |
| src    | GWind.ServiceAccount.Request        | serviceAccountQ             | ServiceAccountId -> ServiceAccountDisplayName -> ServiceAccountQ         |
| src    | GWind.ServiceAccount.Adapter        | revimentServiceAccountsM    | InComer -> IO [ServiceAccount]                                           |
| src    | GWind.ServiceAccount.Adapter        | creamentCodeM               | InComer -> IO Code                                                       |
| src    | GWind.ServiceAccount.Adapter        | delementCodeM               | InComer -> IO Code                                                       |
|        |                                     |                             |                                                                          |
| src    | GWind.ServiceAccountKey.Control     | reviseServiceAccountKeysM   | ProjectSnake -> ServiceSnake -> IO ()                                    |
| src    | GWind.ServiceAccountKey.Control     | createServiceAccountKeyM    | ProjectSnake -> ServiceSnake -> IO ()                                    |
| src    | GWind.ServiceAccountKey.Control     | deleteServiceAccountKeyM    | ProjectSnake -> ServiceSnake -> IO ()                                    |
| src    | GWind.ServiceAccountKey.Accessor    | serviceAccountKeyNamesM     | [ServiceAccountKey] -> IO [ServiceAccountKeyName]                        |
| src    | GWind.ServiceAccountKey.Service     | revisionServiceAccountKeysM | ProjectId -> ServiceAccountEmail -> IO [ServiceAccountKey]               |
| src    | GWind.ServiceAccountKey.Service     | creationBodyM               | ProjectId -> ServiceAccountEmail -> IO Body                              |
| src    | GWind.ServiceAccountKey.Service     | deletionCodeM               | ServiceAccountKeyName -> IO Code                                         |
| src    | GWind.ServiceAccountKey.Constructor | revisionOutGoerM            | ProjectId -> ServiceAccountEmail -> IO OutGoer                           |
| src    | GWind.ServiceAccountKey.Constructor | creationOutGoerM            | ProjectId -> ServiceAccountEmail -> IO OutGoer                           |
| src    | GWind.ServiceAccountKey.Constructor | deletionOutGoerM            | ServiceAccountKeyName -> IO OutGoer                                      |
| src    | GWind.ServiceAccountKey.Request     | serviceAccountKeyQ          | ServiceAccountKeyQ                                                       |
| src    | GWind.ServiceAccountKey.Adapter     | revimentServiceAccountKeysM | InComer -> IO [ServiceAccountKey]                                        |
| src    | GWind.ServiceAccountKey.Adapter     | creamentBodyM               | InComer -> IO Body                                                       |
| src    | GWind.ServiceAccountKey.Adapter     | delementCodeM               | InComer -> IO Code                                                       |
|        |                                     |                             |                                                                          |
| src    | GWind.IAMPolicy.Control             | reviseIAMPolicyM            | ProjectSnake -> IO ()                                                    |
| src    | GWind.IAMPolicy.Control             | createIAMPolicyBindingM     | ProjectSnake -> ServiceSnake -> IO ()                                    |
| src    | GWind.IAMPolicy.Control             | deleteIAMPolicyBindingM     | ProjectSnake -> ServiceSnake -> IO ()                                    |
| src    | GWind.IAMPolicy.Control             | deleteIAMPolicyM            | ProjectSnake -> IO ()                                                    |
| src    | GWind.IAMPolicy.Service             | revisionIAMPolicyM          | ProjectId -> IO IAMPolicy                                                |
| src    | GWind.IAMPolicy.Service             | creationCodeM               | ProjectId -> ServiceAccountEmail -> IAMPolicy -> IO Code                 |
| src    | GWind.IAMPolicy.Service             | bindingDeletionCodeM        | ProjectId -> ServiceAccountEmail -> IAMPolicy -> IO Code                 |
| src    | GWind.IAMPolicy.Service             | policyDeletionCodeM         | ProjectId -> IAMPolicy -> IO Code                                        |
| src    | GWind.IAMPolicy.Constructor         | revisionOutGoerM            | ProjectId -> IO OutGoer                                                  |
| src    | GWind.IAMPolicy.Constructor         | creationOutGoerM            | ProjectId -> ServiceAccountEmail -> IAMPolicy -> IO OutGoer              |
| src    | GWind.IAMPolicy.Constructor         | bindingDeletionOutGoerM     | ProjectId -> ServiceAccountEmail -> IAMPolicy -> IO OutGoer              |
| src    | GWind.IAMPolicy.Constructor         | policyDeletionOutGoerM      | ProjectId -> IAMPolicy -> IO OutGoer                                     |
| src    | GWind.IAMPolicy.Request             | bindingIntroductionQ        | ServiceAccountEmail -> IAMPolicy -> IAMPolicyQ                           |
| src    | GWind.IAMPolicy.Request             | bindingEliminationQ         | ServiceAccountEmail -> IAMPolicy -> IAMPolicyQ                           |
| src    | GWind.IAMPolicy.Request             | policyEliminationQ          | IAMPolicy -> IAMPolicyQ                                                  |
| src    | GWind.IAMPolicy.Adapter             | revimentIAMPolicyM          | InComer -> IO IAMPolicy                                                  |
| src    | GWind.IAMPolicy.Adapter             | creamentCodeM               | InComer -> IO Code                                                       |
| src    | GWind.IAMPolicy.Adapter             | bindingDelementCodeM        | InComer -> IO Code                                                       |
| src    | GWind.IAMPolicy.Adapter             | policyDelementCodeM         | InComer -> IO Code                                                       |
|        |                                     |                             |                                                                          |
| src    | GWind.BillingAccount.Control        | reviseBillingAccountsM      | IO ()                                                                    |
| src    | GWind.BillingAccount.Service        | revisionBillingAccountsM    | IO [BillingAccount]                                                      |
| src    | GWind.BillingAccount.Constructor    | revisionOutGoerM            | IO OutGoer                                                               |
| src    | GWind.BillingAccount.Adapter        | revimentBillingAccountsM    | InComer -> IO [BillingAccount]                                           |
|        |                                     |                             |                                                                          |
| src    | GWind.BillingProject.Control        | reviseBillingProjectsM      | BillingSnake -> IO ()                                                    |
| src    | GWind.BillingProject.Control        | createBillingProjectM       | ProjectSnake -> BillingSnake -> IO ()                                    |
| src    | GWind.BillingProject.Control        | deleteBillingProjectM       | ProjectSnake -> IO ()                                                    |
| src    | GWind.BillingProject.Mutator        | billingAccountDisplayName   | BillingSnake -> BillingAccountDisplayName                                |
| src    | GWind.BillingProject.Accessor       | billingAccountNameM         | BillingAccountDisplayName -> [BillingAccount] -> IO BillingAccountName   |
| src    | GWind.BillingProject.Service        | revisionBillingProjectsM    | BillingAccountName -> IO [BillingProject]                                |
| src    | GWind.BillingProject.Service        | creationCodeM               | ProjectId -> BillingAccountName -> IO Code                               |
| src    | GWind.BillingProject.Service        | deletionCodeM               | ProjectId -> IO Code                                                     |
| src    | GWind.BillingProject.Constructor    | revisionOutGoerM            | BillingAccountName -> IO OutGoer                                         |
| src    | GWind.BillingProject.Constructor    | creationOutGoerM            | ProjectId -> BillingAccountName -> IO OutGoer                            |
| src    | GWind.BillingProject.Constructor    | deletionOutGoerM            | ProjectId -> IO OutGoer                                                  |
| src    | GWind.BillingProject.Request        | billingProjectQ             | BillingAccountName -> BillingProjectQ                                    |
| src    | GWind.BillingProject.Adapter        | revimentBillingProjectsM    | InComer -> IO [BillingProject]                                           |
| src    | GWind.BillingProject.Adapter        | creamentCodeM               | InComer -> IO Code                                                       |
| src    | GWind.BillingProject.Adapter        | delementCodeM               | InComer -> IO Code                                                       |
|        |                                     |                             |                                                                          |
| src    | GWind.Service.Control               | reviseServicesM             | ProjectSnake -> IO ()                                                    |
| src    | GWind.Service.Control               | createServicesM             | ProjectSnake -> ServiceNicks -> IO ()                                    |
| src    | GWind.Service.Control               | deleteServicesM             | ProjectSnake -> ServiceNicks -> IO ()                                    |
| src    | GWind.StorageBucket.Control         | reviseStorageBucketsM       | ProjectSnake -> IO ()                                                    |
| src    | GWind.StorageBucket.Control         | createStorageBucketM        | ProjectSnake -> IO ()                                                    |
| src    | GWind.StorageBucket.Control         | deleteStorageBucketM        | ProjectSnake -> IO ()                                                    |
