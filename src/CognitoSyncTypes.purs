
module AWS.CognitoSync.Types where

import Prelude
import Data.Foreign.Class (class Decode, class Encode)
import Data.Foreign.Generic (defaultOptions, genericDecode, genericEncode)
import Data.Foreign.Generic.Types (Options)
import Data.Generic.Rep (class Generic)
import Data.Generic.Rep.Show (genericShow)
import Data.Maybe (Maybe(..))
import Data.Newtype (class Newtype)
import Data.StrMap (StrMap) as StrMap

import AWS.Request.Types as Types

options :: Options
options = defaultOptions { unwrapSingleConstructors = true }


-- | An exception thrown when a bulk publish operation is requested less than 24 hours after a previous bulk publish operation completed successfully.
newtype AlreadyStreamedException = AlreadyStreamedException 
  { "message" :: (ExceptionMessage)
  }
derive instance newtypeAlreadyStreamedException :: Newtype AlreadyStreamedException _
derive instance repGenericAlreadyStreamedException :: Generic AlreadyStreamedException _
instance showAlreadyStreamedException :: Show AlreadyStreamedException where show = genericShow
instance decodeAlreadyStreamedException :: Decode AlreadyStreamedException where decode = genericDecode options
instance encodeAlreadyStreamedException :: Encode AlreadyStreamedException where encode = genericEncode options

-- | Constructs AlreadyStreamedException from required parameters
newAlreadyStreamedException :: ExceptionMessage -> AlreadyStreamedException
newAlreadyStreamedException _message = AlreadyStreamedException { "message": _message }

-- | Constructs AlreadyStreamedException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newAlreadyStreamedException' :: ExceptionMessage -> ( { "message" :: (ExceptionMessage) } -> {"message" :: (ExceptionMessage) } ) -> AlreadyStreamedException
newAlreadyStreamedException' _message customize = (AlreadyStreamedException <<< customize) { "message": _message }



newtype ApplicationArn = ApplicationArn String
derive instance newtypeApplicationArn :: Newtype ApplicationArn _
derive instance repGenericApplicationArn :: Generic ApplicationArn _
instance showApplicationArn :: Show ApplicationArn where show = genericShow
instance decodeApplicationArn :: Decode ApplicationArn where decode = genericDecode options
instance encodeApplicationArn :: Encode ApplicationArn where encode = genericEncode options



newtype ApplicationArnList = ApplicationArnList (Array ApplicationArn)
derive instance newtypeApplicationArnList :: Newtype ApplicationArnList _
derive instance repGenericApplicationArnList :: Generic ApplicationArnList _
instance showApplicationArnList :: Show ApplicationArnList where show = genericShow
instance decodeApplicationArnList :: Decode ApplicationArnList where decode = genericDecode options
instance encodeApplicationArnList :: Encode ApplicationArnList where encode = genericEncode options



newtype AssumeRoleArn = AssumeRoleArn String
derive instance newtypeAssumeRoleArn :: Newtype AssumeRoleArn _
derive instance repGenericAssumeRoleArn :: Generic AssumeRoleArn _
instance showAssumeRoleArn :: Show AssumeRoleArn where show = genericShow
instance decodeAssumeRoleArn :: Decode AssumeRoleArn where decode = genericDecode options
instance encodeAssumeRoleArn :: Encode AssumeRoleArn where encode = genericEncode options



-- | The input for the BulkPublish operation.
newtype BulkPublishRequest = BulkPublishRequest 
  { "IdentityPoolId" :: (IdentityPoolId)
  }
derive instance newtypeBulkPublishRequest :: Newtype BulkPublishRequest _
derive instance repGenericBulkPublishRequest :: Generic BulkPublishRequest _
instance showBulkPublishRequest :: Show BulkPublishRequest where show = genericShow
instance decodeBulkPublishRequest :: Decode BulkPublishRequest where decode = genericDecode options
instance encodeBulkPublishRequest :: Encode BulkPublishRequest where encode = genericEncode options

-- | Constructs BulkPublishRequest from required parameters
newBulkPublishRequest :: IdentityPoolId -> BulkPublishRequest
newBulkPublishRequest _IdentityPoolId = BulkPublishRequest { "IdentityPoolId": _IdentityPoolId }

-- | Constructs BulkPublishRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newBulkPublishRequest' :: IdentityPoolId -> ( { "IdentityPoolId" :: (IdentityPoolId) } -> {"IdentityPoolId" :: (IdentityPoolId) } ) -> BulkPublishRequest
newBulkPublishRequest' _IdentityPoolId customize = (BulkPublishRequest <<< customize) { "IdentityPoolId": _IdentityPoolId }



-- | The output for the BulkPublish operation.
newtype BulkPublishResponse = BulkPublishResponse 
  { "IdentityPoolId" :: Maybe (IdentityPoolId)
  }
derive instance newtypeBulkPublishResponse :: Newtype BulkPublishResponse _
derive instance repGenericBulkPublishResponse :: Generic BulkPublishResponse _
instance showBulkPublishResponse :: Show BulkPublishResponse where show = genericShow
instance decodeBulkPublishResponse :: Decode BulkPublishResponse where decode = genericDecode options
instance encodeBulkPublishResponse :: Encode BulkPublishResponse where encode = genericEncode options

-- | Constructs BulkPublishResponse from required parameters
newBulkPublishResponse :: BulkPublishResponse
newBulkPublishResponse  = BulkPublishResponse { "IdentityPoolId": Nothing }

-- | Constructs BulkPublishResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newBulkPublishResponse' :: ( { "IdentityPoolId" :: Maybe (IdentityPoolId) } -> {"IdentityPoolId" :: Maybe (IdentityPoolId) } ) -> BulkPublishResponse
newBulkPublishResponse'  customize = (BulkPublishResponse <<< customize) { "IdentityPoolId": Nothing }



newtype BulkPublishStatus = BulkPublishStatus String
derive instance newtypeBulkPublishStatus :: Newtype BulkPublishStatus _
derive instance repGenericBulkPublishStatus :: Generic BulkPublishStatus _
instance showBulkPublishStatus :: Show BulkPublishStatus where show = genericShow
instance decodeBulkPublishStatus :: Decode BulkPublishStatus where decode = genericDecode options
instance encodeBulkPublishStatus :: Encode BulkPublishStatus where encode = genericEncode options



newtype ClientContext = ClientContext String
derive instance newtypeClientContext :: Newtype ClientContext _
derive instance repGenericClientContext :: Generic ClientContext _
instance showClientContext :: Show ClientContext where show = genericShow
instance decodeClientContext :: Decode ClientContext where decode = genericDecode options
instance encodeClientContext :: Encode ClientContext where encode = genericEncode options



newtype CognitoEventType = CognitoEventType String
derive instance newtypeCognitoEventType :: Newtype CognitoEventType _
derive instance repGenericCognitoEventType :: Generic CognitoEventType _
instance showCognitoEventType :: Show CognitoEventType where show = genericShow
instance decodeCognitoEventType :: Decode CognitoEventType where decode = genericDecode options
instance encodeCognitoEventType :: Encode CognitoEventType where encode = genericEncode options



-- | Configuration options for configure Cognito streams.
newtype CognitoStreams = CognitoStreams 
  { "StreamName" :: Maybe (StreamName)
  , "RoleArn" :: Maybe (AssumeRoleArn)
  , "StreamingStatus" :: Maybe (StreamingStatus)
  }
derive instance newtypeCognitoStreams :: Newtype CognitoStreams _
derive instance repGenericCognitoStreams :: Generic CognitoStreams _
instance showCognitoStreams :: Show CognitoStreams where show = genericShow
instance decodeCognitoStreams :: Decode CognitoStreams where decode = genericDecode options
instance encodeCognitoStreams :: Encode CognitoStreams where encode = genericEncode options

-- | Constructs CognitoStreams from required parameters
newCognitoStreams :: CognitoStreams
newCognitoStreams  = CognitoStreams { "RoleArn": Nothing, "StreamName": Nothing, "StreamingStatus": Nothing }

-- | Constructs CognitoStreams's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCognitoStreams' :: ( { "StreamName" :: Maybe (StreamName) , "RoleArn" :: Maybe (AssumeRoleArn) , "StreamingStatus" :: Maybe (StreamingStatus) } -> {"StreamName" :: Maybe (StreamName) , "RoleArn" :: Maybe (AssumeRoleArn) , "StreamingStatus" :: Maybe (StreamingStatus) } ) -> CognitoStreams
newCognitoStreams'  customize = (CognitoStreams <<< customize) { "RoleArn": Nothing, "StreamName": Nothing, "StreamingStatus": Nothing }



-- | <p>Thrown if there are parallel requests to modify a resource.</p>
newtype ConcurrentModificationException = ConcurrentModificationException 
  { "message" :: (String)
  }
derive instance newtypeConcurrentModificationException :: Newtype ConcurrentModificationException _
derive instance repGenericConcurrentModificationException :: Generic ConcurrentModificationException _
instance showConcurrentModificationException :: Show ConcurrentModificationException where show = genericShow
instance decodeConcurrentModificationException :: Decode ConcurrentModificationException where decode = genericDecode options
instance encodeConcurrentModificationException :: Encode ConcurrentModificationException where encode = genericEncode options

-- | Constructs ConcurrentModificationException from required parameters
newConcurrentModificationException :: String -> ConcurrentModificationException
newConcurrentModificationException _message = ConcurrentModificationException { "message": _message }

-- | Constructs ConcurrentModificationException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newConcurrentModificationException' :: String -> ( { "message" :: (String) } -> {"message" :: (String) } ) -> ConcurrentModificationException
newConcurrentModificationException' _message customize = (ConcurrentModificationException <<< customize) { "message": _message }



-- | A collection of data for an identity pool. An identity pool can have multiple datasets. A dataset is per identity and can be general or associated with a particular entity in an application (like a saved game). Datasets are automatically created if they don't exist. Data is synced by dataset, and a dataset can hold up to 1MB of key-value pairs.
newtype Dataset = Dataset 
  { "IdentityId" :: Maybe (IdentityId)
  , "DatasetName" :: Maybe (DatasetName)
  , "CreationDate" :: Maybe (Date)
  , "LastModifiedDate" :: Maybe (Date)
  , "LastModifiedBy" :: Maybe (String)
  , "DataStorage" :: Maybe (Number)
  , "NumRecords" :: Maybe (Number)
  }
derive instance newtypeDataset :: Newtype Dataset _
derive instance repGenericDataset :: Generic Dataset _
instance showDataset :: Show Dataset where show = genericShow
instance decodeDataset :: Decode Dataset where decode = genericDecode options
instance encodeDataset :: Encode Dataset where encode = genericEncode options

-- | Constructs Dataset from required parameters
newDataset :: Dataset
newDataset  = Dataset { "CreationDate": Nothing, "DataStorage": Nothing, "DatasetName": Nothing, "IdentityId": Nothing, "LastModifiedBy": Nothing, "LastModifiedDate": Nothing, "NumRecords": Nothing }

-- | Constructs Dataset's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDataset' :: ( { "IdentityId" :: Maybe (IdentityId) , "DatasetName" :: Maybe (DatasetName) , "CreationDate" :: Maybe (Date) , "LastModifiedDate" :: Maybe (Date) , "LastModifiedBy" :: Maybe (String) , "DataStorage" :: Maybe (Number) , "NumRecords" :: Maybe (Number) } -> {"IdentityId" :: Maybe (IdentityId) , "DatasetName" :: Maybe (DatasetName) , "CreationDate" :: Maybe (Date) , "LastModifiedDate" :: Maybe (Date) , "LastModifiedBy" :: Maybe (String) , "DataStorage" :: Maybe (Number) , "NumRecords" :: Maybe (Number) } ) -> Dataset
newDataset'  customize = (Dataset <<< customize) { "CreationDate": Nothing, "DataStorage": Nothing, "DatasetName": Nothing, "IdentityId": Nothing, "LastModifiedBy": Nothing, "LastModifiedDate": Nothing, "NumRecords": Nothing }



newtype DatasetList = DatasetList (Array Dataset)
derive instance newtypeDatasetList :: Newtype DatasetList _
derive instance repGenericDatasetList :: Generic DatasetList _
instance showDatasetList :: Show DatasetList where show = genericShow
instance decodeDatasetList :: Decode DatasetList where decode = genericDecode options
instance encodeDatasetList :: Encode DatasetList where encode = genericEncode options



