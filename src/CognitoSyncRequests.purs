
module AWS.CognitoSync.Requests where

import Prelude
import Control.Monad.Aff (Aff)
import Control.Monad.Eff.Exception (EXCEPTION)

import AWS.Request (MethodName(..), request) as AWS
import AWS.Request.Types as Types

import AWS.CognitoSync as CognitoSync
import AWS.CognitoSync.Types as CognitoSyncTypes


-- | <p>Initiates a bulk publish of all existing datasets for an Identity Pool to the configured stream. Customers are limited to one successful bulk publish per 24 hours. Bulk publish is an asynchronous request, customers can see the status of the request via the GetBulkPublishDetails operation.</p> <p>This API can only be called with developer credentials. You cannot call this API with the temporary user credentials provided by Cognito Identity.</p>
bulkPublish :: forall eff. CognitoSync.Service -> CognitoSyncTypes.BulkPublishRequest -> Aff (exception :: EXCEPTION | eff) CognitoSyncTypes.BulkPublishResponse
bulkPublish (CognitoSync.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "bulkPublish"


-- | <p>Deletes the specific dataset. The dataset will be deleted permanently, and the action can't be undone. Datasets that this dataset was merged with will no longer report the merge. Any subsequent operation on this dataset will result in a ResourceNotFoundException.</p> <p>This API can be called with temporary user credentials provided by Cognito Identity or with developer credentials.</p>
deleteDataset :: forall eff. CognitoSync.Service -> CognitoSyncTypes.DeleteDatasetRequest -> Aff (exception :: EXCEPTION | eff) CognitoSyncTypes.DeleteDatasetResponse
deleteDataset (CognitoSync.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "deleteDataset"


-- | <p>Gets meta data about a dataset by identity and dataset name. With Amazon Cognito Sync, each identity has access only to its own data. Thus, the credentials used to make this API call need to have access to the identity data.</p> <p>This API can be called with temporary user credentials provided by Cognito Identity or with developer credentials. You should use Cognito Identity credentials to make this API call.</p>
describeDataset :: forall eff. CognitoSync.Service -> CognitoSyncTypes.DescribeDatasetRequest -> Aff (exception :: EXCEPTION | eff) CognitoSyncTypes.DescribeDatasetResponse
describeDataset (CognitoSync.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "describeDataset"


-- | <p>Gets usage details (for example, data storage) about a particular identity pool.</p> <p>This API can only be called with developer credentials. You cannot call this API with the temporary user credentials provided by Cognito Identity.</p>
describeIdentityPoolUsage :: forall eff. CognitoSync.Service -> CognitoSyncTypes.DescribeIdentityPoolUsageRequest -> Aff (exception :: EXCEPTION | eff) CognitoSyncTypes.DescribeIdentityPoolUsageResponse
describeIdentityPoolUsage (CognitoSync.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "describeIdentityPoolUsage"


-- | <p>Gets usage information for an identity, including number of datasets and data usage.</p> <p>This API can be called with temporary user credentials provided by Cognito Identity or with developer credentials.</p>
describeIdentityUsage :: forall eff. CognitoSync.Service -> CognitoSyncTypes.DescribeIdentityUsageRequest -> Aff (exception :: EXCEPTION | eff) CognitoSyncTypes.DescribeIdentityUsageResponse
describeIdentityUsage (CognitoSync.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "describeIdentityUsage"


-- | <p>Get the status of the last BulkPublish operation for an identity pool.</p> <p>This API can only be called with developer credentials. You cannot call this API with the temporary user credentials provided by Cognito Identity.</p>
getBulkPublishDetails :: forall eff. CognitoSync.Service -> CognitoSyncTypes.GetBulkPublishDetailsRequest -> Aff (exception :: EXCEPTION | eff) CognitoSyncTypes.GetBulkPublishDetailsResponse
getBulkPublishDetails (CognitoSync.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "getBulkPublishDetails"


-- | <p>Gets the events and the corresponding Lambda functions associated with an identity pool.</p> <p>This API can only be called with developer credentials. You cannot call this API with the temporary user credentials provided by Cognito Identity.</p>
getCognitoEvents :: forall eff. CognitoSync.Service -> CognitoSyncTypes.GetCognitoEventsRequest -> Aff (exception :: EXCEPTION | eff) CognitoSyncTypes.GetCognitoEventsResponse
getCognitoEvents (CognitoSync.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "getCognitoEvents"


-- | <p>Gets the configuration settings of an identity pool.</p> <p>This API can only be called with developer credentials. You cannot call this API with the temporary user credentials provided by Cognito Identity.</p>
getIdentityPoolConfiguration :: forall eff. CognitoSync.Service -> CognitoSyncTypes.GetIdentityPoolConfigurationRequest -> Aff (exception :: EXCEPTION | eff) CognitoSyncTypes.GetIdentityPoolConfigurationResponse
getIdentityPoolConfiguration (CognitoSync.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "getIdentityPoolConfiguration"


-- | <p>Lists datasets for an identity. With Amazon Cognito Sync, each identity has access only to its own data. Thus, the credentials used to make this API call need to have access to the identity data.</p> <p>ListDatasets can be called with temporary user credentials provided by Cognito Identity or with developer credentials. You should use the Cognito Identity credentials to make this API call.</p>
listDatasets :: forall eff. CognitoSync.Service -> CognitoSyncTypes.ListDatasetsRequest -> Aff (exception :: EXCEPTION | eff) CognitoSyncTypes.ListDatasetsResponse
listDatasets (CognitoSync.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "listDatasets"


-- | <p>Gets a list of identity pools registered with Cognito.</p> <p>ListIdentityPoolUsage can only be called with developer credentials. You cannot make this API call with the temporary user credentials provided by Cognito Identity.</p>
listIdentityPoolUsage :: forall eff. CognitoSync.Service -> CognitoSyncTypes.ListIdentityPoolUsageRequest -> Aff (exception :: EXCEPTION | eff) CognitoSyncTypes.ListIdentityPoolUsageResponse
listIdentityPoolUsage (CognitoSync.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "listIdentityPoolUsage"


-- | <p>Gets paginated records, optionally changed after a particular sync count for a dataset and identity. With Amazon Cognito Sync, each identity has access only to its own data. Thus, the credentials used to make this API call need to have access to the identity data.</p> <p>ListRecords can be called with temporary user credentials provided by Cognito Identity or with developer credentials. You should use Cognito Identity credentials to make this API call.</p>
listRecords :: forall eff. CognitoSync.Service -> CognitoSyncTypes.ListRecordsRequest -> Aff (exception :: EXCEPTION | eff) CognitoSyncTypes.ListRecordsResponse
listRecords (CognitoSync.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "listRecords"


-- | <p>Registers a device to receive push sync notifications.</p> <p>This API can only be called with temporary credentials provided by Cognito Identity. You cannot call this API with developer credentials.</p>
registerDevice :: forall eff. CognitoSync.Service -> CognitoSyncTypes.RegisterDeviceRequest -> Aff (exception :: EXCEPTION | eff) CognitoSyncTypes.RegisterDeviceResponse
registerDevice (CognitoSync.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "registerDevice"


-- | <p>Sets the AWS Lambda function for a given event type for an identity pool. This request only updates the key/value pair specified. Other key/values pairs are not updated. To remove a key value pair, pass a empty value for the particular key.</p> <p>This API can only be called with developer credentials. You cannot call this API with the temporary user credentials provided by Cognito Identity.</p>
setCognitoEvents :: forall eff. CognitoSync.Service -> CognitoSyncTypes.SetCognitoEventsRequest -> Aff (exception :: EXCEPTION | eff) Unit
setCognitoEvents (CognitoSync.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "setCognitoEvents"


-- | <p>Sets the necessary configuration for push sync.</p> <p>This API can only be called with developer credentials. You cannot call this API with the temporary user credentials provided by Cognito Identity.</p>
setIdentityPoolConfiguration :: forall eff. CognitoSync.Service -> CognitoSyncTypes.SetIdentityPoolConfigurationRequest -> Aff (exception :: EXCEPTION | eff) CognitoSyncTypes.SetIdentityPoolConfigurationResponse
setIdentityPoolConfiguration (CognitoSync.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "setIdentityPoolConfiguration"


-- | <p>Subscribes to receive notifications when a dataset is modified by another device.</p> <p>This API can only be called with temporary credentials provided by Cognito Identity. You cannot call this API with developer credentials.</p>
subscribeToDataset :: forall eff. CognitoSync.Service -> CognitoSyncTypes.SubscribeToDatasetRequest -> Aff (exception :: EXCEPTION | eff) CognitoSyncTypes.SubscribeToDatasetResponse
subscribeToDataset (CognitoSync.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "subscribeToDataset"


-- | <p>Unsubscribes from receiving notifications when a dataset is modified by another device.</p> <p>This API can only be called with temporary credentials provided by Cognito Identity. You cannot call this API with developer credentials.</p>
unsubscribeFromDataset :: forall eff. CognitoSync.Service -> CognitoSyncTypes.UnsubscribeFromDatasetRequest -> Aff (exception :: EXCEPTION | eff) CognitoSyncTypes.UnsubscribeFromDatasetResponse
unsubscribeFromDataset (CognitoSync.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "unsubscribeFromDataset"


-- | <p>Posts updates to records and adds and deletes records for a dataset and user.</p> <p>The sync count in the record patch is your last known sync count for that record. The server will reject an UpdateRecords request with a ResourceConflictException if you try to patch a record with a new value but a stale sync count.</p> <p>For example, if the sync count on the server is 5 for a key called highScore and you try and submit a new highScore with sync count of 4, the request will be rejected. To obtain the current sync count for a record, call ListRecords. On a successful update of the record, the response returns the new sync count for that record. You should present that sync count the next time you try to update that same record. When the record does not exist, specify the sync count as 0.</p> <p>This API can be called with temporary user credentials provided by Cognito Identity or with developer credentials.</p>
updateRecords :: forall eff. CognitoSync.Service -> CognitoSyncTypes.UpdateRecordsRequest -> Aff (exception :: EXCEPTION | eff) CognitoSyncTypes.UpdateRecordsResponse
updateRecords (CognitoSync.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "updateRecords"
