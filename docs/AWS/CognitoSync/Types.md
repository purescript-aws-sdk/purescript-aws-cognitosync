## Module AWS.CognitoSync.Types

#### `options`

``` purescript
options :: Options
```

#### `AlreadyStreamedException`

``` purescript
newtype AlreadyStreamedException
  = AlreadyStreamedException { message :: ExceptionMessage }
```

An exception thrown when a bulk publish operation is requested less than 24 hours after a previous bulk publish operation completed successfully.

##### Instances
``` purescript
Newtype AlreadyStreamedException _
Generic AlreadyStreamedException _
Show AlreadyStreamedException
Decode AlreadyStreamedException
Encode AlreadyStreamedException
```

#### `newAlreadyStreamedException`

``` purescript
newAlreadyStreamedException :: ExceptionMessage -> AlreadyStreamedException
```

Constructs AlreadyStreamedException from required parameters

#### `newAlreadyStreamedException'`

``` purescript
newAlreadyStreamedException' :: ExceptionMessage -> ({ message :: ExceptionMessage } -> { message :: ExceptionMessage }) -> AlreadyStreamedException
```

Constructs AlreadyStreamedException's fields from required parameters

#### `ApplicationArn`

``` purescript
newtype ApplicationArn
  = ApplicationArn String
```

##### Instances
``` purescript
Newtype ApplicationArn _
Generic ApplicationArn _
Show ApplicationArn
Decode ApplicationArn
Encode ApplicationArn
```

#### `ApplicationArnList`

``` purescript
newtype ApplicationArnList
  = ApplicationArnList (Array ApplicationArn)
```

##### Instances
``` purescript
Newtype ApplicationArnList _
Generic ApplicationArnList _
Show ApplicationArnList
Decode ApplicationArnList
Encode ApplicationArnList
```

#### `AssumeRoleArn`

``` purescript
newtype AssumeRoleArn
  = AssumeRoleArn String
```

##### Instances
``` purescript
Newtype AssumeRoleArn _
Generic AssumeRoleArn _
Show AssumeRoleArn
Decode AssumeRoleArn
Encode AssumeRoleArn
```

#### `BulkPublishRequest`

``` purescript
newtype BulkPublishRequest
  = BulkPublishRequest { "IdentityPoolId" :: IdentityPoolId }
```

The input for the BulkPublish operation.

##### Instances
``` purescript
Newtype BulkPublishRequest _
Generic BulkPublishRequest _
Show BulkPublishRequest
Decode BulkPublishRequest
Encode BulkPublishRequest
```

#### `newBulkPublishRequest`

``` purescript
newBulkPublishRequest :: IdentityPoolId -> BulkPublishRequest
```

Constructs BulkPublishRequest from required parameters

#### `newBulkPublishRequest'`

``` purescript
newBulkPublishRequest' :: IdentityPoolId -> ({ "IdentityPoolId" :: IdentityPoolId } -> { "IdentityPoolId" :: IdentityPoolId }) -> BulkPublishRequest
```

Constructs BulkPublishRequest's fields from required parameters

#### `BulkPublishResponse`

``` purescript
newtype BulkPublishResponse
  = BulkPublishResponse { "IdentityPoolId" :: Maybe (IdentityPoolId) }
```

The output for the BulkPublish operation.

##### Instances
``` purescript
Newtype BulkPublishResponse _
Generic BulkPublishResponse _
Show BulkPublishResponse
Decode BulkPublishResponse
Encode BulkPublishResponse
```

#### `newBulkPublishResponse`

``` purescript
newBulkPublishResponse :: BulkPublishResponse
```

Constructs BulkPublishResponse from required parameters

#### `newBulkPublishResponse'`

``` purescript
newBulkPublishResponse' :: ({ "IdentityPoolId" :: Maybe (IdentityPoolId) } -> { "IdentityPoolId" :: Maybe (IdentityPoolId) }) -> BulkPublishResponse
```

Constructs BulkPublishResponse's fields from required parameters

#### `BulkPublishStatus`

``` purescript
newtype BulkPublishStatus
  = BulkPublishStatus String
```

##### Instances
``` purescript
Newtype BulkPublishStatus _
Generic BulkPublishStatus _
Show BulkPublishStatus
Decode BulkPublishStatus
Encode BulkPublishStatus
```

#### `ClientContext`

``` purescript
newtype ClientContext
  = ClientContext String
```

##### Instances
``` purescript
Newtype ClientContext _
Generic ClientContext _
Show ClientContext
Decode ClientContext
Encode ClientContext
```

#### `CognitoEventType`

``` purescript
newtype CognitoEventType
  = CognitoEventType String
```

##### Instances
``` purescript
Newtype CognitoEventType _
Generic CognitoEventType _
Show CognitoEventType
Decode CognitoEventType
Encode CognitoEventType
```

#### `CognitoStreams`

``` purescript
newtype CognitoStreams
  = CognitoStreams { "StreamName" :: Maybe (StreamName), "RoleArn" :: Maybe (AssumeRoleArn), "StreamingStatus" :: Maybe (StreamingStatus) }
```

Configuration options for configure Cognito streams.

##### Instances
``` purescript
Newtype CognitoStreams _
Generic CognitoStreams _
Show CognitoStreams
Decode CognitoStreams
Encode CognitoStreams
```

#### `newCognitoStreams`

``` purescript
newCognitoStreams :: CognitoStreams
```

Constructs CognitoStreams from required parameters

#### `newCognitoStreams'`

``` purescript
newCognitoStreams' :: ({ "StreamName" :: Maybe (StreamName), "RoleArn" :: Maybe (AssumeRoleArn), "StreamingStatus" :: Maybe (StreamingStatus) } -> { "StreamName" :: Maybe (StreamName), "RoleArn" :: Maybe (AssumeRoleArn), "StreamingStatus" :: Maybe (StreamingStatus) }) -> CognitoStreams
```

Constructs CognitoStreams's fields from required parameters

#### `ConcurrentModificationException`

``` purescript
newtype ConcurrentModificationException
  = ConcurrentModificationException { message :: String }
```

<p>Thrown if there are parallel requests to modify a resource.</p>

##### Instances
``` purescript
Newtype ConcurrentModificationException _
Generic ConcurrentModificationException _
Show ConcurrentModificationException
Decode ConcurrentModificationException
Encode ConcurrentModificationException
```

#### `newConcurrentModificationException`

``` purescript
newConcurrentModificationException :: String -> ConcurrentModificationException
```

Constructs ConcurrentModificationException from required parameters

#### `newConcurrentModificationException'`

``` purescript
newConcurrentModificationException' :: String -> ({ message :: String } -> { message :: String }) -> ConcurrentModificationException
```

Constructs ConcurrentModificationException's fields from required parameters

#### `Dataset`

``` purescript
newtype Dataset
  = Dataset { "IdentityId" :: Maybe (IdentityId), "DatasetName" :: Maybe (DatasetName), "CreationDate" :: Maybe (Date), "LastModifiedDate" :: Maybe (Date), "LastModifiedBy" :: Maybe (String), "DataStorage" :: Maybe (Number), "NumRecords" :: Maybe (Number) }
```

A collection of data for an identity pool. An identity pool can have multiple datasets. A dataset is per identity and can be general or associated with a particular entity in an application (like a saved game). Datasets are automatically created if they don't exist. Data is synced by dataset, and a dataset can hold up to 1MB of key-value pairs.

##### Instances
``` purescript
Newtype Dataset _
Generic Dataset _
Show Dataset
Decode Dataset
Encode Dataset
```

#### `newDataset`

``` purescript
newDataset :: Dataset
```

Constructs Dataset from required parameters

#### `newDataset'`

``` purescript
newDataset' :: ({ "IdentityId" :: Maybe (IdentityId), "DatasetName" :: Maybe (DatasetName), "CreationDate" :: Maybe (Date), "LastModifiedDate" :: Maybe (Date), "LastModifiedBy" :: Maybe (String), "DataStorage" :: Maybe (Number), "NumRecords" :: Maybe (Number) } -> { "IdentityId" :: Maybe (IdentityId), "DatasetName" :: Maybe (DatasetName), "CreationDate" :: Maybe (Date), "LastModifiedDate" :: Maybe (Date), "LastModifiedBy" :: Maybe (String), "DataStorage" :: Maybe (Number), "NumRecords" :: Maybe (Number) }) -> Dataset
```

Constructs Dataset's fields from required parameters

#### `DatasetList`

``` purescript
newtype DatasetList
  = DatasetList (Array Dataset)
```

##### Instances
``` purescript
Newtype DatasetList _
Generic DatasetList _
Show DatasetList
Decode DatasetList
Encode DatasetList
```

#### `DatasetName`

``` purescript
newtype DatasetName
  = DatasetName String
```

