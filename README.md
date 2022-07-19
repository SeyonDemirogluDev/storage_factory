# Simple Storage Factory

**Simple Storage Factory deploys Storage Factory contracts by importing from them.**

```
getSimpleStorageContract
```
*Array to retrieve addresses deployed Simple Storage contracts.*

```
setSimpleStorageContract()
```
*Function to deploy Simple Storage contract and push it into getSimpleStorageContract.*

```
setStorageFactoryNum()
```
*Function to store your favorite Number to a deployed Simple Storage contract.*

```
getStorageFactoryNum()
```
*Retrieve your favorite number by entering the index of getSimpleStorageContract.*

# Simple Storage

**Simple Storage is a simple contract which is designed to store your favorite number.**

```
favoriteNum
```
*Your favorite number, which is retrieveable.*

```
Person
```
*Struct for storing multiple traits (datatypes) under a single variable.*

```
getPersonAndNum
```
*Array to retrieve traits from Person.*

```
getPersonNum
```
*Mapping which maps person name to their favorite number.*

```
setPerson()
```
*Define your person.*

```
setFavoriteNum()
```
*Define your favorite number.*
