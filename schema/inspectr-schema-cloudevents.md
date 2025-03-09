### **Inspectr - CloudEvent Types - v1**

### * Event Type Structure**###

Domain-based: `dev.[inspectr].[component].[resource].[action].[result]`



dev.inspectr.v1.operation.http.<action>`

### Inspectr  `<action>`

| **Action Type** | **Meaning**                         | **When Used?**                      |
| --------------- | ----------------------------------- | ----------------------------------- |
| `received`      | Captures only the request           | When the request arrives            |
| `completed`     | Full request-response transaction   | After response is received          |
| `failed`        | Captures errors/timeouts            | When an operation fails             |
| `updated`       | Used for modifying a previous event | If a request is retried or modified |

### Event Types

| **Event Type**                             | **Description**                                           |
| ------------------------------------------ | --------------------------------------------------------- |
| `dev.inspectr.operation.http.v1.received`  | Emitted when Inspectr **receives an HTTP request**.       |
| `dev.inspectr.operation.http.v1.completed` | Emitted when the full **request-response cycle is done**. |
| `dev.inspectr.operation.http.v1.failed`    | Emitted if the request **times out or fails**.            |
| `dev.inspectr.operation.http.updated`      | Used for **modifying or retrying** a request.             |