##### Instances
``` purescript
Newtype DatasetName _
Generic DatasetName _
Show DatasetName
Decode DatasetName
Encode DatasetName
```

#### `Date`

``` purescript
newtype Date
  = Date Timestamp
```

##### Instances
``` purescript
Newtype Date _
Generic Date _
Show Date
Decode Date
Encode Date
```

#### `DeleteDatasetRequest`

``` purescript
newtype DeleteDatasetRequest
  = DeleteDatasetRequest { "IdentityPoolId" :: IdentityPoolId, "IdentityId" :: IdentityId, "DatasetName" :: DatasetName }
```

A request to delete the specific dataset.

##### Instances
``` purescript
Newtype DeleteDatasetRequest _
Generic DeleteDatasetRequest _
Show DeleteDatasetRequest
Decode DeleteDatasetRequest
Encode DeleteDatasetRequest
```

#### `newDeleteDatasetRequest`

``` purescript
newDeleteDatasetRequest :: DatasetName -> IdentityId -> IdentityPoolId -> DeleteDatasetRequest
```

Constructs DeleteDatasetRequest from required parameters

#### `newDeleteDatasetRequest'`

``` purescript
newDeleteDatasetRequest' :: DatasetName -> IdentityId -> IdentityPoolId -> ({ "IdentityPoolId" :: IdentityPoolId, "IdentityId" :: IdentityId, "DatasetName" :: DatasetName } -> { "IdentityPoolId" :: IdentityPoolId, "IdentityId" :: IdentityId, "DatasetName" :: DatasetName }) -> DeleteDatasetRequest
```

Constructs DeleteDatasetRequest's fields from required parameters

#### `DeleteDatasetResponse`

``` purescript
newtype DeleteDatasetResponse
  = DeleteDatasetResponse { "Dataset" :: Maybe (Dataset) }
```

Response to a successful DeleteDataset request.

##### Instances
``` purescript
Newtype DeleteDatasetResponse _
Generic DeleteDatasetResponse _
Show DeleteDatasetResponse
Decode DeleteDatasetResponse
Encode DeleteDatasetResponse
```

#### `newDeleteDatasetResponse`

``` purescript
newDeleteDatasetResponse :: DeleteDatasetResponse
```

Constructs DeleteDatasetResponse from required parameters

#### `newDeleteDatasetResponse'`

``` purescript
newDeleteDatasetResponse' :: ({ "Dataset" :: Maybe (Dataset) } -> { "Dataset" :: Maybe (Dataset) }) -> DeleteDatasetResponse
```

Constructs DeleteDatasetResponse's fields from required parameters

#### `DescribeDatasetRequest`

``` purescript
newtype DescribeDatasetRequest
  = DescribeDatasetRequest { "IdentityPoolId" :: IdentityPoolId, "IdentityId" :: IdentityId, "DatasetName" :: DatasetName }
```

A request for meta data about a dataset (creation date, number of records, size) by owner and dataset name.

##### Instances
``` purescript
Newtype DescribeDatasetRequest _
Generic DescribeDatasetRequest _
Show DescribeDatasetRequest
Decode DescribeDatasetRequest
Encode DescribeDatasetRequest
```

#### `newDescribeDatasetRequest`

``` purescript
newDescribeDatasetRequest :: DatasetName -> IdentityId -> IdentityPoolId -> DescribeDatasetRequest
```

Constructs DescribeDatasetRequest from required parameters

#### `newDescribeDatasetRequest'`

``` purescript
newDescribeDatasetRequest' :: DatasetName -> IdentityId -> IdentityPoolId -> ({ "IdentityPoolId" :: IdentityPoolId, "IdentityId" :: IdentityId, "DatasetName" :: DatasetName } -> { "IdentityPoolId" :: IdentityPoolId, "IdentityId" :: IdentityId, "DatasetName" :: DatasetName }) -> DescribeDatasetRequest
```

Constructs DescribeDatasetRequest's fields from required parameters

#### `DescribeDatasetResponse`

``` purescript
newtype DescribeDatasetResponse
  = DescribeDatasetResponse { "Dataset" :: Maybe (Dataset) }
```

Response to a successful DescribeDataset request.

##### Instances
``` purescript
Newtype DescribeDatasetResponse _
Generic DescribeDatasetResponse _
Show DescribeDatasetResponse
Decode DescribeDatasetResponse
Encode DescribeDatasetResponse
```

#### `newDescribeDatasetResponse`

``` purescript
newDescribeDatasetResponse :: DescribeDatasetResponse
```

Constructs DescribeDatasetResponse from required parameters

#### `newDescribeDatasetResponse'`

``` purescript
newDescribeDatasetResponse' :: ({ "Dataset" :: Maybe (Dataset) } -> { "Dataset" :: Maybe (Dataset) }) -> DescribeDatasetResponse
```

Constructs DescribeDatasetResponse's fields from required parameters

#### `DescribeIdentityPoolUsageRequest`

``` purescript
newtype DescribeIdentityPoolUsageRequest
  = DescribeIdentityPoolUsageRequest { "IdentityPoolId" :: IdentityPoolId }
```

A request for usage information about the identity pool.

##### Instances
``` purescript
Newtype DescribeIdentityPoolUsageRequest _
Generic DescribeIdentityPoolUsageRequest _
Show DescribeIdentityPoolUsageRequest
Decode DescribeIdentityPoolUsageRequest
Encode DescribeIdentityPoolUsageRequest
```

#### `newDescribeIdentityPoolUsageRequest`

``` purescript
newDescribeIdentityPoolUsageRequest :: IdentityPoolId -> DescribeIdentityPoolUsageRequest
```

Constructs DescribeIdentityPoolUsageRequest from required parameters

#### `newDescribeIdentityPoolUsageRequest'`

``` purescript
newDescribeIdentityPoolUsageRequest' :: IdentityPoolId -> ({ "IdentityPoolId" :: IdentityPoolId } -> { "IdentityPoolId" :: IdentityPoolId }) -> DescribeIdentityPoolUsageRequest
```

Constructs DescribeIdentityPoolUsageRequest's fields from required parameters

#### `DescribeIdentityPoolUsageResponse`

``` purescript
newtype DescribeIdentityPoolUsageResponse
  = DescribeIdentityPoolUsageResponse { "IdentityPoolUsage" :: Maybe (IdentityPoolUsage) }
```

Response to a successful DescribeIdentityPoolUsage request.

##### Instances
``` purescript
Newtype DescribeIdentityPoolUsageResponse _
Generic DescribeIdentityPoolUsageResponse _
Show DescribeIdentityPoolUsageResponse
Decode DescribeIdentityPoolUsageResponse
Encode DescribeIdentityPoolUsageResponse
```

#### `newDescribeIdentityPoolUsageResponse`

``` purescript
newDescribeIdentityPoolUsageResponse :: DescribeIdentityPoolUsageResponse
```

Constructs DescribeIdentityPoolUsageResponse from required parameters

#### `newDescribeIdentityPoolUsageResponse'`

``` purescript
newDescribeIdentityPoolUsageResponse' :: ({ "IdentityPoolUsage" :: Maybe (IdentityPoolUsage) } -> { "IdentityPoolUsage" :: Maybe (IdentityPoolUsage) }) -> DescribeIdentityPoolUsageResponse
```

Constructs DescribeIdentityPoolUsageResponse's fields from required parameters

#### `DescribeIdentityUsageRequest`

``` purescript
newtype DescribeIdentityUsageRequest
  = DescribeIdentityUsageRequest { "IdentityPoolId" :: IdentityPoolId, "IdentityId" :: IdentityId }
```

A request for information about the usage of an identity pool.

##### Instances
``` purescript
Newtype DescribeIdentityUsageRequest _
Generic DescribeIdentityUsageRequest _
Show DescribeIdentityUsageRequest
Decode DescribeIdentityUsageRequest
Encode DescribeIdentityUsageRequest
```

#### `newDescribeIdentityUsageRequest`

``` purescript
newDescribeIdentityUsageRequest :: IdentityId -> IdentityPoolId -> DescribeIdentityUsageRequest
```

Constructs DescribeIdentityUsageRequest from required parameters

#### `newDescribeIdentityUsageRequest'`

``` purescript
newDescribeIdentityUsageRequest' :: IdentityId -> IdentityPoolId -> ({ "IdentityPoolId" :: IdentityPoolId, "IdentityId" :: IdentityId } -> { "IdentityPoolId" :: IdentityPoolId, "IdentityId" :: IdentityId }) -> DescribeIdentityUsageRequest
```

Constructs DescribeIdentityUsageRequest's fields from required parameters

#### `DescribeIdentityUsageResponse`

``` purescript
newtype DescribeIdentityUsageResponse
  = DescribeIdentityUsageResponse { "IdentityUsage" :: Maybe (IdentityUsage) }
```