newtype DatasetName = DatasetName String
derive instance newtypeDatasetName :: Newtype DatasetName _
derive instance repGenericDatasetName :: Generic DatasetName _
instance showDatasetName :: Show DatasetName where show = genericShow
instance decodeDatasetName :: Decode DatasetName where decode = genericDecode options
instance encodeDatasetName :: Encode DatasetName where encode = genericEncode options



newtype Date = Date Types.Timestamp
derive instance newtypeDate :: Newtype Date _
derive instance repGenericDate :: Generic Date _
instance showDate :: Show Date where show = genericShow
instance decodeDate :: Decode Date where decode = genericDecode options
instance encodeDate :: Encode Date where encode = genericEncode options



-- | A request to delete the specific dataset.
newtype DeleteDatasetRequest = DeleteDatasetRequest 
  { "IdentityPoolId" :: (IdentityPoolId)
  , "IdentityId" :: (IdentityId)
  , "DatasetName" :: (DatasetName)
  }
derive instance newtypeDeleteDatasetRequest :: Newtype DeleteDatasetRequest _
derive instance repGenericDeleteDatasetRequest :: Generic DeleteDatasetRequest _
instance showDeleteDatasetRequest :: Show DeleteDatasetRequest where show = genericShow
instance decodeDeleteDatasetRequest :: Decode DeleteDatasetRequest where decode = genericDecode options
instance encodeDeleteDatasetRequest :: Encode DeleteDatasetRequest where encode = genericEncode options

-- | Constructs DeleteDatasetRequest from required parameters
newDeleteDatasetRequest :: DatasetName -> IdentityId -> IdentityPoolId -> DeleteDatasetRequest
newDeleteDatasetRequest _DatasetName _IdentityId _IdentityPoolId = DeleteDatasetRequest { "DatasetName": _DatasetName, "IdentityId": _IdentityId, "IdentityPoolId": _IdentityPoolId }

-- | Constructs DeleteDatasetRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeleteDatasetRequest' :: DatasetName -> IdentityId -> IdentityPoolId -> ( { "IdentityPoolId" :: (IdentityPoolId) , "IdentityId" :: (IdentityId) , "DatasetName" :: (DatasetName) } -> {"IdentityPoolId" :: (IdentityPoolId) , "IdentityId" :: (IdentityId) , "DatasetName" :: (DatasetName) } ) -> DeleteDatasetRequest
newDeleteDatasetRequest' _DatasetName _IdentityId _IdentityPoolId customize = (DeleteDatasetRequest <<< customize) { "DatasetName": _DatasetName, "IdentityId": _IdentityId, "IdentityPoolId": _IdentityPoolId }



-- | Response to a successful DeleteDataset request.
newtype DeleteDatasetResponse = DeleteDatasetResponse 
  { "Dataset" :: Maybe (Dataset)
  }
derive instance newtypeDeleteDatasetResponse :: Newtype DeleteDatasetResponse _
derive instance repGenericDeleteDatasetResponse :: Generic DeleteDatasetResponse _
instance showDeleteDatasetResponse :: Show DeleteDatasetResponse where show = genericShow
instance decodeDeleteDatasetResponse :: Decode DeleteDatasetResponse where decode = genericDecode options
instance encodeDeleteDatasetResponse :: Encode DeleteDatasetResponse where encode = genericEncode options

-- | Constructs DeleteDatasetResponse from required parameters
newDeleteDatasetResponse :: DeleteDatasetResponse
newDeleteDatasetResponse  = DeleteDatasetResponse { "Dataset": Nothing }

-- | Constructs DeleteDatasetResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeleteDatasetResponse' :: ( { "Dataset" :: Maybe (Dataset) } -> {"Dataset" :: Maybe (Dataset) } ) -> DeleteDatasetResponse
newDeleteDatasetResponse'  customize = (DeleteDatasetResponse <<< customize) { "Dataset": Nothing }



-- | A request for meta data about a dataset (creation date, number of records, size) by owner and dataset name.
newtype DescribeDatasetRequest = DescribeDatasetRequest 
  { "IdentityPoolId" :: (IdentityPoolId)
  , "IdentityId" :: (IdentityId)
  , "DatasetName" :: (DatasetName)
  }
derive instance newtypeDescribeDatasetRequest :: Newtype DescribeDatasetRequest _
derive instance repGenericDescribeDatasetRequest :: Generic DescribeDatasetRequest _
instance showDescribeDatasetRequest :: Show DescribeDatasetRequest where show = genericShow
instance decodeDescribeDatasetRequest :: Decode DescribeDatasetRequest where decode = genericDecode options
instance encodeDescribeDatasetRequest :: Encode DescribeDatasetRequest where encode = genericEncode options

-- | Constructs DescribeDatasetRequest from required parameters
newDescribeDatasetRequest :: DatasetName -> IdentityId -> IdentityPoolId -> DescribeDatasetRequest
newDescribeDatasetRequest _DatasetName _IdentityId _IdentityPoolId = DescribeDatasetRequest { "DatasetName": _DatasetName, "IdentityId": _IdentityId, "IdentityPoolId": _IdentityPoolId }

-- | Constructs DescribeDatasetRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeDatasetRequest' :: DatasetName -> IdentityId -> IdentityPoolId -> ( { "IdentityPoolId" :: (IdentityPoolId) , "IdentityId" :: (IdentityId) , "DatasetName" :: (DatasetName) } -> {"IdentityPoolId" :: (IdentityPoolId) , "IdentityId" :: (IdentityId) , "DatasetName" :: (DatasetName) } ) -> DescribeDatasetRequest
newDescribeDatasetRequest' _DatasetName _IdentityId _IdentityPoolId customize = (DescribeDatasetRequest <<< customize) { "DatasetName": _DatasetName, "IdentityId": _IdentityId, "IdentityPoolId": _IdentityPoolId }



-- | Response to a successful DescribeDataset request.
newtype DescribeDatasetResponse = DescribeDatasetResponse 
  { "Dataset" :: Maybe (Dataset)
  }
derive instance newtypeDescribeDatasetResponse :: Newtype DescribeDatasetResponse _
derive instance repGenericDescribeDatasetResponse :: Generic DescribeDatasetResponse _
instance showDescribeDatasetResponse :: Show DescribeDatasetResponse where show = genericShow
instance decodeDescribeDatasetResponse :: Decode DescribeDatasetResponse where decode = genericDecode options
instance encodeDescribeDatasetResponse :: Encode DescribeDatasetResponse where encode = genericEncode options

-- | Constructs DescribeDatasetResponse from required parameters
newDescribeDatasetResponse :: DescribeDatasetResponse
newDescribeDatasetResponse  = DescribeDatasetResponse { "Dataset": Nothing }

-- | Constructs DescribeDatasetResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeDatasetResponse' :: ( { "Dataset" :: Maybe (Dataset) } -> {"Dataset" :: Maybe (Dataset) } ) -> DescribeDatasetResponse
newDescribeDatasetResponse'  customize = (DescribeDatasetResponse <<< customize) { "Dataset": Nothing }



-- | A request for usage information about the identity pool.
newtype DescribeIdentityPoolUsageRequest = DescribeIdentityPoolUsageRequest 
  { "IdentityPoolId" :: (IdentityPoolId)
  }
derive instance newtypeDescribeIdentityPoolUsageRequest :: Newtype DescribeIdentityPoolUsageRequest _
derive instance repGenericDescribeIdentityPoolUsageRequest :: Generic DescribeIdentityPoolUsageRequest _
instance showDescribeIdentityPoolUsageRequest :: Show DescribeIdentityPoolUsageRequest where show = genericShow
instance decodeDescribeIdentityPoolUsageRequest :: Decode DescribeIdentityPoolUsageRequest where decode = genericDecode options
instance encodeDescribeIdentityPoolUsageRequest :: Encode DescribeIdentityPoolUsageRequest where encode = genericEncode options

-- | Constructs DescribeIdentityPoolUsageRequest from required parameters
newDescribeIdentityPoolUsageRequest :: IdentityPoolId -> DescribeIdentityPoolUsageRequest
newDescribeIdentityPoolUsageRequest _IdentityPoolId = DescribeIdentityPoolUsageRequest { "IdentityPoolId": _IdentityPoolId }

-- | Constructs DescribeIdentityPoolUsageRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeIdentityPoolUsageRequest' :: IdentityPoolId -> ( { "IdentityPoolId" :: (IdentityPoolId) } -> {"IdentityPoolId" :: (IdentityPoolId) } ) -> DescribeIdentityPoolUsageRequest
newDescribeIdentityPoolUsageRequest' _IdentityPoolId customize = (DescribeIdentityPoolUsageRequest <<< customize) { "IdentityPoolId": _IdentityPoolId }



-- | Response to a successful DescribeIdentityPoolUsage request.
newtype DescribeIdentityPoolUsageResponse = DescribeIdentityPoolUsageResponse 
  { "IdentityPoolUsage" :: Maybe (IdentityPoolUsage)
  }
derive instance newtypeDescribeIdentityPoolUsageResponse :: Newtype DescribeIdentityPoolUsageResponse _
derive instance repGenericDescribeIdentityPoolUsageResponse :: Generic DescribeIdentityPoolUsageResponse _
instance showDescribeIdentityPoolUsageResponse :: Show DescribeIdentityPoolUsageResponse where show = genericShow
instance decodeDescribeIdentityPoolUsageResponse :: Decode DescribeIdentityPoolUsageResponse where decode = genericDecode options
instance encodeDescribeIdentityPoolUsageResponse :: Encode DescribeIdentityPoolUsageResponse where encode = genericEncode options

-- | Constructs DescribeIdentityPoolUsageResponse from required parameters
newDescribeIdentityPoolUsageResponse :: DescribeIdentityPoolUsageResponse
newDescribeIdentityPoolUsageResponse  = DescribeIdentityPoolUsageResponse { "IdentityPoolUsage": Nothing }

-- | Constructs DescribeIdentityPoolUsageResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeIdentityPoolUsageResponse' :: ( { "IdentityPoolUsage" :: Maybe (IdentityPoolUsage) } -> {"IdentityPoolUsage" :: Maybe (IdentityPoolUsage) } ) -> DescribeIdentityPoolUsageResponse
newDescribeIdentityPoolUsageResponse'  customize = (DescribeIdentityPoolUsageResponse <<< customize) { "IdentityPoolUsage": Nothing }



-- | A request for information about the usage of an identity pool.
newtype DescribeIdentityUsageRequest = DescribeIdentityUsageRequest 
  { "IdentityPoolId" :: (IdentityPoolId)
  , "IdentityId" :: (IdentityId)
  }
derive instance newtypeDescribeIdentityUsageRequest :: Newtype DescribeIdentityUsageRequest _
derive instance repGenericDescribeIdentityUsageRequest :: Generic DescribeIdentityUsageRequest _
instance showDescribeIdentityUsageRequest :: Show DescribeIdentityUsageRequest where show = genericShow
instance decodeDescribeIdentityUsageRequest :: Decode DescribeIdentityUsageRequest where decode = genericDecode options
instance encodeDescribeIdentityUsageRequest :: Encode DescribeIdentityUsageRequest where encode = genericEncode options

-- | Constructs DescribeIdentityUsageRequest from required parameters
newDescribeIdentityUsageRequest :: IdentityId -> IdentityPoolId -> DescribeIdentityUsageRequest
newDescribeIdentityUsageRequest _IdentityId _IdentityPoolId = DescribeIdentityUsageRequest { "IdentityId": _IdentityId, "IdentityPoolId": _IdentityPoolId }

-- | Constructs DescribeIdentityUsageRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeIdentityUsageRequest' :: IdentityId -> IdentityPoolId -> ( { "IdentityPoolId" :: (IdentityPoolId) , "IdentityId" :: (IdentityId) } -> {"IdentityPoolId" :: (IdentityPoolId) , "IdentityId" :: (IdentityId) } ) -> DescribeIdentityUsageRequest
newDescribeIdentityUsageRequest' _IdentityId _IdentityPoolId customize = (DescribeIdentityUsageRequest <<< customize) { "IdentityId": _IdentityId, "IdentityPoolId": _IdentityPoolId }



