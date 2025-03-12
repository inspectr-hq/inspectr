### **Inspectr - CloudEvent Types - v1**

### * Event Type Structure**###

 `dev.inspectr.[component].[resource].[version].[action](.[result]`)

dev.inspectr.operation.http.v1.<action>`

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
| `dev.inspectr.operation.http.v1.updated`   | Used for **modifying or retrying** a request.             |

### **CloudEvent Properties**

| **Property**      | **Type**            | **Description**                                                                                    |
| ----------------- | ------------------- | -------------------------------------------------------------------------------------------------- |
| `specversion`     | `string`            | CloudEvents **specification version** (always `"1.0"`).                                            |
| `id`              | `string` (UUID)     | A **unique identifier** for this event (UUID format).                                              |
| `type`            | `string`            | The **event type**, indicating what stage of the request-response lifecycle is being captured.     |
| `time`            | `string` (ISO 8601) | The **timestamp** when the event was emitted.                                                      |
| `source`          | `string`            | The **origin of the event** (e.g., `//ingress.inspectr.dev/TOPIC_NAME`).                           |
| `datacontenttype` | `string`            | The **format of the event payload** (`"application/json"`).                                        |
| `data`            | `object`            | The **actual Inspectr HTTP request-response event data** (this follows the Inspectr event schema). |