The response to a successful DescribeIdentityUsage request.

##### Instances
``` purescript
Newtype DescribeIdentityUsageResponse _
Generic DescribeIdentityUsageResponse _
Show DescribeIdentityUsageResponse
Decode DescribeIdentityUsageResponse
Encode DescribeIdentityUsageResponse
```

#### `newDescribeIdentityUsageResponse`

``` purescript
newDescribeIdentityUsageResponse :: DescribeIdentityUsageResponse
```

Constructs DescribeIdentityUsageResponse from required parameters

#### `newDescribeIdentityUsageResponse'`

``` purescript
newDescribeIdentityUsageResponse' :: ({ "IdentityUsage" :: Maybe (IdentityUsage) } -> { "IdentityUsage" :: Maybe (IdentityUsage) }) -> DescribeIdentityUsageResponse
```

Constructs DescribeIdentityUsageResponse's fields from required parameters

#### `DeviceId`

``` purescript
newtype DeviceId
  = DeviceId String
```

##### Instances
``` purescript
Newtype DeviceId _
Generic DeviceId _
Show DeviceId
Decode DeviceId
Encode DeviceId
```

#### `DuplicateRequestException`

``` purescript
newtype DuplicateRequestException
  = DuplicateRequestException { message :: ExceptionMessage }
```

An exception thrown when there is an IN_PROGRESS bulk publish operation for the given identity pool.

##### Instances
``` purescript
Newtype DuplicateRequestException _
Generic DuplicateRequestException _
Show DuplicateRequestException
Decode DuplicateRequestException
Encode DuplicateRequestException
```

#### `newDuplicateRequestException`

``` purescript
newDuplicateRequestException :: ExceptionMessage -> DuplicateRequestException
```

Constructs DuplicateRequestException from required parameters

#### `newDuplicateRequestException'`

``` purescript
newDuplicateRequestException' :: ExceptionMessage -> ({ message :: ExceptionMessage } -> { message :: ExceptionMessage }) -> DuplicateRequestException
```

Constructs DuplicateRequestException's fields from required parameters

#### `Events`

``` purescript
newtype Events
  = Events (StrMap LambdaFunctionArn)
```

##### Instances
``` purescript
Newtype Events _
Generic Events _
Show Events
Decode Events
Encode Events
```

#### `ExceptionMessage`

``` purescript
newtype ExceptionMessage
  = ExceptionMessage String
```

##### Instances
``` purescript
Newtype ExceptionMessage _
Generic ExceptionMessage _
Show ExceptionMessage
Decode ExceptionMessage
Encode ExceptionMessage
```

#### `GetBulkPublishDetailsRequest`

``` purescript
newtype GetBulkPublishDetailsRequest
  = GetBulkPublishDetailsRequest { "IdentityPoolId" :: IdentityPoolId }
```

The input for the GetBulkPublishDetails operation.

##### Instances
``` purescript
Newtype GetBulkPublishDetailsRequest _
Generic GetBulkPublishDetailsRequest _
Show GetBulkPublishDetailsRequest
Decode GetBulkPublishDetailsRequest
Encode GetBulkPublishDetailsRequest
```

#### `newGetBulkPublishDetailsRequest`

``` purescript
newGetBulkPublishDetailsRequest :: IdentityPoolId -> GetBulkPublishDetailsRequest
```

Constructs GetBulkPublishDetailsRequest from required parameters

#### `newGetBulkPublishDetailsRequest'`

``` purescript
newGetBulkPublishDetailsRequest' :: IdentityPoolId -> ({ "IdentityPoolId" :: IdentityPoolId } -> { "IdentityPoolId" :: IdentityPoolId }) -> GetBulkPublishDetailsRequest
```

Constructs GetBulkPublishDetailsRequest's fields from required parameters

#### `GetBulkPublishDetailsResponse`

``` purescript
newtype GetBulkPublishDetailsResponse
  = GetBulkPublishDetailsResponse { "IdentityPoolId" :: Maybe (IdentityPoolId), "BulkPublishStartTime" :: Maybe (Date), "BulkPublishCompleteTime" :: Maybe (Date), "BulkPublishStatus" :: Maybe (BulkPublishStatus), "FailureMessage" :: Maybe (String) }
```

The output for the GetBulkPublishDetails operation.

##### Instances
``` purescript
Newtype GetBulkPublishDetailsResponse _
Generic GetBulkPublishDetailsResponse _
Show GetBulkPublishDetailsResponse
Decode GetBulkPublishDetailsResponse
Encode GetBulkPublishDetailsResponse
```

#### `newGetBulkPublishDetailsResponse`

``` purescript
newGetBulkPublishDetailsResponse :: GetBulkPublishDetailsResponse
```

Constructs GetBulkPublishDetailsResponse from required parameters

#### `newGetBulkPublishDetailsResponse'`

``` purescript
newGetBulkPublishDetailsResponse' :: ({ "IdentityPoolId" :: Maybe (IdentityPoolId), "BulkPublishStartTime" :: Maybe (Date), "BulkPublishCompleteTime" :: Maybe (Date), "BulkPublishStatus" :: Maybe (BulkPublishStatus), "FailureMessage" :: Maybe (String) } -> { "IdentityPoolId" :: Maybe (IdentityPoolId), "BulkPublishStartTime" :: Maybe (Date), "BulkPublishCompleteTime" :: Maybe (Date), "BulkPublishStatus" :: Maybe (BulkPublishStatus), "FailureMessage" :: Maybe (String) }) -> GetBulkPublishDetailsResponse
```

Constructs GetBulkPublishDetailsResponse's fields from required parameters

#### `GetCognitoEventsRequest`

``` purescript
newtype GetCognitoEventsRequest
  = GetCognitoEventsRequest { "IdentityPoolId" :: IdentityPoolId }
```

<p>A request for a list of the configured Cognito Events</p>

##### Instances
``` purescript
Newtype GetCognitoEventsRequest _
Generic GetCognitoEventsRequest _
Show GetCognitoEventsRequest
Decode GetCognitoEventsRequest
Encode GetCognitoEventsRequest
```

#### `newGetCognitoEventsRequest`

``` purescript
newGetCognitoEventsRequest :: IdentityPoolId -> GetCognitoEventsRequest
```

Constructs GetCognitoEventsRequest from required parameters

#### `newGetCognitoEventsRequest'`

``` purescript
newGetCognitoEventsRequest' :: IdentityPoolId -> ({ "IdentityPoolId" :: IdentityPoolId } -> { "IdentityPoolId" :: IdentityPoolId }) -> GetCognitoEventsRequest
```

Constructs GetCognitoEventsRequest's fields from required parameters

#### `GetCognitoEventsResponse`

``` purescript
newtype GetCognitoEventsResponse
  = GetCognitoEventsResponse { "Events" :: Maybe (Events) }
```

<p>The response from the GetCognitoEvents request</p>

##### Instances
``` purescript
Newtype GetCognitoEventsResponse _
Generic GetCognitoEventsResponse _
Show GetCognitoEventsResponse
Decode GetCognitoEventsResponse
Encode GetCognitoEventsResponse
```

#### `newGetCognitoEventsResponse`

``` purescript
newGetCognitoEventsResponse :: GetCognitoEventsResponse
```

Constructs GetCognitoEventsResponse from required parameters

#### `newGetCognitoEventsResponse'`

``` purescript
newGetCognitoEventsResponse' :: ({ "Events" :: Maybe (Events) } -> { "Events" :: Maybe (Events) }) -> GetCognitoEventsResponse
```

Constructs GetCognitoEventsResponse's fields from required parameters

#### `GetIdentityPoolConfigurationRequest`

``` purescript
newtype GetIdentityPoolConfigurationRequest
  = GetIdentityPoolConfigurationRequest { "IdentityPoolId" :: IdentityPoolId }
```

<p>The input for the GetIdentityPoolConfiguration operation.</p>

##### Instances
``` purescript
Newtype GetIdentityPoolConfigurationRequest _
Generic GetIdentityPoolConfigurationRequest _
Show GetIdentityPoolConfigurationRequest
Decode GetIdentityPoolConfigurationRequest
Encode GetIdentityPoolConfigurationRequest
```

#### `newGetIdentityPoolConfigurationRequest`

``` purescript
newGetIdentityPoolConfigurationRequest :: IdentityPoolId -> GetIdentityPoolConfigurationRequest
```

Constructs GetIdentityPoolConfigurationRequest from required parameters

#### `newGetIdentityPoolConfigurationRequest'`

``` purescript
newGetIdentityPoolConfigurationRequest' :: IdentityPoolId -> ({ "IdentityPoolId" :: IdentityPoolId } -> { "IdentityPoolId" :: IdentityPoolId }) -> GetIdentityPoolConfigurationRequest
```

