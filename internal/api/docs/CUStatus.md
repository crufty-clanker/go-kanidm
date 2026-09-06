# CUStatus

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Spn** | **string** |  | 
**Displayname** | **string** |  | 
**ExtCredPortal** | [**CUExtPortal**](CUExtPortal.md) |  | 
**Mfaregstate** | [**CURegState**](CURegState.md) |  | 
**CanCommit** | **bool** |  | 
**Warnings** | [**[]CURegWarning**](CURegWarning.md) |  | 
**Dirty** | **bool** |  | 
**Primary** | Pointer to [**NullableCredentialDetail**](CredentialDetail.md) |  | [optional] 
**PrimaryState** | [**CUCredState**](CUCredState.md) |  | 
**Passkeys** | [**[]PasskeyDetail**](PasskeyDetail.md) |  | 
**PasskeysState** | [**CUCredState**](CUCredState.md) |  | 
**AttestedPasskeys** | [**[]PasskeyDetail**](PasskeyDetail.md) |  | 
**AttestedPasskeysState** | [**CUCredState**](CUCredState.md) |  | 
**AttestedPasskeysAllowedDevices** | **[]string** |  | 
**Unixcred** | Pointer to [**NullableCredentialDetail**](CredentialDetail.md) |  | [optional] 
**UnixcredState** | [**CUCredState**](CUCredState.md) |  | 
**Sshkeys** | **map[string]interface{}** |  | 
**SshkeysState** | [**CUCredState**](CUCredState.md) |  | 

## Methods

### NewCUStatus

`func NewCUStatus(spn string, displayname string, extCredPortal CUExtPortal, mfaregstate CURegState, canCommit bool, warnings []CURegWarning, dirty bool, primaryState CUCredState, passkeys []PasskeyDetail, passkeysState CUCredState, attestedPasskeys []PasskeyDetail, attestedPasskeysState CUCredState, attestedPasskeysAllowedDevices []string, unixcredState CUCredState, sshkeys map[string]*interface{}, sshkeysState CUCredState, ) *CUStatus`

NewCUStatus instantiates a new CUStatus object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewCUStatusWithDefaults

`func NewCUStatusWithDefaults() *CUStatus`

NewCUStatusWithDefaults instantiates a new CUStatus object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetSpn

`func (o *CUStatus) GetSpn() string`

GetSpn returns the Spn field if non-nil, zero value otherwise.

### GetSpnOk

`func (o *CUStatus) GetSpnOk() (*string, bool)`

GetSpnOk returns a tuple with the Spn field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSpn

`func (o *CUStatus) SetSpn(v string)`

SetSpn sets Spn field to given value.


### GetDisplayname

`func (o *CUStatus) GetDisplayname() string`

GetDisplayname returns the Displayname field if non-nil, zero value otherwise.

### GetDisplaynameOk

`func (o *CUStatus) GetDisplaynameOk() (*string, bool)`

GetDisplaynameOk returns a tuple with the Displayname field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDisplayname

`func (o *CUStatus) SetDisplayname(v string)`

SetDisplayname sets Displayname field to given value.


### GetExtCredPortal

`func (o *CUStatus) GetExtCredPortal() CUExtPortal`

GetExtCredPortal returns the ExtCredPortal field if non-nil, zero value otherwise.

### GetExtCredPortalOk

`func (o *CUStatus) GetExtCredPortalOk() (*CUExtPortal, bool)`

GetExtCredPortalOk returns a tuple with the ExtCredPortal field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetExtCredPortal

`func (o *CUStatus) SetExtCredPortal(v CUExtPortal)`

SetExtCredPortal sets ExtCredPortal field to given value.


### GetMfaregstate

`func (o *CUStatus) GetMfaregstate() CURegState`

GetMfaregstate returns the Mfaregstate field if non-nil, zero value otherwise.

### GetMfaregstateOk

`func (o *CUStatus) GetMfaregstateOk() (*CURegState, bool)`

GetMfaregstateOk returns a tuple with the Mfaregstate field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMfaregstate

`func (o *CUStatus) SetMfaregstate(v CURegState)`

SetMfaregstate sets Mfaregstate field to given value.


### GetCanCommit