-- | The response to a successful DescribeIdentityUsage request.
newtype DescribeIdentityUsageResponse = DescribeIdentityUsageResponse 
  { "IdentityUsage" :: Maybe (IdentityUsage)
  }
derive instance newtypeDescribeIdentityUsageResponse :: Newtype DescribeIdentityUsageResponse _
derive instance repGenericDescribeIdentityUsageResponse :: Generic DescribeIdentityUsageResponse _
instance showDescribeIdentityUsageResponse :: Show DescribeIdentityUsageResponse where show = genericShow
instance decodeDescribeIdentityUsageResponse :: Decode DescribeIdentityUsageResponse where decode = genericDecode options
instance encodeDescribeIdentityUsageResponse :: Encode DescribeIdentityUsageResponse where encode = genericEncode options

-- | Constructs DescribeIdentityUsageResponse from required parameters
newDescribeIdentityUsageResponse :: DescribeIdentityUsageResponse
newDescribeIdentityUsageResponse  = DescribeIdentityUsageResponse { "IdentityUsage": Nothing }

-- | Constructs DescribeIdentityUsageResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeIdentityUsageResponse' :: ( { "IdentityUsage" :: Maybe (IdentityUsage) } -> {"IdentityUsage" :: Maybe (IdentityUsage) } ) -> DescribeIdentityUsageResponse
newDescribeIdentityUsageResponse'  customize = (DescribeIdentityUsageResponse <<< customize) { "IdentityUsage": Nothing }



newtype DeviceId = DeviceId String
derive instance newtypeDeviceId :: Newtype DeviceId _
derive instance repGenericDeviceId :: Generic DeviceId _
instance showDeviceId :: Show DeviceId where show = genericShow
instance decodeDeviceId :: Decode DeviceId where decode = genericDecode options
instance encodeDeviceId :: Encode DeviceId where encode = genericEncode options



-- | An exception thrown when there is an IN_PROGRESS bulk publish operation for the given identity pool.
newtype DuplicateRequestException = DuplicateRequestException 
  { "message" :: (ExceptionMessage)
  }
derive instance newtypeDuplicateRequestException :: Newtype DuplicateRequestException _
derive instance repGenericDuplicateRequestException :: Generic DuplicateRequestException _
instance showDuplicateRequestException :: Show DuplicateRequestException where show = genericShow
instance decodeDuplicateRequestException :: Decode DuplicateRequestException where decode = genericDecode options
instance encodeDuplicateRequestException :: Encode DuplicateRequestException where encode = genericEncode options

-- | Constructs DuplicateRequestException from required parameters
newDuplicateRequestException :: ExceptionMessage -> DuplicateRequestException
newDuplicateRequestException _message = DuplicateRequestException { "message": _message }

-- | Constructs DuplicateRequestException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDuplicateRequestException' :: ExceptionMessage -> ( { "message" :: (ExceptionMessage) } -> {"message" :: (ExceptionMessage) } ) -> DuplicateRequestException
newDuplicateRequestException' _message customize = (DuplicateRequestException <<< customize) { "message": _message }



newtype Events = Events (StrMap.StrMap LambdaFunctionArn)
derive instance newtypeEvents :: Newtype Events _
derive instance repGenericEvents :: Generic Events _
instance showEvents :: Show Events where show = genericShow
instance decodeEvents :: Decode Events where decode = genericDecode options
instance encodeEvents :: Encode Events where encode = genericEncode options



newtype ExceptionMessage = ExceptionMessage String
derive instance newtypeExceptionMessage :: Newtype ExceptionMessage _
derive instance repGenericExceptionMessage :: Generic ExceptionMessage _
instance showExceptionMessage :: Show ExceptionMessage where show = genericShow
instance decodeExceptionMessage :: Decode ExceptionMessage where decode = genericDecode options
instance encodeExceptionMessage :: Encode ExceptionMessage where encode = genericEncode options



-- | The input for the GetBulkPublishDetails operation.
newtype GetBulkPublishDetailsRequest = GetBulkPublishDetailsRequest 
  { "IdentityPoolId" :: (IdentityPoolId)
  }
derive instance newtypeGetBulkPublishDetailsRequest :: Newtype GetBulkPublishDetailsRequest _
derive instance repGenericGetBulkPublishDetailsRequest :: Generic GetBulkPublishDetailsRequest _
instance showGetBulkPublishDetailsRequest :: Show GetBulkPublishDetailsRequest where show = genericShow
instance decodeGetBulkPublishDetailsRequest :: Decode GetBulkPublishDetailsRequest where decode = genericDecode options
instance encodeGetBulkPublishDetailsRequest :: Encode GetBulkPublishDetailsRequest where encode = genericEncode options

-- | Constructs GetBulkPublishDetailsRequest from required parameters
newGetBulkPublishDetailsRequest :: IdentityPoolId -> GetBulkPublishDetailsRequest
newGetBulkPublishDetailsRequest _IdentityPoolId = GetBulkPublishDetailsRequest { "IdentityPoolId": _IdentityPoolId }

-- | Constructs GetBulkPublishDetailsRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetBulkPublishDetailsRequest' :: IdentityPoolId -> ( { "IdentityPoolId" :: (IdentityPoolId) } -> {"IdentityPoolId" :: (IdentityPoolId) } ) -> GetBulkPublishDetailsRequest
newGetBulkPublishDetailsRequest' _IdentityPoolId customize = (GetBulkPublishDetailsRequest <<< customize) { "IdentityPoolId": _IdentityPoolId }



-- | The output for the GetBulkPublishDetails operation.
newtype GetBulkPublishDetailsResponse = GetBulkPublishDetailsResponse 
  { "IdentityPoolId" :: Maybe (IdentityPoolId)
  , "BulkPublishStartTime" :: Maybe (Date)
  , "BulkPublishCompleteTime" :: Maybe (Date)
  , "BulkPublishStatus" :: Maybe (BulkPublishStatus)
  , "FailureMessage" :: Maybe (String)
  }
derive instance newtypeGetBulkPublishDetailsResponse :: Newtype GetBulkPublishDetailsResponse _
derive instance repGenericGetBulkPublishDetailsResponse :: Generic GetBulkPublishDetailsResponse _
instance showGetBulkPublishDetailsResponse :: Show GetBulkPublishDetailsResponse where show = genericShow
instance decodeGetBulkPublishDetailsResponse :: Decode GetBulkPublishDetailsResponse where decode = genericDecode options
instance encodeGetBulkPublishDetailsResponse :: Encode GetBulkPublishDetailsResponse where encode = genericEncode options

-- | Constructs GetBulkPublishDetailsResponse from required parameters
newGetBulkPublishDetailsResponse :: GetBulkPublishDetailsResponse
newGetBulkPublishDetailsResponse  = GetBulkPublishDetailsResponse { "BulkPublishCompleteTime": Nothing, "BulkPublishStartTime": Nothing, "BulkPublishStatus": Nothing, "FailureMessage": Nothing, "IdentityPoolId": Nothing }

-- | Constructs GetBulkPublishDetailsResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetBulkPublishDetailsResponse' :: ( { "IdentityPoolId" :: Maybe (IdentityPoolId) , "BulkPublishStartTime" :: Maybe (Date) , "BulkPublishCompleteTime" :: Maybe (Date) , "BulkPublishStatus" :: Maybe (BulkPublishStatus) , "FailureMessage" :: Maybe (String) } -> {"IdentityPoolId" :: Maybe (IdentityPoolId) , "BulkPublishStartTime" :: Maybe (Date) , "BulkPublishCompleteTime" :: Maybe (Date) , "BulkPublishStatus" :: Maybe (BulkPublishStatus) , "FailureMessage" :: Maybe (String) } ) -> GetBulkPublishDetailsResponse
newGetBulkPublishDetailsResponse'  customize = (GetBulkPublishDetailsResponse <<< customize) { "BulkPublishCompleteTime": Nothing, "BulkPublishStartTime": Nothing, "BulkPublishStatus": Nothing, "FailureMessage": Nothing, "IdentityPoolId": Nothing }



-- | <p>A request for a list of the configured Cognito Events</p>
newtype GetCognitoEventsRequest = GetCognitoEventsRequest 
  { "IdentityPoolId" :: (IdentityPoolId)
  }
derive instance newtypeGetCognitoEventsRequest :: Newtype GetCognitoEventsRequest _
derive instance repGenericGetCognitoEventsRequest :: Generic GetCognitoEventsRequest _
instance showGetCognitoEventsRequest :: Show GetCognitoEventsRequest where show = genericShow
instance decodeGetCognitoEventsRequest :: Decode GetCognitoEventsRequest where decode = genericDecode options
instance encodeGetCognitoEventsRequest :: Encode GetCognitoEventsRequest where encode = genericEncode options

-- | Constructs GetCognitoEventsRequest from required parameters
newGetCognitoEventsRequest :: IdentityPoolId -> GetCognitoEventsRequest
newGetCognitoEventsRequest _IdentityPoolId = GetCognitoEventsRequest { "IdentityPoolId": _IdentityPoolId }

-- | Constructs GetCognitoEventsRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetCognitoEventsRequest' :: IdentityPoolId -> ( { "IdentityPoolId" :: (IdentityPoolId) } -> {"IdentityPoolId" :: (IdentityPoolId) } ) -> GetCognitoEventsRequest
newGetCognitoEventsRequest' _IdentityPoolId customize = (GetCognitoEventsRequest <<< customize) { "IdentityPoolId": _IdentityPoolId }



-- | <p>The response from the GetCognitoEvents request</p>
newtype GetCognitoEventsResponse = GetCognitoEventsResponse 
  { "Events" :: Maybe (Events)
  }
derive instance newtypeGetCognitoEventsResponse :: Newtype GetCognitoEventsResponse _
derive instance repGenericGetCognitoEventsResponse :: Generic GetCognitoEventsResponse _
instance showGetCognitoEventsResponse :: Show GetCognitoEventsResponse where show = genericShow
instance decodeGetCognitoEventsResponse :: Decode GetCognitoEventsResponse where decode = genericDecode options
instance encodeGetCognitoEventsResponse :: Encode GetCognitoEventsResponse where encode = genericEncode options

-- | Constructs GetCognitoEventsResponse from required parameters
newGetCognitoEventsResponse :: GetCognitoEventsResponse
newGetCognitoEventsResponse  = GetCognitoEventsResponse { "Events": Nothing }

-- | Constructs GetCognitoEventsResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetCognitoEventsResponse' :: ( { "Events" :: Maybe (Events) } -> {"Events" :: Maybe (Events) } ) -> GetCognitoEventsResponse
newGetCognitoEventsResponse'  customize = (GetCognitoEventsResponse <<< customize) { "Events": Nothing }



-- | <p>The input for the GetIdentityPoolConfiguration operation.</p>
newtype GetIdentityPoolConfigurationRequest = GetIdentityPoolConfigurationRequest 
  { "IdentityPoolId" :: (IdentityPoolId)
  }
derive instance newtypeGetIdentityPoolConfigurationRequest :: Newtype GetIdentityPoolConfigurationRequest _
derive instance repGenericGetIdentityPoolConfigurationRequest :: Generic GetIdentityPoolConfigurationRequest _
instance showGetIdentityPoolConfigurationRequest :: Show GetIdentityPoolConfigurationRequest where show = genericShow
instance decodeGetIdentityPoolConfigurationRequest :: Decode GetIdentityPoolConfigurationRequest where decode = genericDecode options
instance encodeGetIdentityPoolConfigurationRequest :: Encode GetIdentityPoolConfigurationRequest where encode = genericEncode options

-- | Constructs GetIdentityPoolConfigurationRequest from required parameters
newGetIdentityPoolConfigurationRequest :: IdentityPoolId -> GetIdentityPoolConfigurationRequest
newGetIdentityPoolConfigurationRequest _IdentityPoolId = GetIdentityPoolConfigurationRequest { "IdentityPoolId": _IdentityPoolId }

-- | Constructs GetIdentityPoolConfigurationRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetIdentityPoolConfigurationRequest' :: IdentityPoolId -> ( { "IdentityPoolId" :: (IdentityPoolId) } -> {"IdentityPoolId" :: (IdentityPoolId) } ) -> GetIdentityPoolConfigurationRequest
newGetIdentityPoolConfigurationRequest' _IdentityPoolId customize = (GetIdentityPoolConfigurationRequest <<< customize) { "IdentityPoolId": _IdentityPoolId }