Constructs GetIdentityPoolConfigurationRequest's fields from required parameters

#### `GetIdentityPoolConfigurationResponse`

``` purescript
newtype GetIdentityPoolConfigurationResponse
  = GetIdentityPoolConfigurationResponse { "IdentityPoolId" :: Maybe (IdentityPoolId), "PushSync" :: Maybe (PushSync), "CognitoStreams" :: Maybe (CognitoStreams) }
```

<p>The output for the GetIdentityPoolConfiguration operation.</p>

##### Instances
``` purescript
Newtype GetIdentityPoolConfigurationResponse _
Generic GetIdentityPoolConfigurationResponse _
Show GetIdentityPoolConfigurationResponse
Decode GetIdentityPoolConfigurationResponse
Encode GetIdentityPoolConfigurationResponse
```

#### `newGetIdentityPoolConfigurationResponse`

``` purescript
newGetIdentityPoolConfigurationResponse :: GetIdentityPoolConfigurationResponse
```

Constructs GetIdentityPoolConfigurationResponse from required parameters

#### `newGetIdentityPoolConfigurationResponse'`

``` purescript
newGetIdentityPoolConfigurationResponse' :: ({ "IdentityPoolId" :: Maybe (IdentityPoolId), "PushSync" :: Maybe (PushSync), "CognitoStreams" :: Maybe (CognitoStreams) } -> { "IdentityPoolId" :: Maybe (IdentityPoolId), "PushSync" :: Maybe (PushSync), "CognitoStreams" :: Maybe (CognitoStreams) }) -> GetIdentityPoolConfigurationResponse
```

Constructs GetIdentityPoolConfigurationResponse's fields from required parameters

#### `IdentityId`

``` purescript
newtype IdentityId
  = IdentityId String
```

##### Instances
``` purescript
Newtype IdentityId _
Generic IdentityId _
Show IdentityId
Decode IdentityId
Encode IdentityId
```

#### `IdentityPoolId`

``` purescript
newtype IdentityPoolId
  = IdentityPoolId String
```

##### Instances
``` purescript
Newtype IdentityPoolId _
Generic IdentityPoolId _
Show IdentityPoolId
Decode IdentityPoolId
Encode IdentityPoolId
```

#### `IdentityPoolUsage`

``` purescript
newtype IdentityPoolUsage
  = IdentityPoolUsage { "IdentityPoolId" :: Maybe (IdentityPoolId), "SyncSessionsCount" :: Maybe (Number), "DataStorage" :: Maybe (Number), "LastModifiedDate" :: Maybe (Date) }
```

Usage information for the identity pool.

##### Instances
``` purescript
Newtype IdentityPoolUsage _
Generic IdentityPoolUsage _
Show IdentityPoolUsage
Decode IdentityPoolUsage
Encode IdentityPoolUsage
```

#### `newIdentityPoolUsage`

``` purescript
newIdentityPoolUsage :: IdentityPoolUsage
```

Constructs IdentityPoolUsage from required parameters

#### `newIdentityPoolUsage'`

``` purescript
newIdentityPoolUsage' :: ({ "IdentityPoolId" :: Maybe (IdentityPoolId), "SyncSessionsCount" :: Maybe (Number), "DataStorage" :: Maybe (Number), "LastModifiedDate" :: Maybe (Date) } -> { "IdentityPoolId" :: Maybe (IdentityPoolId), "SyncSessionsCount" :: Maybe (Number), "DataStorage" :: Maybe (Number), "LastModifiedDate" :: Maybe (Date) }) -> IdentityPoolUsage
```

Constructs IdentityPoolUsage's fields from required parameters

#### `IdentityPoolUsageList`

``` purescript
newtype IdentityPoolUsageList
  = IdentityPoolUsageList (Array IdentityPoolUsage)
```

##### Instances
``` purescript
Newtype IdentityPoolUsageList _
Generic IdentityPoolUsageList _
Show IdentityPoolUsageList
Decode IdentityPoolUsageList
Encode IdentityPoolUsageList
```

#### `IdentityUsage`

``` purescript
newtype IdentityUsage
  = IdentityUsage { "IdentityId" :: Maybe (IdentityId), "IdentityPoolId" :: Maybe (IdentityPoolId), "LastModifiedDate" :: Maybe (Date), "DatasetCount" :: Maybe (Int), "DataStorage" :: Maybe (Number) }
```

Usage information for the identity.

##### Instances
``` purescript
Newtype IdentityUsage _
Generic IdentityUsage _
Show IdentityUsage
Decode IdentityUsage
Encode IdentityUsage
```

#### `newIdentityUsage`

``` purescript
newIdentityUsage :: IdentityUsage
```

Constructs IdentityUsage from required parameters

#### `newIdentityUsage'`

``` purescript
newIdentityUsage' :: ({ "IdentityId" :: Maybe (IdentityId), "IdentityPoolId" :: Maybe (IdentityPoolId), "LastModifiedDate" :: Maybe (Date), "DatasetCount" :: Maybe (Int), "DataStorage" :: Maybe (Number) } -> { "IdentityId" :: Maybe (IdentityId), "IdentityPoolId" :: Maybe (IdentityPoolId), "LastModifiedDate" :: Maybe (Date), "DatasetCount" :: Maybe (Int), "DataStorage" :: Maybe (Number) }) -> IdentityUsage
```

Constructs IdentityUsage's fields from required parameters

#### `IntegerString`

``` purescript
newtype IntegerString
  = IntegerString Int
```

##### Instances
``` purescript
Newtype IntegerString _
Generic IntegerString _
Show IntegerString
Decode IntegerString
Encode IntegerString
```

#### `InternalErrorException`

``` purescript
newtype InternalErrorException
  = InternalErrorException { message :: ExceptionMessage }
```

Indicates an internal service error.

##### Instances
``` purescript
Newtype InternalErrorException _
Generic InternalErrorException _
Show InternalErrorException
Decode InternalErrorException
Encode InternalErrorException
```

#### `newInternalErrorException`

``` purescript
newInternalErrorException :: ExceptionMessage -> InternalErrorException
```

Constructs InternalErrorException from required parameters

#### `newInternalErrorException'`

``` purescript
newInternalErrorException' :: ExceptionMessage -> ({ message :: ExceptionMessage } -> { message :: ExceptionMessage }) -> InternalErrorException
```

Constructs InternalErrorException's fields from required parameters

#### `InvalidConfigurationException`

``` purescript
newtype InvalidConfigurationException
  = InvalidConfigurationException { message :: ExceptionMessage }
```

##### Instances
``` purescript
Newtype InvalidConfigurationException _
Generic InvalidConfigurationException _
Show InvalidConfigurationException
Decode InvalidConfigurationException
Encode InvalidConfigurationException
```

#### `newInvalidConfigurationException`

``` purescript
newInvalidConfigurationException :: ExceptionMessage -> InvalidConfigurationException
```

Constructs InvalidConfigurationException from required parameters

#### `newInvalidConfigurationException'`

``` purescript
newInvalidConfigurationException' :: ExceptionMessage -> ({ message :: ExceptionMessage } -> { message :: ExceptionMessage }) -> InvalidConfigurationException
```

Constructs InvalidConfigurationException's fields from required parameters

#### `InvalidLambdaFunctionOutputException`

``` purescript
newtype InvalidLambdaFunctionOutputException
  = InvalidLambdaFunctionOutputException { message :: ExceptionMessage }
```

<p>The AWS Lambda function returned invalid output or an exception.</p>

##### Instances
``` purescript
Newtype InvalidLambdaFunctionOutputException _
Generic InvalidLambdaFunctionOutputException _
Show InvalidLambdaFunctionOutputException
Decode InvalidLambdaFunctionOutputException
Encode InvalidLambdaFunctionOutputException
```

#### `newInvalidLambdaFunctionOutputException`

``` purescript
newInvalidLambdaFunctionOutputException :: ExceptionMessage -> InvalidLambdaFunctionOutputException
```

Constructs InvalidLambdaFunctionOutputException from required parameters

#### `newInvalidLambdaFunctionOutputException'`

``` purescript
newInvalidLambdaFunctionOutputException' :: ExceptionMessage -> ({ message :: ExceptionMessage } -> { message :: ExceptionMessage }) -> InvalidLambdaFunctionOutputException
```

Constructs InvalidLambdaFunctionOutputException's fields from required parameters

#### `InvalidParameterException`

``` purescript
newtype InvalidParameterException
  = InvalidParameterException { message :: ExceptionMessage }
```

Thrown when a request parameter does not comply with the associated constraints.

##### Instances
``` purescript
Newtype InvalidParameterException _
Generic InvalidParameterException _
Show InvalidParameterException
Decode InvalidParameterException
Encode InvalidParameterException
```