`func (o *CUStatus) GetCanCommit() bool`

GetCanCommit returns the CanCommit field if non-nil, zero value otherwise.

### GetCanCommitOk

`func (o *CUStatus) GetCanCommitOk() (*bool, bool)`

GetCanCommitOk returns a tuple with the CanCommit field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCanCommit

`func (o *CUStatus) SetCanCommit(v bool)`

SetCanCommit sets CanCommit field to given value.


### GetWarnings

`func (o *CUStatus) GetWarnings() []CURegWarning`

GetWarnings returns the Warnings field if non-nil, zero value otherwise.

### GetWarningsOk

`func (o *CUStatus) GetWarningsOk() (*[]CURegWarning, bool)`

GetWarningsOk returns a tuple with the Warnings field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetWarnings

`func (o *CUStatus) SetWarnings(v []CURegWarning)`

SetWarnings sets Warnings field to given value.


### GetDirty

`func (o *CUStatus) GetDirty() bool`

GetDirty returns the Dirty field if non-nil, zero value otherwise.

### GetDirtyOk

`func (o *CUStatus) GetDirtyOk() (*bool, bool)`

GetDirtyOk returns a tuple with the Dirty field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDirty

`func (o *CUStatus) SetDirty(v bool)`

SetDirty sets Dirty field to given value.


### GetPrimary

`func (o *CUStatus) GetPrimary() CredentialDetail`

GetPrimary returns the Primary field if non-nil, zero value otherwise.

### GetPrimaryOk

`func (o *CUStatus) GetPrimaryOk() (*CredentialDetail, bool)`

GetPrimaryOk returns a tuple with the Primary field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPrimary

`func (o *CUStatus) SetPrimary(v CredentialDetail)`

SetPrimary sets Primary field to given value.

### HasPrimary

`func (o *CUStatus) HasPrimary() bool`

HasPrimary returns a boolean if a field has been set.

### SetPrimaryNil

`func (o *CUStatus) SetPrimaryNil(b bool)`

 SetPrimaryNil sets the value for Primary to be an explicit nil

### UnsetPrimary
`func (o *CUStatus) UnsetPrimary()`

UnsetPrimary ensures that no value is present for Primary, not even an explicit nil
### GetPrimaryState

`func (o *CUStatus) GetPrimaryState() CUCredState`

GetPrimaryState returns the PrimaryState field if non-nil, zero value otherwise.

### GetPrimaryStateOk

`func (o *CUStatus) GetPrimaryStateOk() (*CUCredState, bool)`

GetPrimaryStateOk returns a tuple with the PrimaryState field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPrimaryState

`func (o *CUStatus) SetPrimaryState(v CUCredState)`

SetPrimaryState sets PrimaryState field to given value.


### GetPasskeys

`func (o *CUStatus) GetPasskeys() []PasskeyDetail`

GetPasskeys returns the Passkeys field if non-nil, zero value otherwise.

### GetPasskeysOk

`func (o *CUStatus) GetPasskeysOk() (*[]PasskeyDetail, bool)`

GetPasskeysOk returns a tuple with the Passkeys field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPasskeys

`func (o *CUStatus) SetPasskeys(v []PasskeyDetail)`

SetPasskeys sets Passkeys field to given value.


### GetPasskeysState

`func (o *CUStatus) GetPasskeysState() CUCredState`

GetPasskeysState returns the PasskeysState field if non-nil, zero value otherwise.

### GetPasskeysStateOk

`func (o *CUStatus) GetPasskeysStateOk() (*CUCredState, bool)`

GetPasskeysStateOk returns a tuple with the PasskeysState field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPasskeysState

`func (o *CUStatus) SetPasskeysState(v CUCredState)`

SetPasskeysState sets PasskeysState field to given value.


### GetAttestedPasskeys

`func (o *CUStatus) GetAttestedPasskeys() []PasskeyDetail`

GetAttestedPasskeys returns the AttestedPasskeys field if non-nil, zero value otherwise.

### GetAttestedPasskeysOk

`func (o *CUStatus) GetAttestedPasskeysOk() (*[]PasskeyDetail, bool)`

