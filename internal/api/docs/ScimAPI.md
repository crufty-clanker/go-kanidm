# \ScimAPI

All URIs are relative to *https://localhost:8443*

Method | HTTP request | Description
------------- | ------------- | -------------
[**ScimApplicationGet**](ScimAPI.md#ScimApplicationGet) | **Get** /scim/v1/Application | 
[**ScimApplicationIdDelete**](ScimAPI.md#ScimApplicationIdDelete) | **Delete** /scim/v1/Application/{id} | 
[**ScimApplicationIdGet**](ScimAPI.md#ScimApplicationIdGet) | **Get** /scim/v1/Application/{id} | 
[**ScimApplicationPost**](ScimAPI.md#ScimApplicationPost) | **Post** /scim/v1/Application | 
[**ScimEntryGet**](ScimAPI.md#ScimEntryGet) | **Get** /scim/v1/Entry | 
[**ScimEntryIdDelete**](ScimAPI.md#ScimEntryIdDelete) | **Delete** /scim/v1/Entry/{id} | 
[**ScimEntryIdGet**](ScimAPI.md#ScimEntryIdGet) | **Get** /scim/v1/Entry/{id} | 
[**ScimEntryPost**](ScimAPI.md#ScimEntryPost) | **Post** /scim/v1/Entry | 
[**ScimEntryPut**](ScimAPI.md#ScimEntryPut) | **Put** /scim/v1/Entry | 
[**ScimFeatureGet**](ScimAPI.md#ScimFeatureGet) | **Get** /scim/v1/Feature | 
[**ScimMessageGet**](ScimAPI.md#ScimMessageGet) | **Get** /scim/v1/Message | 
[**ScimMessageIdGet**](ScimAPI.md#ScimMessageIdGet) | **Get** /scim/v1/Message/{id} | 
[**ScimMessageIdResendPost**](ScimAPI.md#ScimMessageIdResendPost) | **Delete** /scim/v1/Message/{id}/_resend | 
[**ScimMessageIdSentPost**](ScimAPI.md#ScimMessageIdSentPost) | **Delete** /scim/v1/Message/{id}/_sent | 
[**ScimMessageReadyGet**](ScimAPI.md#ScimMessageReadyGet) | **Get** /scim/v1/Message/_ready | 
[**ScimPersonIdApplicationCreatePassword**](ScimAPI.md#ScimPersonIdApplicationCreatePassword) | **Post** /scim/v1/Person/{id}/Application/_create_password | 
[**ScimPersonIdApplicationDeletePassword**](ScimAPI.md#ScimPersonIdApplicationDeletePassword) | **Get** /scim/v1/Person/{id}/Application/{apppwd_uuid} | 
[**ScimPersonIdGet**](ScimAPI.md#ScimPersonIdGet) | **Get** /scim/v1/Person/{id} | 
[**ScimPersonIdMessageSendTestGet**](ScimAPI.md#ScimPersonIdMessageSendTestGet) | **Get** /scim/v1/Person/{id}/_messages/_send_test | 
[**ScimSchemaAttributeGet**](ScimAPI.md#ScimSchemaAttributeGet) | **Get** /scim/v1/Attribute | 
[**ScimSchemaClassGet**](ScimAPI.md#ScimSchemaClassGet) | **Get** /scim/v1/Class | 
[**ScimSyncGet**](ScimAPI.md#ScimSyncGet) | **Get** /scim/v1/Sync | 
[**ScimSyncPost**](ScimAPI.md#ScimSyncPost) | **Post** /scim/v1/Sync | 



## ScimApplicationGet

> ScimListResponse ScimApplicationGet(ctx).Execute()



### Example

```go
package main

import (
	"context"
	"fmt"
	"os"
	openapiclient "github.com/slop-incubator/go-kanidm/internal/api"
)

func main() {

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.ScimAPI.ScimApplicationGet(context.Background()).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `ScimAPI.ScimApplicationGet``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `ScimApplicationGet`: ScimListResponse
	fmt.Fprintf(os.Stdout, "Response from `ScimAPI.ScimApplicationGet`: %v\n", resp)
}
```

### Path Parameters

This endpoint does not need any parameter.

### Other Parameters

Other parameters are passed through a pointer to a apiScimApplicationGetRequest struct via the builder pattern


### Return type

[**ScimListResponse**](ScimListResponse.md)

### Authorization

[token_jwt](../README.md#token_jwt)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## ScimApplicationIdDelete

> ScimApplicationIdDelete(ctx, id).Execute()



### Example

```go
package main

import (
	"context"
	"fmt"
	"os"
	openapiclient "github.com/slop-incubator/go-kanidm/internal/api"
)

func main() {
	id := "id_example" // string | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	r, err := apiClient.ScimAPI.ScimApplicationIdDelete(context.Background(), id).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `ScimAPI.ScimApplicationIdDelete``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**id** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiScimApplicationIdDeleteRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


### Return type

 (empty response body)

### Authorization

[token_jwt](../README.md#token_jwt)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## ScimApplicationIdGet

> ScimEntry ScimApplicationIdGet(ctx, id).Execute()



### Example

```go
package main

import (
	"context"
	"fmt"
	"os"
	openapiclient "github.com/slop-incubator/go-kanidm/internal/api"
)

func main() {
	id := "id_example" // string | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.ScimAPI.ScimApplicationIdGet(context.Background(), id).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `ScimAPI.ScimApplicationIdGet``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `ScimApplicationIdGet`: ScimEntry
	fmt.Fprintf(os.Stdout, "Response from `ScimAPI.ScimApplicationIdGet`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**id** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiScimApplicationIdGetRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


### Return type

[**ScimEntry**](ScimEntry.md)

### Authorization

[token_jwt](../README.md#token_jwt)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## ScimApplicationPost

> ScimEntry ScimApplicationPost(ctx).ScimEntryPostGeneric(scimEntryPostGeneric).Execute()



### Example

```go
package main

import (
	"context"
	"fmt"
	"os"
	openapiclient "github.com/slop-incubator/go-kanidm/internal/api"
)

func main() {
	scimEntryPostGeneric := *openapiclient.NewScimEntryPostGeneric() // ScimEntryPostGeneric | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.ScimAPI.ScimApplicationPost(context.Background()).ScimEntryPostGeneric(scimEntryPostGeneric).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `ScimAPI.ScimApplicationPost``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `ScimApplicationPost`: ScimEntry
	fmt.Fprintf(os.Stdout, "Response from `ScimAPI.ScimApplicationPost`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiScimApplicationPostRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **scimEntryPostGeneric** | [**ScimEntryPostGeneric**](ScimEntryPostGeneric.md) |  | 

### Return type

[**ScimEntry**](ScimEntry.md)

### Authorization

[token_jwt](../README.md#token_jwt)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## ScimEntryGet

> ScimListResponse ScimEntryGet(ctx).Execute()



### Example

```go
package main

import (
	"context"
	"fmt"
	"os"
	openapiclient "github.com/slop-incubator/go-kanidm/internal/api"
)

func main() {

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.ScimAPI.ScimEntryGet(context.Background()).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `ScimAPI.ScimEntryGet``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `ScimEntryGet`: ScimListResponse
	fmt.Fprintf(os.Stdout, "Response from `ScimAPI.ScimEntryGet`: %v\n", resp)
}
```

### Path Parameters

This endpoint does not need any parameter.

### Other Parameters

Other parameters are passed through a pointer to a apiScimEntryGetRequest struct via the builder pattern


### Return type

[**ScimListResponse**](ScimListResponse.md)

### Authorization

[token_jwt](../README.md#token_jwt)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## ScimEntryIdDelete

> ScimEntry ScimEntryIdDelete(ctx, id).Execute()



### Example

```go
package main

import (
	"context"
	"fmt"
	"os"
	openapiclient "github.com/slop-incubator/go-kanidm/internal/api"
)

func main() {
	id := "id_example" // string | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.ScimAPI.ScimEntryIdDelete(context.Background(), id).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `ScimAPI.ScimEntryIdDelete``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `ScimEntryIdDelete`: ScimEntry
	fmt.Fprintf(os.Stdout, "Response from `ScimAPI.ScimEntryIdDelete`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**id** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiScimEntryIdDeleteRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


### Return type

[**ScimEntry**](ScimEntry.md)

### Authorization

[token_jwt](../README.md#token_jwt)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## ScimEntryIdGet

> ScimEntry ScimEntryIdGet(ctx, id).Execute()



### Example

```go
package main

import (
	"context"
	"fmt"
	"os"
	openapiclient "github.com/slop-incubator/go-kanidm/internal/api"
)

func main() {
	id := "id_example" // string | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.ScimAPI.ScimEntryIdGet(context.Background(), id).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `ScimAPI.ScimEntryIdGet``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `ScimEntryIdGet`: ScimEntry
	fmt.Fprintf(os.Stdout, "Response from `ScimAPI.ScimEntryIdGet`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**id** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiScimEntryIdGetRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


### Return type

[**ScimEntry**](ScimEntry.md)

### Authorization

[token_jwt](../README.md#token_jwt)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## ScimEntryPost

> ScimEntry ScimEntryPost(ctx).ScimEntryPostGeneric(scimEntryPostGeneric).Execute()



### Example

```go
package main

import (
	"context"
	"fmt"
	"os"
	openapiclient "github.com/slop-incubator/go-kanidm/internal/api"
)

func main() {
	scimEntryPostGeneric := *openapiclient.NewScimEntryPostGeneric() // ScimEntryPostGeneric | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.ScimAPI.ScimEntryPost(context.Background()).ScimEntryPostGeneric(scimEntryPostGeneric).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `ScimAPI.ScimEntryPost``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `ScimEntryPost`: ScimEntry
	fmt.Fprintf(os.Stdout, "Response from `ScimAPI.ScimEntryPost`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiScimEntryPostRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **scimEntryPostGeneric** | [**ScimEntryPostGeneric**](ScimEntryPostGeneric.md) |  | 

### Return type

[**ScimEntry**](ScimEntry.md)

### Authorization

[token_jwt](../README.md#token_jwt)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## ScimEntryPut

> ScimEntry ScimEntryPut(ctx).ScimEntryPutGeneric(scimEntryPutGeneric).Execute()



### Example

```go
package main

import (
	"context"
	"fmt"
	"os"
	openapiclient "github.com/slop-incubator/go-kanidm/internal/api"
)

func main() {
	scimEntryPutGeneric := *openapiclient.NewScimEntryPutGeneric("Id_example") // ScimEntryPutGeneric | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.ScimAPI.ScimEntryPut(context.Background()).ScimEntryPutGeneric(scimEntryPutGeneric).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `ScimAPI.ScimEntryPut``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `ScimEntryPut`: ScimEntry
	fmt.Fprintf(os.Stdout, "Response from `ScimAPI.ScimEntryPut`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiScimEntryPutRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **scimEntryPutGeneric** | [**ScimEntryPutGeneric**](ScimEntryPutGeneric.md) |  | 

### Return type

[**ScimEntry**](ScimEntry.md)

### Authorization

[token_jwt](../README.md#token_jwt)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## ScimFeatureGet

> ScimListResponse ScimFeatureGet(ctx).Execute()



### Example

```go
package main

import (
	"context"
	"fmt"
	"os"
	openapiclient "github.com/slop-incubator/go-kanidm/internal/api"
)

func main() {

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.ScimAPI.ScimFeatureGet(context.Background()).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `ScimAPI.ScimFeatureGet``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `ScimFeatureGet`: ScimListResponse
	fmt.Fprintf(os.Stdout, "Response from `ScimAPI.ScimFeatureGet`: %v\n", resp)
}
```

### Path Parameters

This endpoint does not need any parameter.

### Other Parameters

Other parameters are passed through a pointer to a apiScimFeatureGetRequest struct via the builder pattern


### Return type

[**ScimListResponse**](ScimListResponse.md)

### Authorization

[token_jwt](../README.md#token_jwt)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## ScimMessageGet

> ScimListResponse ScimMessageGet(ctx).Execute()



### Example

```go
package main

import (
	"context"
	"fmt"
	"os"
	openapiclient "github.com/slop-incubator/go-kanidm/internal/api"
)

func main() {

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.ScimAPI.ScimMessageGet(context.Background()).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `ScimAPI.ScimMessageGet``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `ScimMessageGet`: ScimListResponse
	fmt.Fprintf(os.Stdout, "Response from `ScimAPI.ScimMessageGet`: %v\n", resp)
}
```

### Path Parameters

This endpoint does not need any parameter.

### Other Parameters

Other parameters are passed through a pointer to a apiScimMessageGetRequest struct via the builder pattern


### Return type

[**ScimListResponse**](ScimListResponse.md)

### Authorization

[token_jwt](../README.md#token_jwt)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## ScimMessageIdGet

> ScimEntry ScimMessageIdGet(ctx, id).Execute()



### Example

```go
package main

import (
	"context"
	"fmt"
	"os"
	openapiclient "github.com/slop-incubator/go-kanidm/internal/api"
)

func main() {
	id := "id_example" // string | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.ScimAPI.ScimMessageIdGet(context.Background(), id).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `ScimAPI.ScimMessageIdGet``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `ScimMessageIdGet`: ScimEntry
	fmt.Fprintf(os.Stdout, "Response from `ScimAPI.ScimMessageIdGet`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**id** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiScimMessageIdGetRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


### Return type

[**ScimEntry**](ScimEntry.md)

### Authorization

[token_jwt](../README.md#token_jwt)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## ScimMessageIdResendPost

> ScimMessageIdResendPost(ctx, id).Execute()



### Example

```go
package main

import (
	"context"
	"fmt"
	"os"
	openapiclient "github.com/slop-incubator/go-kanidm/internal/api"
)

func main() {
	id := "38400000-8cf0-11bd-b23e-10b96e4ef00d" // string | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	r, err := apiClient.ScimAPI.ScimMessageIdResendPost(context.Background(), id).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `ScimAPI.ScimMessageIdResendPost``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**id** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiScimMessageIdResendPostRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


### Return type

 (empty response body)

### Authorization

[token_jwt](../README.md#token_jwt)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## ScimMessageIdSentPost

> ScimMessageIdSentPost(ctx, id).Execute()



### Example

```go
package main

import (
	"context"
	"fmt"
	"os"
	openapiclient "github.com/slop-incubator/go-kanidm/internal/api"
)

func main() {
	id := "38400000-8cf0-11bd-b23e-10b96e4ef00d" // string | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	r, err := apiClient.ScimAPI.ScimMessageIdSentPost(context.Background(), id).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `ScimAPI.ScimMessageIdSentPost``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**id** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiScimMessageIdSentPostRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


### Return type

 (empty response body)

### Authorization

[token_jwt](../README.md#token_jwt)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## ScimMessageReadyGet

> ScimListResponse ScimMessageReadyGet(ctx).Execute()



### Example

```go
package main

import (
	"context"
	"fmt"
	"os"
	openapiclient "github.com/slop-incubator/go-kanidm/internal/api"
)

func main() {

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.ScimAPI.ScimMessageReadyGet(context.Background()).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `ScimAPI.ScimMessageReadyGet``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `ScimMessageReadyGet`: ScimListResponse
	fmt.Fprintf(os.Stdout, "Response from `ScimAPI.ScimMessageReadyGet`: %v\n", resp)
}
```

### Path Parameters

This endpoint does not need any parameter.

### Other Parameters

Other parameters are passed through a pointer to a apiScimMessageReadyGetRequest struct via the builder pattern


### Return type

[**ScimListResponse**](ScimListResponse.md)

### Authorization

[token_jwt](../README.md#token_jwt)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## ScimPersonIdApplicationCreatePassword

> ScimApplicationPassword ScimPersonIdApplicationCreatePassword(ctx, id).ScimApplicationPasswordCreate(scimApplicationPasswordCreate).Execute()



### Example

```go
package main

import (
	"context"
	"fmt"
	"os"
	openapiclient "github.com/slop-incubator/go-kanidm/internal/api"
)

func main() {
	id := "id_example" // string | 
	scimApplicationPasswordCreate := *openapiclient.NewScimApplicationPasswordCreate("ApplicationUuid_example", "Label_example") // ScimApplicationPasswordCreate | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.ScimAPI.ScimPersonIdApplicationCreatePassword(context.Background(), id).ScimApplicationPasswordCreate(scimApplicationPasswordCreate).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `ScimAPI.ScimPersonIdApplicationCreatePassword``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `ScimPersonIdApplicationCreatePassword`: ScimApplicationPassword
	fmt.Fprintf(os.Stdout, "Response from `ScimAPI.ScimPersonIdApplicationCreatePassword`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**id** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiScimPersonIdApplicationCreatePasswordRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------

 **scimApplicationPasswordCreate** | [**ScimApplicationPasswordCreate**](ScimApplicationPasswordCreate.md) |  | 

### Return type

[**ScimApplicationPassword**](ScimApplicationPassword.md)

### Authorization

[token_jwt](../README.md#token_jwt)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## ScimPersonIdApplicationDeletePassword

> ScimPersonIdApplicationDeletePassword(ctx, id, apppwdUuid).Execute()



### Example

```go
package main

import (
	"context"
	"fmt"
	"os"
	openapiclient "github.com/slop-incubator/go-kanidm/internal/api"
)

func main() {
	id := "id_example" // string | 
	apppwdUuid := "38400000-8cf0-11bd-b23e-10b96e4ef00d" // string | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	r, err := apiClient.ScimAPI.ScimPersonIdApplicationDeletePassword(context.Background(), id, apppwdUuid).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `ScimAPI.ScimPersonIdApplicationDeletePassword``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**id** | **string** |  | 
**apppwdUuid** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiScimPersonIdApplicationDeletePasswordRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------



### Return type

 (empty response body)

### Authorization

[token_jwt](../README.md#token_jwt)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## ScimPersonIdGet

> ScimEntry ScimPersonIdGet(ctx, id).Execute()



### Example

```go
package main

import (
	"context"
	"fmt"
	"os"
	openapiclient "github.com/slop-incubator/go-kanidm/internal/api"
)

func main() {
	id := "id_example" // string | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.ScimAPI.ScimPersonIdGet(context.Background(), id).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `ScimAPI.ScimPersonIdGet``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `ScimPersonIdGet`: ScimEntry
	fmt.Fprintf(os.Stdout, "Response from `ScimAPI.ScimPersonIdGet`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**id** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiScimPersonIdGetRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


### Return type

[**ScimEntry**](ScimEntry.md)

### Authorization

[token_jwt](../README.md#token_jwt)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## ScimPersonIdMessageSendTestGet

> ScimEntry ScimPersonIdMessageSendTestGet(ctx, id).Execute()



### Example

```go
package main

import (
	"context"
	"fmt"
	"os"
	openapiclient "github.com/slop-incubator/go-kanidm/internal/api"
)

func main() {
	id := "id_example" // string | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.ScimAPI.ScimPersonIdMessageSendTestGet(context.Background(), id).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `ScimAPI.ScimPersonIdMessageSendTestGet``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `ScimPersonIdMessageSendTestGet`: ScimEntry
	fmt.Fprintf(os.Stdout, "Response from `ScimAPI.ScimPersonIdMessageSendTestGet`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**id** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiScimPersonIdMessageSendTestGetRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


### Return type

[**ScimEntry**](ScimEntry.md)

### Authorization

[token_jwt](../README.md#token_jwt)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## ScimSchemaAttributeGet

> ScimListResponse ScimSchemaAttributeGet(ctx).Execute()



### Example

```go
package main

import (
	"context"
	"fmt"
	"os"
	openapiclient "github.com/slop-incubator/go-kanidm/internal/api"
)

func main() {

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.ScimAPI.ScimSchemaAttributeGet(context.Background()).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `ScimAPI.ScimSchemaAttributeGet``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `ScimSchemaAttributeGet`: ScimListResponse
	fmt.Fprintf(os.Stdout, "Response from `ScimAPI.ScimSchemaAttributeGet`: %v\n", resp)
}
```

### Path Parameters

This endpoint does not need any parameter.

### Other Parameters

Other parameters are passed through a pointer to a apiScimSchemaAttributeGetRequest struct via the builder pattern


### Return type

[**ScimListResponse**](ScimListResponse.md)

### Authorization

[token_jwt](../README.md#token_jwt)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## ScimSchemaClassGet

> ScimListResponse ScimSchemaClassGet(ctx).Execute()



### Example

```go
package main

import (
	"context"
	"fmt"
	"os"
	openapiclient "github.com/slop-incubator/go-kanidm/internal/api"
)

func main() {

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.ScimAPI.ScimSchemaClassGet(context.Background()).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `ScimAPI.ScimSchemaClassGet``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `ScimSchemaClassGet`: ScimListResponse
	fmt.Fprintf(os.Stdout, "Response from `ScimAPI.ScimSchemaClassGet`: %v\n", resp)
}
```

### Path Parameters

This endpoint does not need any parameter.

### Other Parameters

Other parameters are passed through a pointer to a apiScimSchemaClassGetRequest struct via the builder pattern


### Return type

[**ScimListResponse**](ScimListResponse.md)

### Authorization

[token_jwt](../README.md#token_jwt)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## ScimSyncGet

> ScimSyncState ScimSyncGet(ctx).Execute()



### Example

```go
package main

import (
	"context"
	"fmt"
	"os"
	openapiclient "github.com/slop-incubator/go-kanidm/internal/api"
)

func main() {

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.ScimAPI.ScimSyncGet(context.Background()).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `ScimAPI.ScimSyncGet``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `ScimSyncGet`: ScimSyncState
	fmt.Fprintf(os.Stdout, "Response from `ScimAPI.ScimSyncGet`: %v\n", resp)
}
```

### Path Parameters

This endpoint does not need any parameter.

### Other Parameters

Other parameters are passed through a pointer to a apiScimSyncGetRequest struct via the builder pattern


### Return type

[**ScimSyncState**](ScimSyncState.md)

### Authorization

[token_jwt](../README.md#token_jwt)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## ScimSyncPost

> ScimSyncPost(ctx).ScimSyncRequest(scimSyncRequest).Execute()



### Example

```go
package main

import (
	"context"
	"fmt"
	"os"
	openapiclient "github.com/slop-incubator/go-kanidm/internal/api"
)

func main() {
	scimSyncRequest := *openapiclient.NewScimSyncRequest(openapiclient.ScimSyncState{ScimSyncStateOneOf: openapiclient.NewScimSyncStateOneOf(*openapiclient.NewScimSyncStateOneOfActive([]int32{int32(123)}))}, openapiclient.ScimSyncState{ScimSyncStateOneOf: openapiclient.NewScimSyncStateOneOf(*openapiclient.NewScimSyncStateOneOfActive([]int32{int32(123)}))}, []openapiclient.ScimEntry{*openapiclient.NewScimEntry([]string{"Schemas_example"}, "Id_example")}, openapiclient.ScimSyncRetentionMode{ScimSyncRetentionModeOneOf: openapiclient.NewScimSyncRetentionModeOneOf([]string{"Retain_example"})}) // ScimSyncRequest | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	r, err := apiClient.ScimAPI.ScimSyncPost(context.Background()).ScimSyncRequest(scimSyncRequest).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `ScimAPI.ScimSyncPost``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiScimSyncPostRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **scimSyncRequest** | [**ScimSyncRequest**](ScimSyncRequest.md) |  | 

### Return type

 (empty response body)

### Authorization

[token_jwt](../README.md#token_jwt)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)

