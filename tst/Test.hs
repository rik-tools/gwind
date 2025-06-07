-- ⚠
-- Test
import Test.HUnit (Counts, Test (TestList), runTestTT)
import qualified GWind.Common.PresenterIT as GWind_Common_PresenterIT (testList)
import qualified GWind.Common.PreserverIT as GWind_Common_PreserverIT (testList)
import qualified GWind.Common.OpterIT as GWind_Common_OpterIT (testList)
import qualified GWind.Common.CallerIT as GWind_Common_CallerIT (testList)
import qualified GWind.Common.HTTPIT as GWind_Common_HTTPIT (testList)
import qualified GWind.Project.ControlIT as GWind_Project_ControlIT (testList)
import qualified GWind.Project.AccessorIT as GWind_Project_AccessorIT (testList)
import qualified GWind.Project.ServiceIT as GWind_Project_ServiceIT (testList)
import qualified GWind.Project.ConstructorIT as GWind_Project_ConstructorIT (testList)
import qualified GWind.Project.AdapterIT as GWind_Project_AdapterIT (testList)
import qualified GWind.ServiceAccount.ControlIT as GWind_ServiceAccount_ControlIT (testList)
import qualified GWind.ServiceAccount.ServiceIT as GWind_ServiceAccount_ServiceIT (testList)
import qualified GWind.ServiceAccount.ConstructorIT as GWind_ServiceAccount_ConstructorIT (testList)
import qualified GWind.ServiceAccount.AdapterIT as GWind_ServiceAccount_AdapterIT (testList)
import qualified GWind.ServiceAccountKey.ControlIT as GWind_ServiceAccountKey_ControlIT (testList)
import qualified GWind.ServiceAccountKey.AccessorIT as GWind_ServiceAccountKey_AccessorIT (testList)
import qualified GWind.ServiceAccountKey.ServiceIT as GWind_ServiceAccountKey_ServiceIT (testList)
import qualified GWind.ServiceAccountKey.ConstructorIT as GWind_ServiceAccountKey_ConstructorIT (testList)
import qualified GWind.ServiceAccountKey.AdapterIT as GWind_ServiceAccountKey_AdapterIT (testList)
import qualified GWind.IAMPolicy.ControlIT as GWind_IAMPolicy_ControlIT (testList)
import qualified GWind.IAMPolicy.ServiceIT as GWind_IAMPolicy_ServiceIT (testList)
import qualified GWind.IAMPolicy.ConstructorIT as GWind_IAMPolicy_ConstructorIT (testList)
import qualified GWind.IAMPolicy.AdapterIT as GWind_IAMPolicy_AdapterIT (testList)
import qualified GWind.BillingAccount.ControlIT as GWind_BillingAccount_ControlIT (testList)
import qualified GWind.BillingAccount.ServiceIT as GWind_BillingAccount_ServiceIT (testList)
import qualified GWind.BillingAccount.ConstructorIT as GWind_BillingAccount_ConstructorIT (testList)
import qualified GWind.BillingAccount.AdapterIT as GWind_BillingAccount_AdapterIT (testList)
import qualified GWind.BillingProject.ControlIT as GWind_BillingProject_ControlIT (testList)
import qualified GWind.Service.ControlIT as GWind_Service_ControlIT (testList)
import qualified GWind.StorageBucket.ControlIT as GWind_StorageBucket_ControlIT (testList)
import qualified GWind.Common.MutatorUT as GWind_Common_MutatorUT (testList)
import qualified GWind.Common.TransportUT as GWind_Common_TransportUT (testList)
import qualified GWind.Project.MutatorUT as GWind_Project_MutatorUT (testList)
import qualified GWind.Project.RequestUT as GWind_Project_RequestUT (testList)
import qualified GWind.ServiceAccount.MutatorUT as GWind_ServiceAccount_MutatorUT (testList)
import qualified GWind.ServiceAccount.RequestUT as GWind_ServiceAccount_RequestUT (testList)
import qualified GWind.ServiceAccountKey.RequestUT as GWind_ServiceAccountKey_RequestUT (testList)
import qualified GWind.IAMPolicy.RequestUT as GWind_IAMPolicy_RequestUT (testList)

--
main :: IO Counts
main = runTestTT testList

--
testList :: Test
testList = TestList [
    GWind_Common_MutatorUT.testList,
    GWind_Common_TransportUT.testList,
    GWind_Project_MutatorUT.testList,
    GWind_Project_RequestUT.testList,
    GWind_ServiceAccount_MutatorUT.testList,
    GWind_ServiceAccount_RequestUT.testList,
    GWind_ServiceAccountKey_RequestUT.testList,
    GWind_IAMPolicy_RequestUT.testList,
    GWind_Common_PresenterIT.testList,
    GWind_Common_PreserverIT.testList,
    GWind_Common_OpterIT.testList,
    GWind_Common_CallerIT.testList,
    GWind_Common_HTTPIT.testList,
    GWind_Project_ControlIT.testList,
    GWind_Project_AccessorIT.testList,
    GWind_Project_ServiceIT.testList,
    GWind_Project_ConstructorIT.testList,
    GWind_Project_AdapterIT.testList,
    GWind_ServiceAccount_ControlIT.testList,
    GWind_ServiceAccount_ServiceIT.testList,
    GWind_ServiceAccount_ConstructorIT.testList,
    GWind_ServiceAccount_AdapterIT.testList,
    GWind_ServiceAccountKey_ControlIT.testList,
    GWind_ServiceAccountKey_AccessorIT.testList,
    GWind_ServiceAccountKey_ServiceIT.testList,
    GWind_ServiceAccountKey_ConstructorIT.testList,
    GWind_ServiceAccountKey_AdapterIT.testList,
    GWind_IAMPolicy_ControlIT.testList,
    GWind_IAMPolicy_ServiceIT.testList,
    GWind_IAMPolicy_ConstructorIT.testList,
    GWind_IAMPolicy_AdapterIT.testList,
    GWind_BillingAccount_ControlIT.testList,
    GWind_BillingAccount_ServiceIT.testList,
    GWind_BillingAccount_ConstructorIT.testList,
    GWind_BillingAccount_AdapterIT.testList,
    GWind_BillingProject_ControlIT.testList,
    GWind_Service_ControlIT.testList,
    GWind_StorageBucket_ControlIT.testList]

--