GetAttestedPasskeysOk returns a tuple with the AttestedPasskeys field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAttestedPasskeys

`func (o *CUStatus) SetAttestedPasskeys(v []PasskeyDetail)`

SetAttestedPasskeys sets AttestedPasskeys field to given value.


### GetAttestedPasskeysState

`func (o *CUStatus) GetAttestedPasskeysState() CUCredState`

GetAttestedPasskeysState returns the AttestedPasskeysState field if non-nil, zero value otherwise.

### GetAttestedPasskeysStateOk

`func (o *CUStatus) GetAttestedPasskeysStateOk() (*CUCredState, bool)`

GetAttestedPasskeysStateOk returns a tuple with the AttestedPasskeysState field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAttestedPasskeysState

`func (o *CUStatus) SetAttestedPasskeysState(v CUCredState)`

SetAttestedPasskeysState sets AttestedPasskeysState field to given value.


### GetAttestedPasskeysAllowedDevices

`func (o *CUStatus) GetAttestedPasskeysAllowedDevices() []string`

GetAttestedPasskeysAllowedDevices returns the AttestedPasskeysAllowedDevices field if non-nil, zero value otherwise.

### GetAttestedPasskeysAllowedDevicesOk

`func (o *CUStatus) GetAttestedPasskeysAllowedDevicesOk() (*[]string, bool)`

GetAttestedPasskeysAllowedDevicesOk returns a tuple with the AttestedPasskeysAllowedDevices field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAttestedPasskeysAllowedDevices

`func (o *CUStatus) SetAttestedPasskeysAllowedDevices(v []string)`

SetAttestedPasskeysAllowedDevices sets AttestedPasskeysAllowedDevices field to given value.


### GetUnixcred

`func (o *CUStatus) GetUnixcred() CredentialDetail`

GetUnixcred returns the Unixcred field if non-nil, zero value otherwise.

### GetUnixcredOk

`func (o *CUStatus) GetUnixcredOk() (*CredentialDetail, bool)`

GetUnixcredOk returns a tuple with the Unixcred field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetUnixcred

`func (o *CUStatus) SetUnixcred(v CredentialDetail)`

SetUnixcred sets Unixcred field to given value.

### HasUnixcred

`func (o *CUStatus) HasUnixcred() bool`

HasUnixcred returns a boolean if a field has been set.

### SetUnixcredNil

`func (o *CUStatus) SetUnixcredNil(b bool)`

 SetUnixcredNil sets the value for Unixcred to be an explicit nil

### UnsetUnixcred
`func (o *CUStatus) UnsetUnixcred()`

UnsetUnixcred ensures that no value is present for Unixcred, not even an explicit nil
### GetUnixcredState

`func (o *CUStatus) GetUnixcredState() CUCredState`

GetUnixcredState returns the UnixcredState field if non-nil, zero value otherwise.

### GetUnixcredStateOk

`func (o *CUStatus) GetUnixcredStateOk() (*CUCredState, bool)`

GetUnixcredStateOk returns a tuple with the UnixcredState field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetUnixcredState

`func (o *CUStatus) SetUnixcredState(v CUCredState)`

SetUnixcredState sets UnixcredState field to given value.


### GetSshkeys

`func (o *CUStatus) GetSshkeys() map[string]*interface{}`

GetSshkeys returns the Sshkeys field if non-nil, zero value otherwise.

### GetSshkeysOk

`func (o *CUStatus) GetSshkeysOk() (*map[string]*interface{}, bool)`

GetSshkeysOk returns a tuple with the Sshkeys field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSshkeys

`func (o *CUStatus) SetSshkeys(v map[string]*interface{})`

SetSshkeys sets Sshkeys field to given value.


### GetSshkeysState

`func (o *CUStatus) GetSshkeysState() CUCredState`

GetSshkeysState returns the SshkeysState field if non-nil, zero value otherwise.

### GetSshkeysStateOk

`func (o *CUStatus) GetSshkeysStateOk() (*CUCredState, bool)`

GetSshkeysStateOk returns a tuple with the SshkeysState field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSshkeysState

`func (o *CUStatus) SetSshkeysState(v CUCredState)`

SetSshkeysState sets SshkeysState field to given value.



[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