-- | <p>The output for the GetIdentityPoolConfiguration operation.</p>
newtype GetIdentityPoolConfigurationResponse = GetIdentityPoolConfigurationResponse 
  { "IdentityPoolId" :: Maybe (IdentityPoolId)
  , "PushSync" :: Maybe (PushSync)
  , "CognitoStreams" :: Maybe (CognitoStreams)
  }
derive instance newtypeGetIdentityPoolConfigurationResponse :: Newtype GetIdentityPoolConfigurationResponse _
derive instance repGenericGetIdentityPoolConfigurationResponse :: Generic GetIdentityPoolConfigurationResponse _
instance showGetIdentityPoolConfigurationResponse :: Show GetIdentityPoolConfigurationResponse where show = genericShow
instance decodeGetIdentityPoolConfigurationResponse :: Decode GetIdentityPoolConfigurationResponse where decode = genericDecode options
instance encodeGetIdentityPoolConfigurationResponse :: Encode GetIdentityPoolConfigurationResponse where encode = genericEncode options

-- | Constructs GetIdentityPoolConfigurationResponse from required parameters
newGetIdentityPoolConfigurationResponse :: GetIdentityPoolConfigurationResponse
newGetIdentityPoolConfigurationResponse  = GetIdentityPoolConfigurationResponse { "CognitoStreams": Nothing, "IdentityPoolId": Nothing, "PushSync": Nothing }

-- | Constructs GetIdentityPoolConfigurationResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetIdentityPoolConfigurationResponse' :: ( { "IdentityPoolId" :: Maybe (IdentityPoolId) , "PushSync" :: Maybe (PushSync) , "CognitoStreams" :: Maybe (CognitoStreams) } -> {"IdentityPoolId" :: Maybe (IdentityPoolId) , "PushSync" :: Maybe (PushSync) , "CognitoStreams" :: Maybe (CognitoStreams) } ) -> GetIdentityPoolConfigurationResponse
newGetIdentityPoolConfigurationResponse'  customize = (GetIdentityPoolConfigurationResponse <<< customize) { "CognitoStreams": Nothing, "IdentityPoolId": Nothing, "PushSync": Nothing }



newtype IdentityId = IdentityId String
derive instance newtypeIdentityId :: Newtype IdentityId _
derive instance repGenericIdentityId :: Generic IdentityId _
instance showIdentityId :: Show IdentityId where show = genericShow
instance decodeIdentityId :: Decode IdentityId where decode = genericDecode options
instance encodeIdentityId :: Encode IdentityId where encode = genericEncode options



newtype IdentityPoolId = IdentityPoolId String
derive instance newtypeIdentityPoolId :: Newtype IdentityPoolId _
derive instance repGenericIdentityPoolId :: Generic IdentityPoolId _
instance showIdentityPoolId :: Show IdentityPoolId where show = genericShow
instance decodeIdentityPoolId :: Decode IdentityPoolId where decode = genericDecode options
instance encodeIdentityPoolId :: Encode IdentityPoolId where encode = genericEncode options



-- | Usage information for the identity pool.
newtype IdentityPoolUsage = IdentityPoolUsage 
  { "IdentityPoolId" :: Maybe (IdentityPoolId)
  , "SyncSessionsCount" :: Maybe (Number)
  , "DataStorage" :: Maybe (Number)
  , "LastModifiedDate" :: Maybe (Date)
  }
derive instance newtypeIdentityPoolUsage :: Newtype IdentityPoolUsage _
derive instance repGenericIdentityPoolUsage :: Generic IdentityPoolUsage _
instance showIdentityPoolUsage :: Show IdentityPoolUsage where show = genericShow
instance decodeIdentityPoolUsage :: Decode IdentityPoolUsage where decode = genericDecode options
instance encodeIdentityPoolUsage :: Encode IdentityPoolUsage where encode = genericEncode options

-- | Constructs IdentityPoolUsage from required parameters
newIdentityPoolUsage :: IdentityPoolUsage
newIdentityPoolUsage  = IdentityPoolUsage { "DataStorage": Nothing, "IdentityPoolId": Nothing, "LastModifiedDate": Nothing, "SyncSessionsCount": Nothing }

-- | Constructs IdentityPoolUsage's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newIdentityPoolUsage' :: ( { "IdentityPoolId" :: Maybe (IdentityPoolId) , "SyncSessionsCount" :: Maybe (Number) , "DataStorage" :: Maybe (Number) , "LastModifiedDate" :: Maybe (Date) } -> {"IdentityPoolId" :: Maybe (IdentityPoolId) , "SyncSessionsCount" :: Maybe (Number) , "DataStorage" :: Maybe (Number) , "LastModifiedDate" :: Maybe (Date) } ) -> IdentityPoolUsage
newIdentityPoolUsage'  customize = (IdentityPoolUsage <<< customize) { "DataStorage": Nothing, "IdentityPoolId": Nothing, "LastModifiedDate": Nothing, "SyncSessionsCount": Nothing }



newtype IdentityPoolUsageList = IdentityPoolUsageList (Array IdentityPoolUsage)
derive instance newtypeIdentityPoolUsageList :: Newtype IdentityPoolUsageList _
derive instance repGenericIdentityPoolUsageList :: Generic IdentityPoolUsageList _
instance showIdentityPoolUsageList :: Show IdentityPoolUsageList where show = genericShow
instance decodeIdentityPoolUsageList :: Decode IdentityPoolUsageList where decode = genericDecode options
instance encodeIdentityPoolUsageList :: Encode IdentityPoolUsageList where encode = genericEncode options



-- | Usage information for the identity.
newtype IdentityUsage = IdentityUsage 
  { "IdentityId" :: Maybe (IdentityId)
  , "IdentityPoolId" :: Maybe (IdentityPoolId)
  , "LastModifiedDate" :: Maybe (Date)
  , "DatasetCount" :: Maybe (Int)
  , "DataStorage" :: Maybe (Number)
  }
derive instance newtypeIdentityUsage :: Newtype IdentityUsage _
derive instance repGenericIdentityUsage :: Generic IdentityUsage _
instance showIdentityUsage :: Show IdentityUsage where show = genericShow
instance decodeIdentityUsage :: Decode IdentityUsage where decode = genericDecode options
instance encodeIdentityUsage :: Encode IdentityUsage where encode = genericEncode options

-- | Constructs IdentityUsage from required parameters
newIdentityUsage :: IdentityUsage
newIdentityUsage  = IdentityUsage { "DataStorage": Nothing, "DatasetCount": Nothing, "IdentityId": Nothing, "IdentityPoolId": Nothing, "LastModifiedDate": Nothing }

-- | Constructs IdentityUsage's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newIdentityUsage' :: ( { "IdentityId" :: Maybe (IdentityId) , "IdentityPoolId" :: Maybe (IdentityPoolId) , "LastModifiedDate" :: Maybe (Date) , "DatasetCount" :: Maybe (Int) , "DataStorage" :: Maybe (Number) } -> {"IdentityId" :: Maybe (IdentityId) , "IdentityPoolId" :: Maybe (IdentityPoolId) , "LastModifiedDate" :: Maybe (Date) , "DatasetCount" :: Maybe (Int) , "DataStorage" :: Maybe (Number) } ) -> IdentityUsage
newIdentityUsage'  customize = (IdentityUsage <<< customize) { "DataStorage": Nothing, "DatasetCount": Nothing, "IdentityId": Nothing, "IdentityPoolId": Nothing, "LastModifiedDate": Nothing }



newtype IntegerString = IntegerString Int
derive instance newtypeIntegerString :: Newtype IntegerString _
derive instance repGenericIntegerString :: Generic IntegerString _
instance showIntegerString :: Show IntegerString where show = genericShow
instance decodeIntegerString :: Decode IntegerString where decode = genericDecode options
instance encodeIntegerString :: Encode IntegerString where encode = genericEncode options



-- | Indicates an internal service error.
newtype InternalErrorException = InternalErrorException 
  { "message" :: (ExceptionMessage)
  }
derive instance newtypeInternalErrorException :: Newtype InternalErrorException _
derive instance repGenericInternalErrorException :: Generic InternalErrorException _
instance showInternalErrorException :: Show InternalErrorException where show = genericShow
instance decodeInternalErrorException :: Decode InternalErrorException where decode = genericDecode options
instance encodeInternalErrorException :: Encode InternalErrorException where encode = genericEncode options

-- | Constructs InternalErrorException from required parameters
newInternalErrorException :: ExceptionMessage -> InternalErrorException
newInternalErrorException _message = InternalErrorException { "message": _message }

-- | Constructs InternalErrorException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newInternalErrorException' :: ExceptionMessage -> ( { "message" :: (ExceptionMessage) } -> {"message" :: (ExceptionMessage) } ) -> InternalErrorException
newInternalErrorException' _message customize = (InternalErrorException <<< customize) { "message": _message }



newtype InvalidConfigurationException = InvalidConfigurationException 
  { "message" :: (ExceptionMessage)
  }
derive instance newtypeInvalidConfigurationException :: Newtype InvalidConfigurationException _
derive instance repGenericInvalidConfigurationException :: Generic InvalidConfigurationException _
instance showInvalidConfigurationException :: Show InvalidConfigurationException where show = genericShow
instance decodeInvalidConfigurationException :: Decode InvalidConfigurationException where decode = genericDecode options
instance encodeInvalidConfigurationException :: Encode InvalidConfigurationException where encode = genericEncode options

-- | Constructs InvalidConfigurationException from required parameters
newInvalidConfigurationException :: ExceptionMessage -> InvalidConfigurationException
newInvalidConfigurationException _message = InvalidConfigurationException { "message": _message }

-- | Constructs InvalidConfigurationException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newInvalidConfigurationException' :: ExceptionMessage -> ( { "message" :: (ExceptionMessage) } -> {"message" :: (ExceptionMessage) } ) -> InvalidConfigurationException
newInvalidConfigurationException' _message customize = (InvalidConfigurationException <<< customize) { "message": _message }



-- | <p>The AWS Lambda function returned invalid output or an exception.</p>
newtype InvalidLambdaFunctionOutputException = InvalidLambdaFunctionOutputException 
  { "message" :: (ExceptionMessage)
  }
derive instance newtypeInvalidLambdaFunctionOutputException :: Newtype InvalidLambdaFunctionOutputException _
derive instance repGenericInvalidLambdaFunctionOutputException :: Generic InvalidLambdaFunctionOutputException _
instance showInvalidLambdaFunctionOutputException :: Show InvalidLambdaFunctionOutputException where show = genericShow
instance decodeInvalidLambdaFunctionOutputException :: Decode InvalidLambdaFunctionOutputException where decode = genericDecode options
instance encodeInvalidLambdaFunctionOutputException :: Encode InvalidLambdaFunctionOutputException where encode = genericEncode options

-- | Constructs InvalidLambdaFunctionOutputException from required parameters
newInvalidLambdaFunctionOutputException :: ExceptionMessage -> InvalidLambdaFunctionOutputException
newInvalidLambdaFunctionOutputException _message = InvalidLambdaFunctionOutputException { "message": _message }

-- | Constructs InvalidLambdaFunctionOutputException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newInvalidLambdaFunctionOutputException' :: ExceptionMessage -> ( { "message" :: (ExceptionMessage) } -> {"message" :: (ExceptionMessage) } ) -> InvalidLambdaFunctionOutputException
newInvalidLambdaFunctionOutputException' _message customize = (InvalidLambdaFunctionOutputException <<< customize) { "message": _message }



-- | Thrown when a request parameter does not comply with the associated constraints.
newtype InvalidParameterException = InvalidParameterException 
  { "message" :: (ExceptionMessage)
  }
derive instance newtypeInvalidParameterException :: Newtype InvalidParameterException _
derive instance repGenericInvalidParameterException :: Generic InvalidParameterException _
instance showInvalidParameterException :: Show InvalidParameterException where show = genericShow
instance decodeInvalidParameterException :: Decode InvalidParameterException where decode = genericDecode options
instance encodeInvalidParameterException :: Encode InvalidParameterException where encode = genericEncode options

-- | Constructs InvalidParameterException from required parameters
newInvalidParameterException :: ExceptionMessage -> InvalidParameterException
newInvalidParameterException _message = InvalidParameterException { "message": _message }

