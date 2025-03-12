## Inspectr - HTTP Operation schema

This schema captures **HTTP request-response operations** in Inspectr, including:

- Incoming request details
- Response details
- Timing information
- Metadata for tracking and debugging

---

### **📌 Top-Level Properties**

| **Property**     | **Type** | **Description**                                                                          |
| ---------------- | -------- | ---------------------------------------------------------------------------------------- |
| `version`        | `string` | The schema version (e.g., `"1.0"`).                                                      |
| `operation_id`   | `string` | A **unique identifier** for this specific HTTP request-response transaction.             |
| `correlation_id` | `string` | A **trace ID** that links multiple operations together (useful for distributed tracing). |

---

### **📌 Request Details (`request`)**

| **Property**   | **Type**  | **Description**                                                        |
| -------------- | --------- | ---------------------------------------------------------------------- |
| `method`       | `string`  | The **HTTP method** used in the request (`GET`, `POST`, etc.).         |
| `url`          | `string`  | The **full URL** of the request (including query parameters).          |
| `server`       | `string`  | The **hostname or IP** of the server handling the request.             |
| `path`         | `string`  | The **request path** (e.g., `"/api/users"`, without query parameters). |
| `client_ip`    | `string`  | The **IP address** of the client that initiated the request.           |
| `http_version` | `string`  | The **HTTP version** (`HTTP/1.1`, `HTTP/2`).                           |
| `headers`      | `array`   | A list of **HTTP headers** sent with the request.                      |
| `headers_size` | `integer` | The **size** of request headers (in bytes).                            |
| `query_params` | `array`   | A list of **query parameters** from the URL (e.g., `?sort=asc`).       |
| `cookies`      | `array`   | Any **cookies** included in the request.                               |
| `body`         | `string`  | The **raw request body** (if any, e.g., JSON or form data).            |
| `body_size`    | `integer` | The **size** of the request body (in bytes).                           |
| `timestamp`    | `string`  | The **timestamp** when the request was received (`ISO 8601` format).   |

#### **Example Request**

json

CopyEdit

`{   "method": "POST",   "url": "http://localhost:3000/api/users?sort=asc",   "server": "localhost:3000",   "path": "/api/users",   "client_ip": "192.168.1.100",   "http_version": "HTTP/1.1",   "headers": [     { "name": "User-Agent", "value": "MyBrowser/1.0" },     { "name": "Content-Type", "value": "application/json" }   ],   "headers_size": 350,   "query_params":  [     { "name": "sort", "value": "asc" }   ],   "cookies": [],   "body": "{\"name\":\"Marco Polo\",\"email\":\"marco@polo-ventures.com\"}",   "body_size": 70,   "timestamp": "2025-02-14T15:00:00.120Z" }`

---

### **📌 Response Details (`response`)**

| **Property**   | **Type**  | **Description**                                                       |
| -------------- | --------- | --------------------------------------------------------------------- |
| `status`       | `integer` | The **HTTP status code** (`200`, `404`, `500`, etc.).                 |
| `status_text`  | `string`  | A **human-readable status message** (`"OK"`, `"Created"`, etc.).      |
| `http_version` | `string`  | The **HTTP version** (`HTTP/1.1`, `HTTP/2`).                          |
| `headers`      | `array`   | A list of **HTTP headers** included in the response.                  |
| `headers_size` | `integer` | The **size** of response headers (in bytes).                          |
| `cookies`      | `array`   | Any **cookies** set in the response.                                  |
| `body`         | `string`  | The **raw response body** (e.g., JSON, HTML, or plain text).          |
| `body_size`    | `integer` | The **size** of the response body (in bytes).                         |
| `timestamp`    | `string`  | The **timestamp** when the response was received (`ISO 8601` format). |

#### **Example Response**

json

CopyEdit

`{   "status": 201,   "status_text": "Created",   "http_version": "HTTP/1.1",   "headers": [     { "name": "Content-Type", "value": "application/json" },     { "name": "Server", "value": "ExampleServer/1.0" }   ],   "headers_size": 220,   "cookies": [],   "body": "{\"success\":true,\"id\":123}",   "body_size": 75,   "timestamp": "2025-02-14T15:01:00.120Z" }`

---

### **📌 Timing Information (`timing`)**

| **Property** | **Type**  | **Description**                                                      |
| ------------ | --------- | -------------------------------------------------------------------- |
| `request`    | `string`  | The **timestamp** when the request was first received.               |
| `response`   | `string`  | The **timestamp** when the response was sent back.                   |
| `duration`   | `integer` | The **total time taken** from request to response (in milliseconds). |

#### **Example Timing**

json

CopyEdit

`{   "request": "2025-02-22T12:34:56.789Z",   "response": "2025-02-22T12:34:56.912Z",   "duration": 123 }`

---

### **📌 Metadata (`meta`)**

| **Property**     | **Type** | **Description**                                           |
| ---------------- | -------- | --------------------------------------------------------- |
| `proxy_instance` | `string` | The **Inspectr proxy instance** that handled the request. |

#### **Example Meta**

json

CopyEdit

`{   "proxy_instance": "inspectr-proxy-1" }`