#### `newInvalidParameterException`

``` purescript
newInvalidParameterException :: ExceptionMessage -> InvalidParameterException
```

Constructs InvalidParameterException from required parameters

#### `newInvalidParameterException'`

``` purescript
newInvalidParameterException' :: ExceptionMessage -> ({ message :: ExceptionMessage } -> { message :: ExceptionMessage }) -> InvalidParameterException
```

Constructs InvalidParameterException's fields from required parameters

#### `LambdaFunctionArn`

``` purescript
newtype LambdaFunctionArn
  = LambdaFunctionArn String
```

##### Instances
``` purescript
Newtype LambdaFunctionArn _
Generic LambdaFunctionArn _
Show LambdaFunctionArn
Decode LambdaFunctionArn
Encode LambdaFunctionArn
```

#### `LambdaThrottledException`

``` purescript
newtype LambdaThrottledException
  = LambdaThrottledException { message :: ExceptionMessage }
```

<p>AWS Lambda throttled your account, please contact AWS Support</p>

##### Instances
``` purescript
Newtype LambdaThrottledException _
Generic LambdaThrottledException _
Show LambdaThrottledException
Decode LambdaThrottledException
Encode LambdaThrottledException
```

#### `newLambdaThrottledException`

``` purescript
newLambdaThrottledException :: ExceptionMessage -> LambdaThrottledException
```

Constructs LambdaThrottledException from required parameters

#### `newLambdaThrottledException'`

``` purescript
newLambdaThrottledException' :: ExceptionMessage -> ({ message :: ExceptionMessage } -> { message :: ExceptionMessage }) -> LambdaThrottledException
```

Constructs LambdaThrottledException's fields from required parameters

#### `LimitExceededException`

``` purescript
newtype LimitExceededException
  = LimitExceededException { message :: ExceptionMessage }
```

Thrown when the limit on the number of objects or operations has been exceeded.

##### Instances
``` purescript
Newtype LimitExceededException _
Generic LimitExceededException _
Show LimitExceededException
Decode LimitExceededException
Encode LimitExceededException
```

#### `newLimitExceededException`

``` purescript
newLimitExceededException :: ExceptionMessage -> LimitExceededException
```

Constructs LimitExceededException from required parameters

#### `newLimitExceededException'`

``` purescript
newLimitExceededException' :: ExceptionMessage -> ({ message :: ExceptionMessage } -> { message :: ExceptionMessage }) -> LimitExceededException
```

Constructs LimitExceededException's fields from required parameters

#### `ListDatasetsRequest`

``` purescript
newtype ListDatasetsRequest
  = ListDatasetsRequest { "IdentityPoolId" :: IdentityPoolId, "IdentityId" :: IdentityId, "NextToken" :: Maybe (String), "MaxResults" :: Maybe (IntegerString) }
```

Request for a list of datasets for an identity.

##### Instances
``` purescript
Newtype ListDatasetsRequest _
Generic ListDatasetsRequest _
Show ListDatasetsRequest
Decode ListDatasetsRequest
Encode ListDatasetsRequest
```

#### `newListDatasetsRequest`

``` purescript
newListDatasetsRequest :: IdentityId -> IdentityPoolId -> ListDatasetsRequest
```

Constructs ListDatasetsRequest from required parameters

#### `newListDatasetsRequest'`

``` purescript
newListDatasetsRequest' :: IdentityId -> IdentityPoolId -> ({ "IdentityPoolId" :: IdentityPoolId, "IdentityId" :: IdentityId, "NextToken" :: Maybe (String), "MaxResults" :: Maybe (IntegerString) } -> { "IdentityPoolId" :: IdentityPoolId, "IdentityId" :: IdentityId, "NextToken" :: Maybe (String), "MaxResults" :: Maybe (IntegerString) }) -> ListDatasetsRequest
```

Constructs ListDatasetsRequest's fields from required parameters

#### `ListDatasetsResponse`

``` purescript
newtype ListDatasetsResponse
  = ListDatasetsResponse { "Datasets" :: Maybe (DatasetList), "Count" :: Maybe (Int), "NextToken" :: Maybe (String) }
```

Returned for a successful ListDatasets request.

##### Instances
``` purescript
Newtype ListDatasetsResponse _
Generic ListDatasetsResponse _
Show ListDatasetsResponse
Decode ListDatasetsResponse
Encode ListDatasetsResponse
```

#### `newListDatasetsResponse`

``` purescript
newListDatasetsResponse :: ListDatasetsResponse
```

Constructs ListDatasetsResponse from required parameters

#### `newListDatasetsResponse'`

``` purescript
newListDatasetsResponse' :: ({ "Datasets" :: Maybe (DatasetList), "Count" :: Maybe (Int), "NextToken" :: Maybe (String) } -> { "Datasets" :: Maybe (DatasetList), "Count" :: Maybe (Int), "NextToken" :: Maybe (String) }) -> ListDatasetsResponse
```

Constructs ListDatasetsResponse's fields from required parameters

#### `ListIdentityPoolUsageRequest`

``` purescript
newtype ListIdentityPoolUsageRequest
  = ListIdentityPoolUsageRequest { "NextToken" :: Maybe (String), "MaxResults" :: Maybe (IntegerString) }
```

A request for usage information on an identity pool.

##### Instances
``` purescript
Newtype ListIdentityPoolUsageRequest _
Generic ListIdentityPoolUsageRequest _
Show ListIdentityPoolUsageRequest
Decode ListIdentityPoolUsageRequest
Encode ListIdentityPoolUsageRequest
```

#### `newListIdentityPoolUsageRequest`

``` purescript
newListIdentityPoolUsageRequest :: ListIdentityPoolUsageRequest
```

Constructs ListIdentityPoolUsageRequest from required parameters

#### `newListIdentityPoolUsageRequest'`

``` purescript
newListIdentityPoolUsageRequest' :: ({ "NextToken" :: Maybe (String), "MaxResults" :: Maybe (IntegerString) } -> { "NextToken" :: Maybe (String), "MaxResults" :: Maybe (IntegerString) }) -> ListIdentityPoolUsageRequest
```

Constructs ListIdentityPoolUsageRequest's fields from required parameters

#### `ListIdentityPoolUsageResponse`

``` purescript
newtype ListIdentityPoolUsageResponse
  = ListIdentityPoolUsageResponse { "IdentityPoolUsages" :: Maybe (IdentityPoolUsageList), "MaxResults" :: Maybe (Int), "Count" :: Maybe (Int), "NextToken" :: Maybe (String) }
```

Returned for a successful ListIdentityPoolUsage request.

##### Instances
``` purescript
Newtype ListIdentityPoolUsageResponse _
Generic ListIdentityPoolUsageResponse _
Show ListIdentityPoolUsageResponse
Decode ListIdentityPoolUsageResponse
Encode ListIdentityPoolUsageResponse
```

#### `newListIdentityPoolUsageResponse`

``` purescript
newListIdentityPoolUsageResponse :: ListIdentityPoolUsageResponse
```

Constructs ListIdentityPoolUsageResponse from required parameters

#### `newListIdentityPoolUsageResponse'`

``` purescript
newListIdentityPoolUsageResponse' :: ({ "IdentityPoolUsages" :: Maybe (IdentityPoolUsageList), "MaxResults" :: Maybe (Int), "Count" :: Maybe (Int), "NextToken" :: Maybe (String) } -> { "IdentityPoolUsages" :: Maybe (IdentityPoolUsageList), "MaxResults" :: Maybe (Int), "Count" :: Maybe (Int), "NextToken" :: Maybe (String) }) -> ListIdentityPoolUsageResponse
```

Constructs ListIdentityPoolUsageResponse's fields from required parameters

#### `ListRecordsRequest`

``` purescript
newtype ListRecordsRequest
  = ListRecordsRequest { "IdentityPoolId" :: IdentityPoolId, "IdentityId" :: IdentityId, "DatasetName" :: DatasetName, "LastSyncCount" :: Maybe (Number), "NextToken" :: Maybe (String), "MaxResults" :: Maybe (IntegerString), "SyncSessionToken" :: Maybe (SyncSessionToken) }
```

A request for a list of records.

##### Instances
``` purescript
Newtype ListRecordsRequest _
Generic ListRecordsRequest _
Show ListRecordsRequest
Decode ListRecordsRequest
Encode ListRecordsRequest
```

#### `newListRecordsRequest`

``` purescript
newListRecordsRequest :: DatasetName -> IdentityId -> IdentityPoolId -> ListRecordsRequest
```

Constructs ListRecordsRequest from required parameters

#### `newListRecordsRequest'`