-- | Constructs InvalidParameterException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newInvalidParameterException' :: ExceptionMessage -> ( { "message" :: (ExceptionMessage) } -> {"message" :: (ExceptionMessage) } ) -> InvalidParameterException
newInvalidParameterException' _message customize = (InvalidParameterException <<< customize) { "message": _message }



newtype LambdaFunctionArn = LambdaFunctionArn String
derive instance newtypeLambdaFunctionArn :: Newtype LambdaFunctionArn _
derive instance repGenericLambdaFunctionArn :: Generic LambdaFunctionArn _
instance showLambdaFunctionArn :: Show LambdaFunctionArn where show = genericShow
instance decodeLambdaFunctionArn :: Decode LambdaFunctionArn where decode = genericDecode options
instance encodeLambdaFunctionArn :: Encode LambdaFunctionArn where encode = genericEncode options



-- | <p>AWS Lambda throttled your account, please contact AWS Support</p>
newtype LambdaThrottledException = LambdaThrottledException 
  { "message" :: (ExceptionMessage)
  }
derive instance newtypeLambdaThrottledException :: Newtype LambdaThrottledException _
derive instance repGenericLambdaThrottledException :: Generic LambdaThrottledException _
instance showLambdaThrottledException :: Show LambdaThrottledException where show = genericShow
instance decodeLambdaThrottledException :: Decode LambdaThrottledException where decode = genericDecode options
instance encodeLambdaThrottledException :: Encode LambdaThrottledException where encode = genericEncode options

-- | Constructs LambdaThrottledException from required parameters
newLambdaThrottledException :: ExceptionMessage -> LambdaThrottledException
newLambdaThrottledException _message = LambdaThrottledException { "message": _message }

-- | Constructs LambdaThrottledException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newLambdaThrottledException' :: ExceptionMessage -> ( { "message" :: (ExceptionMessage) } -> {"message" :: (ExceptionMessage) } ) -> LambdaThrottledException
newLambdaThrottledException' _message customize = (LambdaThrottledException <<< customize) { "message": _message }



-- | Thrown when the limit on the number of objects or operations has been exceeded.
newtype LimitExceededException = LimitExceededException 
  { "message" :: (ExceptionMessage)
  }
derive instance newtypeLimitExceededException :: Newtype LimitExceededException _
derive instance repGenericLimitExceededException :: Generic LimitExceededException _
instance showLimitExceededException :: Show LimitExceededException where show = genericShow
instance decodeLimitExceededException :: Decode LimitExceededException where decode = genericDecode options
instance encodeLimitExceededException :: Encode LimitExceededException where encode = genericEncode options

-- | Constructs LimitExceededException from required parameters
newLimitExceededException :: ExceptionMessage -> LimitExceededException
newLimitExceededException _message = LimitExceededException { "message": _message }

-- | Constructs LimitExceededException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newLimitExceededException' :: ExceptionMessage -> ( { "message" :: (ExceptionMessage) } -> {"message" :: (ExceptionMessage) } ) -> LimitExceededException
newLimitExceededException' _message customize = (LimitExceededException <<< customize) { "message": _message }



-- | Request for a list of datasets for an identity.
newtype ListDatasetsRequest = ListDatasetsRequest 
  { "IdentityPoolId" :: (IdentityPoolId)
  , "IdentityId" :: (IdentityId)
  , "NextToken" :: Maybe (String)
  , "MaxResults" :: Maybe (IntegerString)
  }
derive instance newtypeListDatasetsRequest :: Newtype ListDatasetsRequest _
derive instance repGenericListDatasetsRequest :: Generic ListDatasetsRequest _
instance showListDatasetsRequest :: Show ListDatasetsRequest where show = genericShow
instance decodeListDatasetsRequest :: Decode ListDatasetsRequest where decode = genericDecode options
instance encodeListDatasetsRequest :: Encode ListDatasetsRequest where encode = genericEncode options

-- | Constructs ListDatasetsRequest from required parameters
newListDatasetsRequest :: IdentityId -> IdentityPoolId -> ListDatasetsRequest
newListDatasetsRequest _IdentityId _IdentityPoolId = ListDatasetsRequest { "IdentityId": _IdentityId, "IdentityPoolId": _IdentityPoolId, "MaxResults": Nothing, "NextToken": Nothing }

-- | Constructs ListDatasetsRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListDatasetsRequest' :: IdentityId -> IdentityPoolId -> ( { "IdentityPoolId" :: (IdentityPoolId) , "IdentityId" :: (IdentityId) , "NextToken" :: Maybe (String) , "MaxResults" :: Maybe (IntegerString) } -> {"IdentityPoolId" :: (IdentityPoolId) , "IdentityId" :: (IdentityId) , "NextToken" :: Maybe (String) , "MaxResults" :: Maybe (IntegerString) } ) -> ListDatasetsRequest
newListDatasetsRequest' _IdentityId _IdentityPoolId customize = (ListDatasetsRequest <<< customize) { "IdentityId": _IdentityId, "IdentityPoolId": _IdentityPoolId, "MaxResults": Nothing, "NextToken": Nothing }



-- | Returned for a successful ListDatasets request.
newtype ListDatasetsResponse = ListDatasetsResponse 
  { "Datasets" :: Maybe (DatasetList)
  , "Count" :: Maybe (Int)
  , "NextToken" :: Maybe (String)
  }
derive instance newtypeListDatasetsResponse :: Newtype ListDatasetsResponse _
derive instance repGenericListDatasetsResponse :: Generic ListDatasetsResponse _
instance showListDatasetsResponse :: Show ListDatasetsResponse where show = genericShow
instance decodeListDatasetsResponse :: Decode ListDatasetsResponse where decode = genericDecode options
instance encodeListDatasetsResponse :: Encode ListDatasetsResponse where encode = genericEncode options

-- | Constructs ListDatasetsResponse from required parameters
newListDatasetsResponse :: ListDatasetsResponse
newListDatasetsResponse  = ListDatasetsResponse { "Count": Nothing, "Datasets": Nothing, "NextToken": Nothing }

-- | Constructs ListDatasetsResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListDatasetsResponse' :: ( { "Datasets" :: Maybe (DatasetList) , "Count" :: Maybe (Int) , "NextToken" :: Maybe (String) } -> {"Datasets" :: Maybe (DatasetList) , "Count" :: Maybe (Int) , "NextToken" :: Maybe (String) } ) -> ListDatasetsResponse
newListDatasetsResponse'  customize = (ListDatasetsResponse <<< customize) { "Count": Nothing, "Datasets": Nothing, "NextToken": Nothing }



-- | A request for usage information on an identity pool.
newtype ListIdentityPoolUsageRequest = ListIdentityPoolUsageRequest 
  { "NextToken" :: Maybe (String)
  , "MaxResults" :: Maybe (IntegerString)
  }
derive instance newtypeListIdentityPoolUsageRequest :: Newtype ListIdentityPoolUsageRequest _
derive instance repGenericListIdentityPoolUsageRequest :: Generic ListIdentityPoolUsageRequest _
instance showListIdentityPoolUsageRequest :: Show ListIdentityPoolUsageRequest where show = genericShow
instance decodeListIdentityPoolUsageRequest :: Decode ListIdentityPoolUsageRequest where decode = genericDecode options
instance encodeListIdentityPoolUsageRequest :: Encode ListIdentityPoolUsageRequest where encode = genericEncode options

-- | Constructs ListIdentityPoolUsageRequest from required parameters
newListIdentityPoolUsageRequest :: ListIdentityPoolUsageRequest
newListIdentityPoolUsageRequest  = ListIdentityPoolUsageRequest { "MaxResults": Nothing, "NextToken": Nothing }

-- | Constructs ListIdentityPoolUsageRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListIdentityPoolUsageRequest' :: ( { "NextToken" :: Maybe (String) , "MaxResults" :: Maybe (IntegerString) } -> {"NextToken" :: Maybe (String) , "MaxResults" :: Maybe (IntegerString) } ) -> ListIdentityPoolUsageRequest
newListIdentityPoolUsageRequest'  customize = (ListIdentityPoolUsageRequest <<< customize) { "MaxResults": Nothing, "NextToken": Nothing }



-- | Returned for a successful ListIdentityPoolUsage request.
newtype ListIdentityPoolUsageResponse = ListIdentityPoolUsageResponse 
  { "IdentityPoolUsages" :: Maybe (IdentityPoolUsageList)
  , "MaxResults" :: Maybe (Int)
  , "Count" :: Maybe (Int)
  , "NextToken" :: Maybe (String)
  }
derive instance newtypeListIdentityPoolUsageResponse :: Newtype ListIdentityPoolUsageResponse _
derive instance repGenericListIdentityPoolUsageResponse :: Generic ListIdentityPoolUsageResponse _
instance showListIdentityPoolUsageResponse :: Show ListIdentityPoolUsageResponse where show = genericShow
instance decodeListIdentityPoolUsageResponse :: Decode ListIdentityPoolUsageResponse where decode = genericDecode options
instance encodeListIdentityPoolUsageResponse :: Encode ListIdentityPoolUsageResponse where encode = genericEncode options

-- | Constructs ListIdentityPoolUsageResponse from required parameters
newListIdentityPoolUsageResponse :: ListIdentityPoolUsageResponse
newListIdentityPoolUsageResponse  = ListIdentityPoolUsageResponse { "Count": Nothing, "IdentityPoolUsages": Nothing, "MaxResults": Nothing, "NextToken": Nothing }

-- | Constructs ListIdentityPoolUsageResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListIdentityPoolUsageResponse' :: ( { "IdentityPoolUsages" :: Maybe (IdentityPoolUsageList) , "MaxResults" :: Maybe (Int) , "Count" :: Maybe (Int) , "NextToken" :: Maybe (String) } -> {"IdentityPoolUsages" :: Maybe (IdentityPoolUsageList) , "MaxResults" :: Maybe (Int) , "Count" :: Maybe (Int) , "NextToken" :: Maybe (String) } ) -> ListIdentityPoolUsageResponse
newListIdentityPoolUsageResponse'  customize = (ListIdentityPoolUsageResponse <<< customize) { "Count": Nothing, "IdentityPoolUsages": Nothing, "MaxResults": Nothing, "NextToken": Nothing }



-- | A request for a list of records.
newtype ListRecordsRequest = ListRecordsRequest 
  { "IdentityPoolId" :: (IdentityPoolId)
  , "IdentityId" :: (IdentityId)
  , "DatasetName" :: (DatasetName)
  , "LastSyncCount" :: Maybe (Number)
  , "NextToken" :: Maybe (String)
  , "MaxResults" :: Maybe (IntegerString)
  , "SyncSessionToken" :: Maybe (SyncSessionToken)
  }
derive instance newtypeListRecordsRequest :: Newtype ListRecordsRequest _
derive instance repGenericListRecordsRequest :: Generic ListRecordsRequest _
instance showListRecordsRequest :: Show ListRecordsRequest where show = genericShow
instance decodeListRecordsRequest :: Decode ListRecordsRequest where decode = genericDecode options
instance encodeListRecordsRequest :: Encode ListRecordsRequest where encode = genericEncode options

-- | Constructs ListRecordsRequest from required parameters
newListRecordsRequest :: DatasetName -> IdentityId -> IdentityPoolId -> ListRecordsRequest
newListRecordsRequest _DatasetName _IdentityId _IdentityPoolId = ListRecordsRequest { "DatasetName": _DatasetName, "IdentityId": _IdentityId, "IdentityPoolId": _IdentityPoolId, "LastSyncCount": Nothing, "MaxResults": Nothing, "NextToken": Nothing, "SyncSessionToken": Nothing }

-- | Constructs ListRecordsRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListRecordsRequest' :: DatasetName -> IdentityId -> IdentityPoolId -> ( { "IdentityPoolId" :: (IdentityPoolId) , "IdentityId" :: (IdentityId) , "DatasetName" :: (DatasetName) , "LastSyncCount" :: Maybe (Number) , "NextToken" :: Maybe (String) , "MaxResults" :: Maybe (IntegerString) , "SyncSessionToken" :: Maybe (SyncSessionToken) } -> {"IdentityPoolId" :: (IdentityPoolId) , "IdentityId" :: (IdentityId) , "DatasetName" :: (DatasetName) , "LastSyncCount" :: Maybe (Number) , "NextToken" :: Maybe (String) , "MaxResults" :: Maybe (IntegerString) , "SyncSessionToken" :: Maybe (SyncSessionToken) } ) -> ListRecordsRequest
newListRecordsRequest' _DatasetName _IdentityId _IdentityPoolId customize = (ListRecordsRequest <<< customize) { "DatasetName": _DatasetName, "IdentityId": _IdentityId, "IdentityPoolId": _IdentityPoolId, "LastSyncCount": Nothing, "MaxResults": Nothing, "NextToken": Nothing, "SyncSessionToken": Nothing }



