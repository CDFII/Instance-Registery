# Instance-Registery
Module to register/add attributes to specific instance's, since Roblox won't allow developers to access or read `UniqueId` property of `Instance` classes.

## Functions
### SingleRegistery.luau
| Function/Method  | Params                   | Description
| ---              | ---                      | ---
| `register`       | instance: Instance       | Registers the given instance in dictionary, optionally adds attribute to instance for easy tracking
|                  | id: string | number      | 
|                  | addIdAttribute: boolean? |
| `deregister`     | id: string | number      | Deregisters instance and removes the id attribute, if any.
| `get`            | id: string | number      | Returns instance associated with given id
| `getall`         | *None*                   | Returns whole dictionary, keys being id's and values being instances

### MultiRegistery.luau
> [!NOTE]
> This is work in progress version of registery service, in which you can create multiple for different purposes