``` purescript
newListRecordsRequest' :: DatasetName -> IdentityId -> IdentityPoolId -> ({ "IdentityPoolId" :: IdentityPoolId, "IdentityId" :: IdentityId, "DatasetName" :: DatasetName, "LastSyncCount" :: Maybe (Number), "NextToken" :: Maybe (String), "MaxResults" :: Maybe (IntegerString), "SyncSessionToken" :: Maybe (SyncSessionToken) } -> { "IdentityPoolId" :: IdentityPoolId, "IdentityId" :: IdentityId, "DatasetName" :: DatasetName, "LastSyncCount" :: Maybe (Number), "NextToken" :: Maybe (String), "MaxResults" :: Maybe (IntegerString), "SyncSessionToken" :: Maybe (SyncSessionToken) }) -> ListRecordsRequest
```

Constructs ListRecordsRequest's fields from required parameters

#### `ListRecordsResponse`

``` purescript
newtype ListRecordsResponse
  = ListRecordsResponse { "Records" :: Maybe (RecordList), "NextToken" :: Maybe (String), "Count" :: Maybe (Int), "DatasetSyncCount" :: Maybe (Number), "LastModifiedBy" :: Maybe (String), "MergedDatasetNames" :: Maybe (MergedDatasetNameList), "DatasetExists" :: Maybe (Boolean), "DatasetDeletedAfterRequestedSyncCount" :: Maybe (Boolean), "SyncSessionToken" :: Maybe (String) }
```

Returned for a successful ListRecordsRequest.

##### Instances
``` purescript
Newtype ListRecordsResponse _
Generic ListRecordsResponse _
Show ListRecordsResponse
Decode ListRecordsResponse
Encode ListRecordsResponse
```

#### `newListRecordsResponse`

``` purescript
newListRecordsResponse :: ListRecordsResponse
```

Constructs ListRecordsResponse from required parameters

#### `newListRecordsResponse'`

``` purescript
newListRecordsResponse' :: ({ "Records" :: Maybe (RecordList), "NextToken" :: Maybe (String), "Count" :: Maybe (Int), "DatasetSyncCount" :: Maybe (Number), "LastModifiedBy" :: Maybe (String), "MergedDatasetNames" :: Maybe (MergedDatasetNameList), "DatasetExists" :: Maybe (Boolean), "DatasetDeletedAfterRequestedSyncCount" :: Maybe (Boolean), "SyncSessionToken" :: Maybe (String) } -> { "Records" :: Maybe (RecordList), "NextToken" :: Maybe (String), "Count" :: Maybe (Int), "DatasetSyncCount" :: Maybe (Number), "LastModifiedBy" :: Maybe (String), "MergedDatasetNames" :: Maybe (MergedDatasetNameList), "DatasetExists" :: Maybe (Boolean), "DatasetDeletedAfterRequestedSyncCount" :: Maybe (Boolean), "SyncSessionToken" :: Maybe (String) }) -> ListRecordsResponse
```

Constructs ListRecordsResponse's fields from required parameters

#### `MergedDatasetNameList`

``` purescript
newtype MergedDatasetNameList
  = MergedDatasetNameList (Array String)
```

##### Instances
``` purescript
Newtype MergedDatasetNameList _
Generic MergedDatasetNameList _
Show MergedDatasetNameList
Decode MergedDatasetNameList
Encode MergedDatasetNameList
```

#### `NotAuthorizedException`

``` purescript
newtype NotAuthorizedException
  = NotAuthorizedException { message :: ExceptionMessage }
```

Thrown when a user is not authorized to access the requested resource.

##### Instances
``` purescript
Newtype NotAuthorizedException _
Generic NotAuthorizedException _
Show NotAuthorizedException
Decode NotAuthorizedException
Encode NotAuthorizedException
```

#### `newNotAuthorizedException`

``` purescript
newNotAuthorizedException :: ExceptionMessage -> NotAuthorizedException
```

Constructs NotAuthorizedException from required parameters

#### `newNotAuthorizedException'`

``` purescript
newNotAuthorizedException' :: ExceptionMessage -> ({ message :: ExceptionMessage } -> { message :: ExceptionMessage }) -> NotAuthorizedException
```

Constructs NotAuthorizedException's fields from required parameters

#### `Operation`

``` purescript
newtype Operation
  = Operation String
```

##### Instances
``` purescript
Newtype Operation _
Generic Operation _
Show Operation
Decode Operation
Encode Operation
```

#### `Platform`

``` purescript
newtype Platform
  = Platform String
```

##### Instances
``` purescript
Newtype Platform _
Generic Platform _
Show Platform
Decode Platform
Encode Platform
```

#### `PushSync`

``` purescript
newtype PushSync
  = PushSync { "ApplicationArns" :: Maybe (ApplicationArnList), "RoleArn" :: Maybe (AssumeRoleArn) }
```

<p>Configuration options to be applied to the identity pool.</p>

##### Instances
``` purescript
Newtype PushSync _
Generic PushSync _
Show PushSync
Decode PushSync
Encode PushSync
```

#### `newPushSync`

``` purescript
newPushSync :: PushSync
```

Constructs PushSync from required parameters

#### `newPushSync'`

``` purescript
newPushSync' :: ({ "ApplicationArns" :: Maybe (ApplicationArnList), "RoleArn" :: Maybe (AssumeRoleArn) } -> { "ApplicationArns" :: Maybe (ApplicationArnList), "RoleArn" :: Maybe (AssumeRoleArn) }) -> PushSync
```

Constructs PushSync's fields from required parameters

#### `PushToken`

``` purescript
newtype PushToken
  = PushToken String
```

##### Instances
``` purescript
Newtype PushToken _
Generic PushToken _
Show PushToken
Decode PushToken
Encode PushToken
```

#### `Record''`

``` purescript
newtype Record''
  = Record'' { "Key" :: Maybe (RecordKey), "Value" :: Maybe (RecordValue), "SyncCount" :: Maybe (Number), "LastModifiedDate" :: Maybe (Date), "LastModifiedBy" :: Maybe (String), "DeviceLastModifiedDate" :: Maybe (Date) }
```

The basic data structure of a dataset.

##### Instances
``` purescript
Newtype Record'' _
Generic Record'' _
Show Record''
Decode Record''
Encode Record''
```

#### `newRecord''`

``` purescript
newRecord'' :: Record''
```

Constructs Record'' from required parameters

#### `newRecord'''`

``` purescript
newRecord''' :: ({ "Key" :: Maybe (RecordKey), "Value" :: Maybe (RecordValue), "SyncCount" :: Maybe (Number), "LastModifiedDate" :: Maybe (Date), "LastModifiedBy" :: Maybe (String), "DeviceLastModifiedDate" :: Maybe (Date) } -> { "Key" :: Maybe (RecordKey), "Value" :: Maybe (RecordValue), "SyncCount" :: Maybe (Number), "LastModifiedDate" :: Maybe (Date), "LastModifiedBy" :: Maybe (String), "DeviceLastModifiedDate" :: Maybe (Date) }) -> Record''
```