-- | Returned for a successful ListRecordsRequest.
newtype ListRecordsResponse = ListRecordsResponse 
  { "Records" :: Maybe (RecordList)
  , "NextToken" :: Maybe (String)
  , "Count" :: Maybe (Int)
  , "DatasetSyncCount" :: Maybe (Number)
  , "LastModifiedBy" :: Maybe (String)
  , "MergedDatasetNames" :: Maybe (MergedDatasetNameList)
  , "DatasetExists" :: Maybe (Boolean)
  , "DatasetDeletedAfterRequestedSyncCount" :: Maybe (Boolean)
  , "SyncSessionToken" :: Maybe (String)
  }
derive instance newtypeListRecordsResponse :: Newtype ListRecordsResponse _
derive instance repGenericListRecordsResponse :: Generic ListRecordsResponse _
instance showListRecordsResponse :: Show ListRecordsResponse where show = genericShow
instance decodeListRecordsResponse :: Decode ListRecordsResponse where decode = genericDecode options
instance encodeListRecordsResponse :: Encode ListRecordsResponse where encode = genericEncode options

-- | Constructs ListRecordsResponse from required parameters
newListRecordsResponse :: ListRecordsResponse
newListRecordsResponse  = ListRecordsResponse { "Count": Nothing, "DatasetDeletedAfterRequestedSyncCount": Nothing, "DatasetExists": Nothing, "DatasetSyncCount": Nothing, "LastModifiedBy": Nothing, "MergedDatasetNames": Nothing, "NextToken": Nothing, "Records": Nothing, "SyncSessionToken": Nothing }

-- | Constructs ListRecordsResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListRecordsResponse' :: ( { "Records" :: Maybe (RecordList) , "NextToken" :: Maybe (String) , "Count" :: Maybe (Int) , "DatasetSyncCount" :: Maybe (Number) , "LastModifiedBy" :: Maybe (String) , "MergedDatasetNames" :: Maybe (MergedDatasetNameList) , "DatasetExists" :: Maybe (Boolean) , "DatasetDeletedAfterRequestedSyncCount" :: Maybe (Boolean) , "SyncSessionToken" :: Maybe (String) } -> {"Records" :: Maybe (RecordList) , "NextToken" :: Maybe (String) , "Count" :: Maybe (Int) , "DatasetSyncCount" :: Maybe (Number) , "LastModifiedBy" :: Maybe (String) , "MergedDatasetNames" :: Maybe (MergedDatasetNameList) , "DatasetExists" :: Maybe (Boolean) , "DatasetDeletedAfterRequestedSyncCount" :: Maybe (Boolean) , "SyncSessionToken" :: Maybe (String) } ) -> ListRecordsResponse
newListRecordsResponse'  customize = (ListRecordsResponse <<< customize) { "Count": Nothing, "DatasetDeletedAfterRequestedSyncCount": Nothing, "DatasetExists": Nothing, "DatasetSyncCount": Nothing, "LastModifiedBy": Nothing, "MergedDatasetNames": Nothing, "NextToken": Nothing, "Records": Nothing, "SyncSessionToken": Nothing }



newtype MergedDatasetNameList = MergedDatasetNameList (Array String)
derive instance newtypeMergedDatasetNameList :: Newtype MergedDatasetNameList _
derive instance repGenericMergedDatasetNameList :: Generic MergedDatasetNameList _
instance showMergedDatasetNameList :: Show MergedDatasetNameList where show = genericShow
instance decodeMergedDatasetNameList :: Decode MergedDatasetNameList where decode = genericDecode options
instance encodeMergedDatasetNameList :: Encode MergedDatasetNameList where encode = genericEncode options



-- | Thrown when a user is not authorized to access the requested resource.
newtype NotAuthorizedException = NotAuthorizedException 
  { "message" :: (ExceptionMessage)
  }
derive instance newtypeNotAuthorizedException :: Newtype NotAuthorizedException _
derive instance repGenericNotAuthorizedException :: Generic NotAuthorizedException _
instance showNotAuthorizedException :: Show NotAuthorizedException where show = genericShow
instance decodeNotAuthorizedException :: Decode NotAuthorizedException where decode = genericDecode options
instance encodeNotAuthorizedException :: Encode NotAuthorizedException where encode = genericEncode options

-- | Constructs NotAuthorizedException from required parameters
newNotAuthorizedException :: ExceptionMessage -> NotAuthorizedException
newNotAuthorizedException _message = NotAuthorizedException { "message": _message }

-- | Constructs NotAuthorizedException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newNotAuthorizedException' :: ExceptionMessage -> ( { "message" :: (ExceptionMessage) } -> {"message" :: (ExceptionMessage) } ) -> NotAuthorizedException
newNotAuthorizedException' _message customize = (NotAuthorizedException <<< customize) { "message": _message }



newtype Operation = Operation String
derive instance newtypeOperation :: Newtype Operation _
derive instance repGenericOperation :: Generic Operation _
instance showOperation :: Show Operation where show = genericShow
instance decodeOperation :: Decode Operation where decode = genericDecode options
instance encodeOperation :: Encode Operation where encode = genericEncode options



newtype Platform = Platform String
derive instance newtypePlatform :: Newtype Platform _
derive instance repGenericPlatform :: Generic Platform _
instance showPlatform :: Show Platform where show = genericShow
instance decodePlatform :: Decode Platform where decode = genericDecode options
instance encodePlatform :: Encode Platform where encode = genericEncode options



-- | <p>Configuration options to be applied to the identity pool.</p>
newtype PushSync = PushSync 
  { "ApplicationArns" :: Maybe (ApplicationArnList)
  , "RoleArn" :: Maybe (AssumeRoleArn)
  }
derive instance newtypePushSync :: Newtype PushSync _
derive instance repGenericPushSync :: Generic PushSync _
instance showPushSync :: Show PushSync where show = genericShow
instance decodePushSync :: Decode PushSync where decode = genericDecode options
instance encodePushSync :: Encode PushSync where encode = genericEncode options

-- | Constructs PushSync from required parameters
newPushSync :: PushSync
newPushSync  = PushSync { "ApplicationArns": Nothing, "RoleArn": Nothing }

-- | Constructs PushSync's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newPushSync' :: ( { "ApplicationArns" :: Maybe (ApplicationArnList) , "RoleArn" :: Maybe (AssumeRoleArn) } -> {"ApplicationArns" :: Maybe (ApplicationArnList) , "RoleArn" :: Maybe (AssumeRoleArn) } ) -> PushSync
newPushSync'  customize = (PushSync <<< customize) { "ApplicationArns": Nothing, "RoleArn": Nothing }



newtype PushToken = PushToken String
derive instance newtypePushToken :: Newtype PushToken _
derive instance repGenericPushToken :: Generic PushToken _
instance showPushToken :: Show PushToken where show = genericShow
instance decodePushToken :: Decode PushToken where decode = genericDecode options
instance encodePushToken :: Encode PushToken where encode = genericEncode options



-- | The basic data structure of a dataset.
newtype Record'' = Record'' 
  { "Key" :: Maybe (RecordKey)
  , "Value" :: Maybe (RecordValue)
  , "SyncCount" :: Maybe (Number)
  , "LastModifiedDate" :: Maybe (Date)
  , "LastModifiedBy" :: Maybe (String)
  , "DeviceLastModifiedDate" :: Maybe (Date)
  }
derive instance newtypeRecord'' :: Newtype Record'' _
derive instance repGenericRecord'' :: Generic Record'' _
instance showRecord'' :: Show Record'' where show = genericShow
instance decodeRecord'' :: Decode Record'' where decode = genericDecode options
instance encodeRecord'' :: Encode Record'' where encode = genericEncode options

-- | Constructs Record'' from required parameters
newRecord'' :: Record''
newRecord''  = Record'' { "DeviceLastModifiedDate": Nothing, "Key": Nothing, "LastModifiedBy": Nothing, "LastModifiedDate": Nothing, "SyncCount": Nothing, "Value": Nothing }

-- | Constructs Record'''s fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newRecord''' :: ( { "Key" :: Maybe (RecordKey) , "Value" :: Maybe (RecordValue) , "SyncCount" :: Maybe (Number) , "LastModifiedDate" :: Maybe (Date) , "LastModifiedBy" :: Maybe (String) , "DeviceLastModifiedDate" :: Maybe (Date) } -> {"Key" :: Maybe (RecordKey) , "Value" :: Maybe (RecordValue) , "SyncCount" :: Maybe (Number) , "LastModifiedDate" :: Maybe (Date) , "LastModifiedBy" :: Maybe (String) , "DeviceLastModifiedDate" :: Maybe (Date) } ) -> Record''
newRecord'''  customize = (Record'' <<< customize) { "DeviceLastModifiedDate": Nothing, "Key": Nothing, "LastModifiedBy": Nothing, "LastModifiedDate": Nothing, "SyncCount": Nothing, "Value": Nothing }



newtype RecordKey = RecordKey String
derive instance newtypeRecordKey :: Newtype RecordKey _
derive instance repGenericRecordKey :: Generic RecordKey _
instance showRecordKey :: Show RecordKey where show = genericShow
instance decodeRecordKey :: Decode RecordKey where decode = genericDecode options
instance encodeRecordKey :: Encode RecordKey where encode = genericEncode options



newtype RecordList = RecordList (Array Record'')
derive instance newtypeRecordList :: Newtype RecordList _
derive instance repGenericRecordList :: Generic RecordList _
instance showRecordList :: Show RecordList where show = genericShow
instance decodeRecordList :: Decode RecordList where decode = genericDecode options
instance encodeRecordList :: Encode RecordList where encode = genericEncode options



-- | An update operation for a record.
newtype RecordPatch = RecordPatch 
  { "Op" :: (Operation)
  , "Key" :: (RecordKey)
  , "Value" :: Maybe (RecordValue)
  , "SyncCount" :: (Number)
  , "DeviceLastModifiedDate" :: Maybe (Date)
  }
derive instance newtypeRecordPatch :: Newtype RecordPatch _
derive instance repGenericRecordPatch :: Generic RecordPatch _
instance showRecordPatch :: Show RecordPatch where show = genericShow
instance decodeRecordPatch :: Decode RecordPatch where decode = genericDecode options
instance encodeRecordPatch :: Encode RecordPatch where encode = genericEncode options

-- | Constructs RecordPatch from required parameters
newRecordPatch :: RecordKey -> Operation -> Number -> RecordPatch
newRecordPatch _Key _Op _SyncCount = RecordPatch { "Key": _Key, "Op": _Op, "SyncCount": _SyncCount, "DeviceLastModifiedDate": Nothing, "Value": Nothing }

-- | Constructs RecordPatch's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newRecordPatch' :: RecordKey -> Operation -> Number -> ( { "Op" :: (Operation) , "Key" :: (RecordKey) , "Value" :: Maybe (RecordValue) , "SyncCount" :: (Number) , "DeviceLastModifiedDate" :: Maybe (Date) } -> {"Op" :: (Operation) , "Key" :: (RecordKey) , "Value" :: Maybe (RecordValue) , "SyncCount" :: (Number) , "DeviceLastModifiedDate" :: Maybe (Date) } ) -> RecordPatch
newRecordPatch' _Key _Op _SyncCount customize = (RecordPatch <<< customize) { "Key": _Key, "Op": _Op, "SyncCount": _SyncCount, "DeviceLastModifiedDate": Nothing, "Value": Nothing }



newtype RecordPatchList = RecordPatchList (Array RecordPatch)
derive instance newtypeRecordPatchList :: Newtype RecordPatchList _
derive instance repGenericRecordPatchList :: Generic RecordPatchList _
instance showRecordPatchList :: Show RecordPatchList where show = genericShow
instance decodeRecordPatchList :: Decode RecordPatchList where decode = genericDecode options
instance encodeRecordPatchList :: Encode RecordPatchList where encode = genericEncode options



newtype RecordValue = RecordValue String
derive instance newtypeRecordValue :: Newtype RecordValue _
derive instance repGenericRecordValue :: Generic RecordValue _
instance showRecordValue :: Show RecordValue where show = genericShow
instance decodeRecordValue :: Decode RecordValue where decode = genericDecode options
instance encodeRecordValue :: Encode RecordValue where encode = genericEncode options



-- | <p>A request to RegisterDevice.</p>
newtype RegisterDeviceRequest = RegisterDeviceRequest 
  { "IdentityPoolId" :: (IdentityPoolId)
  , "IdentityId" :: (IdentityId)
  , "Platform" :: (Platform)
  , "Token" :: (PushToken)
  }
derive instance newtypeRegisterDeviceRequest :: Newtype RegisterDeviceRequest _
derive instance repGenericRegisterDeviceRequest :: Generic RegisterDeviceRequest _
instance showRegisterDeviceRequest :: Show RegisterDeviceRequest where show = genericShow
instance decodeRegisterDeviceRequest :: Decode RegisterDeviceRequest where decode = genericDecode options
instance encodeRegisterDeviceRequest :: Encode RegisterDeviceRequest where encode = genericEncode options

-- | Constructs RegisterDeviceRequest from required parameters
newRegisterDeviceRequest :: IdentityId -> IdentityPoolId -> Platform -> PushToken -> RegisterDeviceRequest
newRegisterDeviceRequest _IdentityId _IdentityPoolId _Platform _Token = RegisterDeviceRequest { "IdentityId": _IdentityId, "IdentityPoolId": _IdentityPoolId, "Platform": _Platform, "Token": _Token }

-- | Constructs RegisterDeviceRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newRegisterDeviceRequest' :: IdentityId -> IdentityPoolId -> Platform -> PushToken -> ( { "IdentityPoolId" :: (IdentityPoolId) , "IdentityId" :: (IdentityId) , "Platform" :: (Platform) , "Token" :: (PushToken) } -> {"IdentityPoolId" :: (IdentityPoolId) , "IdentityId" :: (IdentityId) , "Platform" :: (Platform) , "Token" :: (PushToken) } ) -> RegisterDeviceRequest
newRegisterDeviceRequest' _IdentityId _IdentityPoolId _Platform _Token customize = (RegisterDeviceRequest <<< customize) { "IdentityId": _IdentityId, "IdentityPoolId": _IdentityPoolId, "Platform": _Platform, "Token": _Token }



-- | <p>Response to a RegisterDevice request.</p>
newtype RegisterDeviceResponse = RegisterDeviceResponse 
  { "DeviceId" :: Maybe (DeviceId)
  }
derive instance newtypeRegisterDeviceResponse :: Newtype RegisterDeviceResponse _
derive instance repGenericRegisterDeviceResponse :: Generic RegisterDeviceResponse _
instance showRegisterDeviceResponse :: Show RegisterDeviceResponse where show = genericShow
instance decodeRegisterDeviceResponse :: Decode RegisterDeviceResponse where decode = genericDecode options
instance encodeRegisterDeviceResponse :: Encode RegisterDeviceResponse where encode = genericEncode options

-- | Constructs RegisterDeviceResponse from required parameters
newRegisterDeviceResponse :: RegisterDeviceResponse
newRegisterDeviceResponse  = RegisterDeviceResponse { "DeviceId": Nothing }

-- | Constructs RegisterDeviceResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newRegisterDeviceResponse' :: ( { "DeviceId" :: Maybe (DeviceId) } -> {"DeviceId" :: Maybe (DeviceId) } ) -> RegisterDeviceResponse
newRegisterDeviceResponse'  customize = (RegisterDeviceResponse <<< customize) { "DeviceId": Nothing }



-- | Thrown if an update can't be applied because the resource was changed by another call and this would result in a conflict.
newtype ResourceConflictException = ResourceConflictException 
  { "message" :: (ExceptionMessage)
  }
derive instance newtypeResourceConflictException :: Newtype ResourceConflictException _
derive instance repGenericResourceConflictException :: Generic ResourceConflictException _
instance showResourceConflictException :: Show ResourceConflictException where show = genericShow
instance decodeResourceConflictException :: Decode ResourceConflictException where decode = genericDecode options
instance encodeResourceConflictException :: Encode ResourceConflictException where encode = genericEncode options

-- | Constructs ResourceConflictException from required parameters
newResourceConflictException :: ExceptionMessage -> ResourceConflictException
newResourceConflictException _message = ResourceConflictException { "message": _message }

-- | Constructs ResourceConflictException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newResourceConflictException' :: ExceptionMessage -> ( { "message" :: (ExceptionMessage) } -> {"message" :: (ExceptionMessage) } ) -> ResourceConflictException
newResourceConflictException' _message customize = (ResourceConflictException <<< customize) { "message": _message }



-- | Thrown if the resource doesn't exist.
newtype ResourceNotFoundException = ResourceNotFoundException 
  { "message" :: (ExceptionMessage)
  }
derive instance newtypeResourceNotFoundException :: Newtype ResourceNotFoundException _
derive instance repGenericResourceNotFoundException :: Generic ResourceNotFoundException _
instance showResourceNotFoundException :: Show ResourceNotFoundException where show = genericShow
instance decodeResourceNotFoundException :: Decode ResourceNotFoundException where decode = genericDecode options
instance encodeResourceNotFoundException :: Encode ResourceNotFoundException where encode = genericEncode options

-- | Constructs ResourceNotFoundException from required parameters
newResourceNotFoundException :: ExceptionMessage -> ResourceNotFoundException
newResourceNotFoundException _message = ResourceNotFoundException { "message": _message }

-- | Constructs ResourceNotFoundException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newResourceNotFoundException' :: ExceptionMessage -> ( { "message" :: (ExceptionMessage) } -> {"message" :: (ExceptionMessage) } ) -> ResourceNotFoundException
newResourceNotFoundException' _message customize = (ResourceNotFoundException <<< customize) { "message": _message }



-- | <p>A request to configure Cognito Events"</p>"
newtype SetCognitoEventsRequest = SetCognitoEventsRequest 
  { "IdentityPoolId" :: (IdentityPoolId)
  , "Events" :: (Events)
  }
derive instance newtypeSetCognitoEventsRequest :: Newtype SetCognitoEventsRequest _
derive instance repGenericSetCognitoEventsRequest :: Generic SetCognitoEventsRequest _
instance showSetCognitoEventsRequest :: Show SetCognitoEventsRequest where show = genericShow
instance decodeSetCognitoEventsRequest :: Decode SetCognitoEventsRequest where decode = genericDecode options
instance encodeSetCognitoEventsRequest :: Encode SetCognitoEventsRequest where encode = genericEncode options

-- | Constructs SetCognitoEventsRequest from required parameters
newSetCognitoEventsRequest :: Events -> IdentityPoolId -> SetCognitoEventsRequest
newSetCognitoEventsRequest _Events _IdentityPoolId = SetCognitoEventsRequest { "Events": _Events, "IdentityPoolId": _IdentityPoolId }

-- | Constructs SetCognitoEventsRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newSetCognitoEventsRequest' :: Events -> IdentityPoolId -> ( { "IdentityPoolId" :: (IdentityPoolId) , "Events" :: (Events) } -> {"IdentityPoolId" :: (IdentityPoolId) , "Events" :: (Events) } ) -> SetCognitoEventsRequest
newSetCognitoEventsRequest' _Events _IdentityPoolId customize = (SetCognitoEventsRequest <<< customize) { "Events": _Events, "IdentityPoolId": _IdentityPoolId }



-- | <p>The input for the SetIdentityPoolConfiguration operation.</p>
newtype SetIdentityPoolConfigurationRequest = SetIdentityPoolConfigurationRequest 
  { "IdentityPoolId" :: (IdentityPoolId)
  , "PushSync" :: Maybe (PushSync)
  , "CognitoStreams" :: Maybe (CognitoStreams)
  }
derive instance newtypeSetIdentityPoolConfigurationRequest :: Newtype SetIdentityPoolConfigurationRequest _
derive instance repGenericSetIdentityPoolConfigurationRequest :: Generic SetIdentityPoolConfigurationRequest _
instance showSetIdentityPoolConfigurationRequest :: Show SetIdentityPoolConfigurationRequest where show = genericShow
instance decodeSetIdentityPoolConfigurationRequest :: Decode SetIdentityPoolConfigurationRequest where decode = genericDecode options
instance encodeSetIdentityPoolConfigurationRequest :: Encode SetIdentityPoolConfigurationRequest where encode = genericEncode options

-- | Constructs SetIdentityPoolConfigurationRequest from required parameters
newSetIdentityPoolConfigurationRequest :: IdentityPoolId -> SetIdentityPoolConfigurationRequest
newSetIdentityPoolConfigurationRequest _IdentityPoolId = SetIdentityPoolConfigurationRequest { "IdentityPoolId": _IdentityPoolId, "CognitoStreams": Nothing, "PushSync": Nothing }

-- | Constructs SetIdentityPoolConfigurationRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newSetIdentityPoolConfigurationRequest' :: IdentityPoolId -> ( { "IdentityPoolId" :: (IdentityPoolId) , "PushSync" :: Maybe (PushSync) , "CognitoStreams" :: Maybe (CognitoStreams) } -> {"IdentityPoolId" :: (IdentityPoolId) , "PushSync" :: Maybe (PushSync) , "CognitoStreams" :: Maybe (CognitoStreams) } ) -> SetIdentityPoolConfigurationRequest
newSetIdentityPoolConfigurationRequest' _IdentityPoolId customize = (SetIdentityPoolConfigurationRequest <<< customize) { "IdentityPoolId": _IdentityPoolId, "CognitoStreams": Nothing, "PushSync": Nothing }



-- | <p>The output for the SetIdentityPoolConfiguration operation</p>
newtype SetIdentityPoolConfigurationResponse = SetIdentityPoolConfigurationResponse 
  { "IdentityPoolId" :: Maybe (IdentityPoolId)
  , "PushSync" :: Maybe (PushSync)
  , "CognitoStreams" :: Maybe (CognitoStreams)
  }
derive instance newtypeSetIdentityPoolConfigurationResponse :: Newtype SetIdentityPoolConfigurationResponse _
derive instance repGenericSetIdentityPoolConfigurationResponse :: Generic SetIdentityPoolConfigurationResponse _
instance showSetIdentityPoolConfigurationResponse :: Show SetIdentityPoolConfigurationResponse where show = genericShow
instance decodeSetIdentityPoolConfigurationResponse :: Decode SetIdentityPoolConfigurationResponse where decode = genericDecode options
instance encodeSetIdentityPoolConfigurationResponse :: Encode SetIdentityPoolConfigurationResponse where encode = genericEncode options

-- | Constructs SetIdentityPoolConfigurationResponse from required parameters
newSetIdentityPoolConfigurationResponse :: SetIdentityPoolConfigurationResponse
newSetIdentityPoolConfigurationResponse  = SetIdentityPoolConfigurationResponse { "CognitoStreams": Nothing, "IdentityPoolId": Nothing, "PushSync": Nothing }

-- | Constructs SetIdentityPoolConfigurationResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newSetIdentityPoolConfigurationResponse' :: ( { "IdentityPoolId" :: Maybe (IdentityPoolId) , "PushSync" :: Maybe (PushSync) , "CognitoStreams" :: Maybe (CognitoStreams) } -> {"IdentityPoolId" :: Maybe (IdentityPoolId) , "PushSync" :: Maybe (PushSync) , "CognitoStreams" :: Maybe (CognitoStreams) } ) -> SetIdentityPoolConfigurationResponse
newSetIdentityPoolConfigurationResponse'  customize = (SetIdentityPoolConfigurationResponse <<< customize) { "CognitoStreams": Nothing, "IdentityPoolId": Nothing, "PushSync": Nothing }



newtype StreamName = StreamName String
derive instance newtypeStreamName :: Newtype StreamName _
derive instance repGenericStreamName :: Generic StreamName _
instance showStreamName :: Show StreamName where show = genericShow
instance decodeStreamName :: Decode StreamName where decode = genericDecode options
instance encodeStreamName :: Encode StreamName where encode = genericEncode options



newtype StreamingStatus = StreamingStatus String
derive instance newtypeStreamingStatus :: Newtype StreamingStatus _
derive instance repGenericStreamingStatus :: Generic StreamingStatus _
instance showStreamingStatus :: Show StreamingStatus where show = genericShow
instance decodeStreamingStatus :: Decode StreamingStatus where decode = genericDecode options
instance encodeStreamingStatus :: Encode StreamingStatus where encode = genericEncode options



-- | <p>A request to SubscribeToDatasetRequest.</p>
newtype SubscribeToDatasetRequest = SubscribeToDatasetRequest 
  { "IdentityPoolId" :: (IdentityPoolId)
  , "IdentityId" :: (IdentityId)
  , "DatasetName" :: (DatasetName)
  , "DeviceId" :: (DeviceId)
  }
derive instance newtypeSubscribeToDatasetRequest :: Newtype SubscribeToDatasetRequest _
derive instance repGenericSubscribeToDatasetRequest :: Generic SubscribeToDatasetRequest _
instance showSubscribeToDatasetRequest :: Show SubscribeToDatasetRequest where show = genericShow
instance decodeSubscribeToDatasetRequest :: Decode SubscribeToDatasetRequest where decode = genericDecode options
instance encodeSubscribeToDatasetRequest :: Encode SubscribeToDatasetRequest where encode = genericEncode options

-- | Constructs SubscribeToDatasetRequest from required parameters
newSubscribeToDatasetRequest :: DatasetName -> DeviceId -> IdentityId -> IdentityPoolId -> SubscribeToDatasetRequest
newSubscribeToDatasetRequest _DatasetName _DeviceId _IdentityId _IdentityPoolId = SubscribeToDatasetRequest { "DatasetName": _DatasetName, "DeviceId": _DeviceId, "IdentityId": _IdentityId, "IdentityPoolId": _IdentityPoolId }

-- | Constructs SubscribeToDatasetRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newSubscribeToDatasetRequest' :: DatasetName -> DeviceId -> IdentityId -> IdentityPoolId -> ( { "IdentityPoolId" :: (IdentityPoolId) , "IdentityId" :: (IdentityId) , "DatasetName" :: (DatasetName) , "DeviceId" :: (DeviceId) } -> {"IdentityPoolId" :: (IdentityPoolId) , "IdentityId" :: (IdentityId) , "DatasetName" :: (DatasetName) , "DeviceId" :: (DeviceId) } ) -> SubscribeToDatasetRequest
newSubscribeToDatasetRequest' _DatasetName _DeviceId _IdentityId _IdentityPoolId customize = (SubscribeToDatasetRequest <<< customize) { "DatasetName": _DatasetName, "DeviceId": _DeviceId, "IdentityId": _IdentityId, "IdentityPoolId": _IdentityPoolId }



-- | <p>Response to a SubscribeToDataset request.</p>
newtype SubscribeToDatasetResponse = SubscribeToDatasetResponse Types.NoArguments
derive instance newtypeSubscribeToDatasetResponse :: Newtype SubscribeToDatasetResponse _
derive instance repGenericSubscribeToDatasetResponse :: Generic SubscribeToDatasetResponse _
instance showSubscribeToDatasetResponse :: Show SubscribeToDatasetResponse where show = genericShow
instance decodeSubscribeToDatasetResponse :: Decode SubscribeToDatasetResponse where decode = genericDecode options
instance encodeSubscribeToDatasetResponse :: Encode SubscribeToDatasetResponse where encode = genericEncode options



newtype SyncSessionToken = SyncSessionToken String
derive instance newtypeSyncSessionToken :: Newtype SyncSessionToken _
derive instance repGenericSyncSessionToken :: Generic SyncSessionToken _
instance showSyncSessionToken :: Show SyncSessionToken where show = genericShow
instance decodeSyncSessionToken :: Decode SyncSessionToken where decode = genericDecode options
instance encodeSyncSessionToken :: Encode SyncSessionToken where encode = genericEncode options



-- | Thrown if the request is throttled.
newtype TooManyRequestsException = TooManyRequestsException 
  { "message" :: (ExceptionMessage)
  }
derive instance newtypeTooManyRequestsException :: Newtype TooManyRequestsException _
derive instance repGenericTooManyRequestsException :: Generic TooManyRequestsException _
instance showTooManyRequestsException :: Show TooManyRequestsException where show = genericShow
instance decodeTooManyRequestsException :: Decode TooManyRequestsException where decode = genericDecode options
instance encodeTooManyRequestsException :: Encode TooManyRequestsException where encode = genericEncode options

-- | Constructs TooManyRequestsException from required parameters
newTooManyRequestsException :: ExceptionMessage -> TooManyRequestsException
newTooManyRequestsException _message = TooManyRequestsException { "message": _message }

-- | Constructs TooManyRequestsException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newTooManyRequestsException' :: ExceptionMessage -> ( { "message" :: (ExceptionMessage) } -> {"message" :: (ExceptionMessage) } ) -> TooManyRequestsException
newTooManyRequestsException' _message customize = (TooManyRequestsException <<< customize) { "message": _message }



-- | <p>A request to UnsubscribeFromDataset.</p>
newtype UnsubscribeFromDatasetRequest = UnsubscribeFromDatasetRequest 
  { "IdentityPoolId" :: (IdentityPoolId)
  , "IdentityId" :: (IdentityId)
  , "DatasetName" :: (DatasetName)
  , "DeviceId" :: (DeviceId)
  }
derive instance newtypeUnsubscribeFromDatasetRequest :: Newtype UnsubscribeFromDatasetRequest _
derive instance repGenericUnsubscribeFromDatasetRequest :: Generic UnsubscribeFromDatasetRequest _
instance showUnsubscribeFromDatasetRequest :: Show UnsubscribeFromDatasetRequest where show = genericShow
instance decodeUnsubscribeFromDatasetRequest :: Decode UnsubscribeFromDatasetRequest where decode = genericDecode options
instance encodeUnsubscribeFromDatasetRequest :: Encode UnsubscribeFromDatasetRequest where encode = genericEncode options

-- | Constructs UnsubscribeFromDatasetRequest from required parameters
newUnsubscribeFromDatasetRequest :: DatasetName -> DeviceId -> IdentityId -> IdentityPoolId -> UnsubscribeFromDatasetRequest
newUnsubscribeFromDatasetRequest _DatasetName _DeviceId _IdentityId _IdentityPoolId = UnsubscribeFromDatasetRequest { "DatasetName": _DatasetName, "DeviceId": _DeviceId, "IdentityId": _IdentityId, "IdentityPoolId": _IdentityPoolId }

-- | Constructs UnsubscribeFromDatasetRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUnsubscribeFromDatasetRequest' :: DatasetName -> DeviceId -> IdentityId -> IdentityPoolId -> ( { "IdentityPoolId" :: (IdentityPoolId) , "IdentityId" :: (IdentityId) , "DatasetName" :: (DatasetName) , "DeviceId" :: (DeviceId) } -> {"IdentityPoolId" :: (IdentityPoolId) , "IdentityId" :: (IdentityId) , "DatasetName" :: (DatasetName) , "DeviceId" :: (DeviceId) } ) -> UnsubscribeFromDatasetRequest
newUnsubscribeFromDatasetRequest' _DatasetName _DeviceId _IdentityId _IdentityPoolId customize = (UnsubscribeFromDatasetRequest <<< customize) { "DatasetName": _DatasetName, "DeviceId": _DeviceId, "IdentityId": _IdentityId, "IdentityPoolId": _IdentityPoolId }



-- | <p>Response to an UnsubscribeFromDataset request.</p>
newtype UnsubscribeFromDatasetResponse = UnsubscribeFromDatasetResponse Types.NoArguments
derive instance newtypeUnsubscribeFromDatasetResponse :: Newtype UnsubscribeFromDatasetResponse _
derive instance repGenericUnsubscribeFromDatasetResponse :: Generic UnsubscribeFromDatasetResponse _
instance showUnsubscribeFromDatasetResponse :: Show UnsubscribeFromDatasetResponse where show = genericShow
instance decodeUnsubscribeFromDatasetResponse :: Decode UnsubscribeFromDatasetResponse where decode = genericDecode options
instance encodeUnsubscribeFromDatasetResponse :: Encode UnsubscribeFromDatasetResponse where encode = genericEncode options



-- | A request to post updates to records or add and delete records for a dataset and user.
newtype UpdateRecordsRequest = UpdateRecordsRequest 
  { "IdentityPoolId" :: (IdentityPoolId)
  , "IdentityId" :: (IdentityId)
  , "DatasetName" :: (DatasetName)
  , "DeviceId" :: Maybe (DeviceId)
  , "RecordPatches" :: Maybe (RecordPatchList)
  , "SyncSessionToken" :: (SyncSessionToken)
  , "ClientContext" :: Maybe (ClientContext)
  }
derive instance newtypeUpdateRecordsRequest :: Newtype UpdateRecordsRequest _
derive instance repGenericUpdateRecordsRequest :: Generic UpdateRecordsRequest _
instance showUpdateRecordsRequest :: Show UpdateRecordsRequest where show = genericShow
instance decodeUpdateRecordsRequest :: Decode UpdateRecordsRequest where decode = genericDecode options
instance encodeUpdateRecordsRequest :: Encode UpdateRecordsRequest where encode = genericEncode options

-- | Constructs UpdateRecordsRequest from required parameters
newUpdateRecordsRequest :: DatasetName -> IdentityId -> IdentityPoolId -> SyncSessionToken -> UpdateRecordsRequest
newUpdateRecordsRequest _DatasetName _IdentityId _IdentityPoolId _SyncSessionToken = UpdateRecordsRequest { "DatasetName": _DatasetName, "IdentityId": _IdentityId, "IdentityPoolId": _IdentityPoolId, "SyncSessionToken": _SyncSessionToken, "ClientContext": Nothing, "DeviceId": Nothing, "RecordPatches": Nothing }

-- | Constructs UpdateRecordsRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUpdateRecordsRequest' :: DatasetName -> IdentityId -> IdentityPoolId -> SyncSessionToken -> ( { "IdentityPoolId" :: (IdentityPoolId) , "IdentityId" :: (IdentityId) , "DatasetName" :: (DatasetName) , "DeviceId" :: Maybe (DeviceId) , "RecordPatches" :: Maybe (RecordPatchList) , "SyncSessionToken" :: (SyncSessionToken) , "ClientContext" :: Maybe (ClientContext) } -> {"IdentityPoolId" :: (IdentityPoolId) , "IdentityId" :: (IdentityId) , "DatasetName" :: (DatasetName) , "DeviceId" :: Maybe (DeviceId) , "RecordPatches" :: Maybe (RecordPatchList) , "SyncSessionToken" :: (SyncSessionToken) , "ClientContext" :: Maybe (ClientContext) } ) -> UpdateRecordsRequest
newUpdateRecordsRequest' _DatasetName _IdentityId _IdentityPoolId _SyncSessionToken customize = (UpdateRecordsRequest <<< customize) { "DatasetName": _DatasetName, "IdentityId": _IdentityId, "IdentityPoolId": _IdentityPoolId, "SyncSessionToken": _SyncSessionToken, "ClientContext": Nothing, "DeviceId": Nothing, "RecordPatches": Nothing }



-- | Returned for a successful UpdateRecordsRequest.
newtype UpdateRecordsResponse = UpdateRecordsResponse 
  { "Records" :: Maybe (RecordList)
  }
derive instance newtypeUpdateRecordsResponse :: Newtype UpdateRecordsResponse _
derive instance repGenericUpdateRecordsResponse :: Generic UpdateRecordsResponse _
instance showUpdateRecordsResponse :: Show UpdateRecordsResponse where show = genericShow
instance decodeUpdateRecordsResponse :: Decode UpdateRecordsResponse where decode = genericDecode options
instance encodeUpdateRecordsResponse :: Encode UpdateRecordsResponse where encode = genericEncode options

-- | Constructs UpdateRecordsResponse from required parameters
newUpdateRecordsResponse :: UpdateRecordsResponse
newUpdateRecordsResponse  = UpdateRecordsResponse { "Records": Nothing }

-- | Constructs UpdateRecordsResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUpdateRecordsResponse' :: ( { "Records" :: Maybe (RecordList) } -> {"Records" :: Maybe (RecordList) } ) -> UpdateRecordsResponse
newUpdateRecordsResponse'  customize = (UpdateRecordsResponse <<< customize) { "Records": Nothing }