Constructs Record'''s fields from required parameters

#### `RecordKey`

``` purescript
newtype RecordKey
  = RecordKey String
```

##### Instances
``` purescript
Newtype RecordKey _
Generic RecordKey _
Show RecordKey
Decode RecordKey
Encode RecordKey
```

#### `RecordList`

``` purescript
newtype RecordList
  = RecordList (Array Record'')
```

##### Instances
``` purescript
Newtype RecordList _
Generic RecordList _
Show RecordList
Decode RecordList
Encode RecordList
```

#### `RecordPatch`

``` purescript
newtype RecordPatch
  = RecordPatch { "Op" :: Operation, "Key" :: RecordKey, "Value" :: Maybe (RecordValue), "SyncCount" :: Number, "DeviceLastModifiedDate" :: Maybe (Date) }
```

An update operation for a record.

##### Instances
``` purescript
Newtype RecordPatch _
Generic RecordPatch _
Show RecordPatch
Decode RecordPatch
Encode RecordPatch
```

#### `newRecordPatch`

``` purescript
newRecordPatch :: RecordKey -> Operation -> Number -> RecordPatch
```

Constructs RecordPatch from required parameters

#### `newRecordPatch'`

``` purescript
newRecordPatch' :: RecordKey -> Operation -> Number -> ({ "Op" :: Operation, "Key" :: RecordKey, "Value" :: Maybe (RecordValue), "SyncCount" :: Number, "DeviceLastModifiedDate" :: Maybe (Date) } -> { "Op" :: Operation, "Key" :: RecordKey, "Value" :: Maybe (RecordValue), "SyncCount" :: Number, "DeviceLastModifiedDate" :: Maybe (Date) }) -> RecordPatch
```

Constructs RecordPatch's fields from required parameters

#### `RecordPatchList`

``` purescript
newtype RecordPatchList
  = RecordPatchList (Array RecordPatch)
```

##### Instances
``` purescript
Newtype RecordPatchList _
Generic RecordPatchList _
Show RecordPatchList
Decode RecordPatchList
Encode RecordPatchList
```

#### `RecordValue`

``` purescript
newtype RecordValue
  = RecordValue String
```

##### Instances
``` purescript
Newtype RecordValue _
Generic RecordValue _
Show RecordValue
Decode RecordValue
Encode RecordValue
```

#### `RegisterDeviceRequest`

``` purescript
newtype RegisterDeviceRequest
  = RegisterDeviceRequest { "IdentityPoolId" :: IdentityPoolId, "IdentityId" :: IdentityId, "Platform" :: Platform, "Token" :: PushToken }
```

<p>A request to RegisterDevice.</p>

##### Instances
``` purescript
Newtype RegisterDeviceRequest _
Generic RegisterDeviceRequest _
Show RegisterDeviceRequest
Decode RegisterDeviceRequest
Encode RegisterDeviceRequest
```

#### `newRegisterDeviceRequest`

``` purescript
newRegisterDeviceRequest :: IdentityId -> IdentityPoolId -> Platform -> PushToken -> RegisterDeviceRequest
```

Constructs RegisterDeviceRequest from required parameters

#### `newRegisterDeviceRequest'`

``` purescript
newRegisterDeviceRequest' :: IdentityId -> IdentityPoolId -> Platform -> PushToken -> ({ "IdentityPoolId" :: IdentityPoolId, "IdentityId" :: IdentityId, "Platform" :: Platform, "Token" :: PushToken } -> { "IdentityPoolId" :: IdentityPoolId, "IdentityId" :: IdentityId, "Platform" :: Platform, "Token" :: PushToken }) -> RegisterDeviceRequest
```

Constructs RegisterDeviceRequest's fields from required parameters

#### `RegisterDeviceResponse`

``` purescript
newtype RegisterDeviceResponse
  = RegisterDeviceResponse { "DeviceId" :: Maybe (DeviceId) }
```

<p>Response to a RegisterDevice request.</p>

##### Instances
``` purescript
Newtype RegisterDeviceResponse _
Generic RegisterDeviceResponse _
Show RegisterDeviceResponse
Decode RegisterDeviceResponse
Encode RegisterDeviceResponse
```

#### `newRegisterDeviceResponse`

``` purescript
newRegisterDeviceResponse :: RegisterDeviceResponse
```

Constructs RegisterDeviceResponse from required parameters

#### `newRegisterDeviceResponse'`

``` purescript
newRegisterDeviceResponse' :: ({ "DeviceId" :: Maybe (DeviceId) } -> { "DeviceId" :: Maybe (DeviceId) }) -> RegisterDeviceResponse
```

Constructs RegisterDeviceResponse's fields from required parameters

#### `ResourceConflictException`

``` purescript
newtype ResourceConflictException
  = ResourceConflictException { message :: ExceptionMessage }
```

Thrown if an update can't be applied because the resource was changed by another call and this would result in a conflict.

##### Instances
``` purescript
Newtype ResourceConflictException _
Generic ResourceConflictException _
Show ResourceConflictException
Decode ResourceConflictException
Encode ResourceConflictException
```

#### `newResourceConflictException`

``` purescript
newResourceConflictException :: ExceptionMessage -> ResourceConflictException
```

Constructs ResourceConflictException from required parameters

#### `newResourceConflictException'`

``` purescript
newResourceConflictException' :: ExceptionMessage -> ({ message :: ExceptionMessage } -> { message :: ExceptionMessage }) -> ResourceConflictException
```

Constructs ResourceConflictException's fields from required parameters

#### `ResourceNotFoundException`

``` purescript
newtype ResourceNotFoundException
  = ResourceNotFoundException { message :: ExceptionMessage }
```

Thrown if the resource doesn't exist.

##### Instances
``` purescript
Newtype ResourceNotFoundException _
Generic ResourceNotFoundException _
Show ResourceNotFoundException
Decode ResourceNotFoundException
Encode ResourceNotFoundException
```

#### `newResourceNotFoundException`

``` purescript
newResourceNotFoundException :: ExceptionMessage -> ResourceNotFoundException
```

Constructs ResourceNotFoundException from required parameters

#### `newResourceNotFoundException'`

``` purescript
newResourceNotFoundException' :: ExceptionMessage -> ({ message :: ExceptionMessage } -> { message :: ExceptionMessage }) -> ResourceNotFoundException
```

Constructs ResourceNotFoundException's fields from required parameters

#### `SetCognitoEventsRequest`

``` purescript
newtype SetCognitoEventsRequest
  = SetCognitoEventsRequest { "IdentityPoolId" :: IdentityPoolId, "Events" :: Events }
```

<p>A request to configure Cognito Events"</p>"

##### Instances
``` purescript
Newtype SetCognitoEventsRequest _
Generic SetCognitoEventsRequest _
Show SetCognitoEventsRequest
Decode SetCognitoEventsRequest
Encode SetCognitoEventsRequest
```

#### `newSetCognitoEventsRequest`

``` purescript
newSetCognitoEventsRequest :: Events -> IdentityPoolId -> SetCognitoEventsRequest
```

Constructs SetCognitoEventsRequest from required parameters

#### `newSetCognitoEventsRequest'`

``` purescript
newSetCognitoEventsRequest' :: Events -> IdentityPoolId -> ({ "IdentityPoolId" :: IdentityPoolId, "Events" :: Events } -> { "IdentityPoolId" :: IdentityPoolId, "Events" :: Events }) -> SetCognitoEventsRequest
```

Constructs SetCognitoEventsRequest's fields from required parameters

#### `SetIdentityPoolConfigurationRequest`

``` purescript
newtype SetIdentityPoolConfigurationRequest
  = SetIdentityPoolConfigurationRequest { "IdentityPoolId" :: IdentityPoolId, "PushSync" :: Maybe (PushSync), "CognitoStreams" :: Maybe (CognitoStreams) }
```

<p>The input for the SetIdentityPoolConfiguration operation.</p>

##### Instances
``` purescript
Newtype SetIdentityPoolConfigurationRequest _
Generic SetIdentityPoolConfigurationRequest _
Show SetIdentityPoolConfigurationRequest
Decode SetIdentityPoolConfigurationRequest
Encode SetIdentityPoolConfigurationRequest
```

#### `newSetIdentityPoolConfigurationRequest`

``` purescript
newSetIdentityPoolConfigurationRequest :: IdentityPoolId -> SetIdentityPoolConfigurationRequest
```

Constructs SetIdentityPoolConfigurationRequest from required parameters

#### `newSetIdentityPoolConfigurationRequest'`

``` purescript
newSetIdentityPoolConfigurationRequest' :: IdentityPoolId -> ({ "IdentityPoolId" :: IdentityPoolId, "PushSync" :: Maybe (PushSync), "CognitoStreams" :: Maybe (CognitoStreams) } -> { "IdentityPoolId" :: IdentityPoolId, "PushSync" :: Maybe (PushSync), "CognitoStreams" :: Maybe (CognitoStreams) }) -> SetIdentityPoolConfigurationRequest
```

Constructs SetIdentityPoolConfigurationRequest's fields from required parameters

#### `SetIdentityPoolConfigurationResponse`

``` purescript
newtype SetIdentityPoolConfigurationResponse
  = SetIdentityPoolConfigurationResponse { "IdentityPoolId" :: Maybe (IdentityPoolId), "PushSync" :: Maybe (PushSync), "CognitoStreams" :: Maybe (CognitoStreams) }
```

<p>The output for the SetIdentityPoolConfiguration operation</p>

##### Instances
``` purescript
Newtype SetIdentityPoolConfigurationResponse _
Generic SetIdentityPoolConfigurationResponse _
Show SetIdentityPoolConfigurationResponse
Decode SetIdentityPoolConfigurationResponse
Encode SetIdentityPoolConfigurationResponse
```

#### `newSetIdentityPoolConfigurationResponse`

``` purescript
newSetIdentityPoolConfigurationResponse :: SetIdentityPoolConfigurationResponse
```

Constructs SetIdentityPoolConfigurationResponse from required parameters

#### `newSetIdentityPoolConfigurationResponse'`

``` purescript
newSetIdentityPoolConfigurationResponse' :: ({ "IdentityPoolId" :: Maybe (IdentityPoolId), "PushSync" :: Maybe (PushSync), "CognitoStreams" :: Maybe (CognitoStreams) } -> { "IdentityPoolId" :: Maybe (IdentityPoolId), "PushSync" :: Maybe (PushSync), "CognitoStreams" :: Maybe (CognitoStreams) }) -> SetIdentityPoolConfigurationResponse
```

Constructs SetIdentityPoolConfigurationResponse's fields from required parameters

#### `StreamName`

``` purescript
newtype StreamName
  = StreamName String
```

##### Instances
``` purescript
Newtype StreamName _
Generic StreamName _
Show StreamName
Decode StreamName
Encode StreamName
```

#### `StreamingStatus`

``` purescript
newtype StreamingStatus
  = StreamingStatus String
```

##### Instances
``` purescript
Newtype StreamingStatus _
Generic StreamingStatus _
Show StreamingStatus
Decode StreamingStatus
Encode StreamingStatus
```

#### `SubscribeToDatasetRequest`

``` purescript
newtype SubscribeToDatasetRequest
  = SubscribeToDatasetRequest { "IdentityPoolId" :: IdentityPoolId, "IdentityId" :: IdentityId, "DatasetName" :: DatasetName, "DeviceId" :: DeviceId }
```

<p>A request to SubscribeToDatasetRequest.</p>

##### Instances
``` purescript
Newtype SubscribeToDatasetRequest _
Generic SubscribeToDatasetRequest _
Show SubscribeToDatasetRequest
Decode SubscribeToDatasetRequest
Encode SubscribeToDatasetRequest
```

#### `newSubscribeToDatasetRequest`

``` purescript
newSubscribeToDatasetRequest :: DatasetName -> DeviceId -> IdentityId -> IdentityPoolId -> SubscribeToDatasetRequest
```

Constructs SubscribeToDatasetRequest from required parameters

#### `newSubscribeToDatasetRequest'`

``` purescript
newSubscribeToDatasetRequest' :: DatasetName -> DeviceId -> IdentityId -> IdentityPoolId -> ({ "IdentityPoolId" :: IdentityPoolId, "IdentityId" :: IdentityId, "DatasetName" :: DatasetName, "DeviceId" :: DeviceId } -> { "IdentityPoolId" :: IdentityPoolId, "IdentityId" :: IdentityId, "DatasetName" :: DatasetName, "DeviceId" :: DeviceId }) -> SubscribeToDatasetRequest
```

Constructs SubscribeToDatasetRequest's fields from required parameters

#### `SubscribeToDatasetResponse`

``` purescript
newtype SubscribeToDatasetResponse
  = SubscribeToDatasetResponse NoArguments
```

<p>Response to a SubscribeToDataset request.</p>

##### Instances
``` purescript
Newtype SubscribeToDatasetResponse _
Generic SubscribeToDatasetResponse _
Show SubscribeToDatasetResponse
Decode SubscribeToDatasetResponse
Encode SubscribeToDatasetResponse
```

#### `SyncSessionToken`

``` purescript
newtype SyncSessionToken
  = SyncSessionToken String
```

##### Instances
``` purescript
Newtype SyncSessionToken _
Generic SyncSessionToken _
Show SyncSessionToken
Decode SyncSessionToken
Encode SyncSessionToken
```

#### `TooManyRequestsException`

``` purescript
newtype TooManyRequestsException
  = TooManyRequestsException { message :: ExceptionMessage }
```

Thrown if the request is throttled.

##### Instances
``` purescript
Newtype TooManyRequestsException _
Generic TooManyRequestsException _
Show TooManyRequestsException
Decode TooManyRequestsException
Encode TooManyRequestsException
```

#### `newTooManyRequestsException`

``` purescript
newTooManyRequestsException :: ExceptionMessage -> TooManyRequestsException
```

Constructs TooManyRequestsException from required parameters

#### `newTooManyRequestsException'`

``` purescript
newTooManyRequestsException' :: ExceptionMessage -> ({ message :: ExceptionMessage } -> { message :: ExceptionMessage }) -> TooManyRequestsException
```

Constructs TooManyRequestsException's fields from required parameters

#### `UnsubscribeFromDatasetRequest`

``` purescript
newtype UnsubscribeFromDatasetRequest
  = UnsubscribeFromDatasetRequest { "IdentityPoolId" :: IdentityPoolId, "IdentityId" :: IdentityId, "DatasetName" :: DatasetName, "DeviceId" :: DeviceId }
```

<p>A request to UnsubscribeFromDataset.</p>

##### Instances
``` purescript
Newtype UnsubscribeFromDatasetRequest _
Generic UnsubscribeFromDatasetRequest _
Show UnsubscribeFromDatasetRequest
Decode UnsubscribeFromDatasetRequest
Encode UnsubscribeFromDatasetRequest
```

#### `newUnsubscribeFromDatasetRequest`

``` purescript
newUnsubscribeFromDatasetRequest :: DatasetName -> DeviceId -> IdentityId -> IdentityPoolId -> UnsubscribeFromDatasetRequest
```

Constructs UnsubscribeFromDatasetRequest from required parameters

#### `newUnsubscribeFromDatasetRequest'`

``` purescript
newUnsubscribeFromDatasetRequest' :: DatasetName -> DeviceId -> IdentityId -> IdentityPoolId -> ({ "IdentityPoolId" :: IdentityPoolId, "IdentityId" :: IdentityId, "DatasetName" :: DatasetName, "DeviceId" :: DeviceId } -> { "IdentityPoolId" :: IdentityPoolId, "IdentityId" :: IdentityId, "DatasetName" :: DatasetName, "DeviceId" :: DeviceId }) -> UnsubscribeFromDatasetRequest
```

Constructs UnsubscribeFromDatasetRequest's fields from required parameters

#### `UnsubscribeFromDatasetResponse`

``` purescript
newtype UnsubscribeFromDatasetResponse
  = UnsubscribeFromDatasetResponse NoArguments
```

<p>Response to an UnsubscribeFromDataset request.</p>

##### Instances
``` purescript
Newtype UnsubscribeFromDatasetResponse _
Generic UnsubscribeFromDatasetResponse _
Show UnsubscribeFromDatasetResponse
Decode UnsubscribeFromDatasetResponse
Encode UnsubscribeFromDatasetResponse
```

#### `UpdateRecordsRequest`

``` purescript
newtype UpdateRecordsRequest
  = UpdateRecordsRequest { "IdentityPoolId" :: IdentityPoolId, "IdentityId" :: IdentityId, "DatasetName" :: DatasetName, "DeviceId" :: Maybe (DeviceId), "RecordPatches" :: Maybe (RecordPatchList), "SyncSessionToken" :: SyncSessionToken, "ClientContext" :: Maybe (ClientContext) }
```

A request to post updates to records or add and delete records for a dataset and user.

##### Instances
``` purescript
Newtype UpdateRecordsRequest _
Generic UpdateRecordsRequest _
Show UpdateRecordsRequest
Decode UpdateRecordsRequest
Encode UpdateRecordsRequest
```

#### `newUpdateRecordsRequest`

``` purescript
newUpdateRecordsRequest :: DatasetName -> IdentityId -> IdentityPoolId -> SyncSessionToken -> UpdateRecordsRequest
```

Constructs UpdateRecordsRequest from required parameters

#### `newUpdateRecordsRequest'`

``` purescript
newUpdateRecordsRequest' :: DatasetName -> IdentityId -> IdentityPoolId -> SyncSessionToken -> ({ "IdentityPoolId" :: IdentityPoolId, "IdentityId" :: IdentityId, "DatasetName" :: DatasetName, "DeviceId" :: Maybe (DeviceId), "RecordPatches" :: Maybe (RecordPatchList), "SyncSessionToken" :: SyncSessionToken, "ClientContext" :: Maybe (ClientContext) } -> { "IdentityPoolId" :: IdentityPoolId, "IdentityId" :: IdentityId, "DatasetName" :: DatasetName, "DeviceId" :: Maybe (DeviceId), "RecordPatches" :: Maybe (RecordPatchList), "SyncSessionToken" :: SyncSessionToken, "ClientContext" :: Maybe (ClientContext) }) -> UpdateRecordsRequest
```

Constructs UpdateRecordsRequest's fields from required parameters

#### `UpdateRecordsResponse`

``` purescript
newtype UpdateRecordsResponse
  = UpdateRecordsResponse { "Records" :: Maybe (RecordList) }
```

Returned for a successful UpdateRecordsRequest.

##### Instances
``` purescript
Newtype UpdateRecordsResponse _
Generic UpdateRecordsResponse _
Show UpdateRecordsResponse
Decode UpdateRecordsResponse
Encode UpdateRecordsResponse
```

#### `newUpdateRecordsResponse`

``` purescript
newUpdateRecordsResponse :: UpdateRecordsResponse
```

Constructs UpdateRecordsResponse from required parameters

#### `newUpdateRecordsResponse'`

``` purescript
newUpdateRecordsResponse' :: ({ "Records" :: Maybe (RecordList) } -> { "Records" :: Maybe (RecordList) }) -> UpdateRecordsResponse
```

Constructs UpdateRecordsResponse's fields from required parameters


