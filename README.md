# Inspectr

<img src="https://inspectr.dev/brand_logo_color.svg" alt="Inspectr logo" width="56" align="left" />

<blockquote>
  <p>Inspectr – Simplifying API, MCP Server and Webhook debugging!</p>
</blockquote>

<br clear="left" />

<a href="https://github.com/inspectr-hq/inspectr/releases/latest" alt="Latest Stable Version">![github](https://raster.shields.io/github/v/release/inspectr-hq/inspectr.png)</a>
<a href="https://github.com/inspectr-hq/inspectr/releases/latest" alt="Total Downloads">![github](https://img.shields.io/github/downloads/inspectr-hq/inspectr/total)</a>

**Inspectr** is a lightweight and high-performance API Proxy for reviewing, analyzing, and debugging API requests, MCP tool calls and webhook events, complete with a built-in tunnel/expose option for sharing local services.

Useful for testing integrations, monitoring incoming requests, reviewing past requests, or troubleshooting payload issues, Inspectr provides the insights you need.

<img src="https://inspectr.dev/screens/inspectr-app-v150.png" alt="Request Inspectr" width="80%">

<img src="https://raw.githubusercontent.com/inspectr-hq/inspectr/main/assets/inspectr-console.png" alt="Console Inspectr" width="80%">

## 💎 Features

- **Inspect API Requests** – View headers, query parameters, request bodies, and response details.
- **Analyze Webhook Events** – Capture and review webhook payloads from third-party services.
- **API Proxy** - Forward incoming requests to a configured backend service and returns the backend response.
- **Real-time Logging** – Monitor incoming requests as they happen in your terminal and in the Inspectr UI.
- **History & Replay** – Review past requests with easy filtering and search options, and replay them as needed.
- **Public Exposure** - Expose or tunnel your local API service, AI model, or MCP server to be accessible for remote systems, with the ability to define a secured, customizable subdomain.
- **MCP Insights** - View the tools, prompts, resources calls towards your MCP server, made by LLMs. Analyse the input, the returned output and the estimated token usage.
- **Rules Engine** - Automatically classify, enrich, and tag requests using powerful condition–action rules.
- **Trace Grouping** - Visualize end-to-end flows with grouped spans showing each step across request & events.
- **Mock Backend** - Create a mocked service based on an OpenAPI specification for testing and development.
- **Guard Authentication** - Protect local services with API key authentication.
- **Response Overrides** - Simulate API behavior by setting special `inspectr-` headers to control response status codes, delays, content types, and example payloads.
- **Validation & Debugging** – Identify issues in request structures, missing parameters, and incorrect headers. View decoded JWT tokens for faster investigation.
- **Easy integration** – Capture requests and webhooks through a Proxy.
- **Lightweight & Fast** – Built for performance with minimal dependencies.

Visit the website [https://inspectr.dev](https://inspectr.dev) for more info.

## 🚀 Quick Start

### Launch Inspectr

No installation needed — just run:

```bash
npx @inspectr/inspectr --backend=http://localhost:3000
```

Visit the UI at [http://localhost:4004](http://localhost:4004).

Make your request to your backend through Inspectr:

```bash
curl http://localhost:8080/
```

Review the [Quick Start guide](https://inspectr.dev/docs/getting-started/quick-start/) for more info.

## 🎯 Use Cases

Inspectr is versatile enough to support your development and debugging workflows:

### Debugging During Development

During the initial stages of application development, it’s essential to see exactly what requests are hitting your
endpoints. The Inspectr App allows you to:

- **Real-time Monitoring** - Inspect requests as they happen
- **Request inspection** – Quickly identify malformed requests or missing parameters.
- **Error detection** - Correlate problematic 4xx/5xx responses with the exact request data.
- **Insights in Integrations** – Overcome outdated or incomplete documentation with detailed request insights for building reliable integrations.

<img src="https://raw.githubusercontent.com/inspectr-hq/inspectr/main/assets/inspectr-app.png" alt="Request Inspectr" width="80%">

<img src="https://raw.githubusercontent.com/inspectr-hq/inspectr/main/assets/inspectr-console.png" alt="Console Inspectr" width="80%">

Read the article [how to capture and debug API requests](https://inspectr.dev/docs/guides/api-traffic-debugging/) for all the details.

### Public Exposure of Local Services

When developing locally, you often need to test integrations or share your local environment with external systems or team members. Inspectr Ingress provides a secure, easy-to-use tunnel solution for publicly exposing your local service without complicated setup or firewall adjustments.

- **Secure Public Access** – Create a secure tunnel and public endpoint linked directly to your local development server.

- **Custom Subdomains** – Choose a unique, custom subdomain to clearly identify and easily share your endpoint.

- **Real-time Request Capture** – Monitor requests hitting your tunneled local service instantly in both the Inspectr UI and console.

- **AI services** – Seamlessly expose local AI, LLM models or MCP servers, enabling easy integration collaboration, or demonstrations from your laptop

- **Collaboration-Friendly** – Quickly share your endpoint with colleagues, stakeholders, or external systems to streamline feedback and testing cycles.

Check out the guide on [Exposing Services Publicly](https://inspectr.dev/docs/guides/exposing-publicly/) in the Inspectr documentation to learn how simple it is to securely expose your local environment to the world.

### Webhook Capturing Service

When building applications that rely on webhooks or external callbacks, manually re-triggering a webhook can be a hassle - especially when dealing with third-party systems. With Inspectr, you can capture incoming webhook events automatically and replay requests when needed, eliminating the need for repeated triggering the events.

- **Expose** your local webhook endpoints to receive events from remote systems.
- **Catch** incoming webhook events without requiring a live backend.
- **Replay** captured webhook requests on demand for efficient debugging and testing.
- **Streamline** third-party integration debugging with real-time event insights.

<img src="https://raw.githubusercontent.com/inspectr-hq/inspectr/main/assets/inspectr-webhook.png" alt="Request Inspectr" width="80%">

Read the "[Inspecting Webhook Events](https://inspectr.dev/docs/guides/webhook-debugging/)"
article which explains how to use Inspectr to create a public webhook endpoint that catches all webhook events.

### Easy Front-end Request Inspection

For front-end applications, you can simply replace your API endpoint URL with the Inspectr Proxy URL. This enables you
to inspect & collect outgoing requests and their responses without any additional backend configuration. Combine the
Proxy with your existing front-end workflow for a transparent debugging experience.

- **Zero-config Integration** - Plug Inspectr into your front-end with only a base URL change. Works with any framework or HTTP client.
- **Transparent Debugging** - View outgoing requests and responses without modifying the backend.
- **Request History** – Easily track, search & filter past requests for analysis.

<img src="https://raw.githubusercontent.com/inspectr-hq/inspectr/main/assets/inspectr-app.png" alt="Request Inspectr" width="80%">

Have a look at the [Inspectr documentation](https://inspectr.dev/docs/guides/frontend-inspection/) to see how easy it is to use
it in your front-end application.

### Mock & Override responses

Inspectr Proxy includes a powerful mock mode and response override controls, allowing you to simulate backend behavior using an OpenAPI specification. This is especially useful for:

- **API Development**: Test your frontend against a mock API before the real backend is ready
- **API Testing**: Simulate various response scenarios to validate client behavior
- **Demos and Presentations**: Create reliable demos without depending on external services
- **Offline Development**: Work on your application without needing access to the actual backend

In the guides [Mocking API Responses](https://inspectr.dev/docs/guides/mocking/) and [Response Overrides](https://inspectr.dev/docs/guides/response-override/), we explain step by step how to setup a mock API.

## Access Authentication

Sometimes your backend or mock API doesn't include authentication. Inspectr can introduce a guard, a simple auth layer, to secure any service it proxies.

### How It Works

Start Inspectr with authentication enabled and a secret:

```bash
inspectr --auth-enabled=true --auth-secret=mysecret
```

Inspectr prints two **API key** headers in the terminal:

```
inspectr-auth-key: mysecret
inspectr-auth-token: <jwt>
```

Send **one** of these headers with each request.

| Header                | Description                                                |
| --------------------- |------------------------------------------------------------|
| `inspectr-auth-key`   | Encrypted secret for quick local testing                   |
| `inspectr-auth-token` | JWT signed with the secret; expires per `--auth-token-ttl` |

Any Requests missing a valid key or token get `401 Unauthorized`.

Visit the documentation guide [Access Authentication](https://inspectr.dev/docs/guides/guides/access-authentication/) for more info.

# 🚀 Get started

## Install Inspectr

Installing Inspectr is easy with a variety of options to match your workflow. Whether you prefer the convenience of a package manager, the simplicity of a macOS installation, or direct access to pre-built binaries, we've got you covered.

<a href="https://github.com/inspectr-hq/inspectr/releases/latest" alt="Latest Stable Version">![github](https://raster.shields.io/github/v/release/inspectr-hq/inspectr.png)</a>
<a href="https://github.com/inspectr-hq/inspectr/releases/latest" alt="Total Downloads">![github](https://img.shields.io/github/downloads/inspectr-hq/inspectr/total)</a>

[//]: # (<a href="https://www.npmjs.com/package/@inspectr/inspectr" alt="Total Downloads">![npm]&#40;https://img.shields.io/npm/dw/@inspectr/inspectr.svg&#41;</a>)

**NPM**

Install Inspectr via npm using the following command:

```bash
npm install -g @inspectr/inspectr
```

**Homebrew**

or install on Mac via Homebrew

```bash
brew tap inspectr-hq/inspectr
brew install inspectr
```

**Download Pre-compiled Binaries**

Download the [latest binaries](https://github.com/inspectr-hq/inspectr/releases) from the [Releases](https://github.com/inspectr-hq/inspectr/releases) page.

**Docker**

Run Inspectr as a container using images hosted on [GitHub Container Registry](https://ghcr.io/inspectr-hq/inspectr:latest):

```bash
docker pull ghcr.io/inspectr-hq/inspectr:latest
docker run --rm -p 4004:4004 -p 8080:8080 inspectr
```

## Start Inspectr

**Running Inspectr**

Once installed, you can run Inspectr with your desired configuration. 

1. Start your local service (example on port 3000 )

2. Start Inspectr  

```bash
./inspectr --backend="http://localhost:3000"
```

3. Open the Inspectr App

After starting Inspectr, the console output shows all the info to open the Inspectr App. 

<img src="https://raw.githubusercontent.com/inspectr-hq/inspectr/main/assets/inspectr-output.png" alt="Output Inspectr" width="80%">

Visit [http://localhost:4004](http://localhost:4004) to view the Inspectr UI.

4. Make API requests

Inspectr is ready-for-action, so you can start making requests to the inspectr. 

```bash
curl http://localhost:8080/
```

<img src="https://raw.githubusercontent.com/inspectr-hq/inspectr/main/assets/inspectr-hello.png" alt="Inspectr" width="80%">

---

# Exposing Inspectr publicly with Inspect Ingress

> Inspectr Ingress is a public ingress service, that lets you easily share local web services publicly. It assigns a unique
> URL (like [https://your-channel-abc.in-spectr.dev](https://your-channel-abc.in-spectr.dev)) that forwards requests to your locally running server (
> e.g., [http://localhost:3000](http://localhost:3000)), bypassing DNS and firewall hassles.

## Configuration

If you start your local Inspectr with `--expose`, your local service will be exposed publicly. 
Optionally, use `--channel` to request your preferred subdomain, if you have not preferred `--channel`, a random channel will be selected. A security code to protect your channel & subdomain will be generated or it can be set to your preference, using the `channel-code` parameter.

> [!NOTE]
> Inspectr will use the `channel` to create subdomains on `in-spectr.dev` (notice the -)

For example:

```bash
./inspectr --listen=":8080" --backend="http://localhost:3000" --expose --channel="your-channel-abc"
```

or by executing `./inspectr` with the configuration set in `.inspectr.yaml` file

```yaml
listen: ":8080"
backend: "http://localhost:3000"
expose: true
channel: "your-channel-abc"
```

Your service is now available on [https://your-channel-abc.in-spectr.dev](https://your-channel-abc.in-spectr.dev)

```bash
curl https://your-channel-abc.in-spectr.dev
```

and locally on [http://localhost:8080](http://localhost:8080)

```bash
curl http://localhost:8080
```

This will:

- Expose the proxy publicly via Inspectr Ingress (attempting to use the subdomain `your-channel-abc` on `https://in-spectr.dev`), forwarding requests to the
  local Inspectr on `8080`.
- The local Inspectr listens on port `8080` forward local and remote requests to the backend at [http://localhost:30000](http://localhost:30000).
- Print the received requests in the terminal
- Show the captured data real-time in Inspectr App in your browser

## How It Works

1. Proxy Mode:
   
   Your local proxy Inspectr instance listens on the specified `--listen` address. If a backend is defined via `--backend`, it forwards the
   incoming HTTP request to that backend and relays the response back to the client. If `--ingress` is enabled, the proxy Inspectr is exposed publicly via the Inspectr Ingress service.

2. Data Capture & Wrapping:
   
   All request and response details are captured into an Inspectr Operation data structure. This data is then wrapped in a
   CloudEvents envelope.

3. Embedded Inspectr App:
   
   The embedded Inspectr App server runs on the port specified by `--app-port` and serves the Inspectr UI for real‑time
   updates.

4. Broadcasting & Logging:
   
      - If the `--print` flag is enabled, a color‑coded summary of each transaction is printed to the console.
      - If the embedded app mode is enabled (`--app`), the data is also broadcast internally via SSE.

---

# Usage

Inspectr is easy to use and offers a number of configuration options, depending on your usage.
Below are some practical examples.

### Inspecting API HTTP Traffic

Suppose you have a backend service running on port
`3000`. You want to inspect all HTTP request and responses sent to the backend service, log the details to the console, and view the request and response data in real time via the Inspectr UI.

You would start your Inspectr as follows:

```bash
./inspectr --listen=":8080" --backend="http://localhost:3000"
```

<img src="https://raw.githubusercontent.com/inspectr-hq/inspectr/main/assets/inspectr-app.png" alt="Request Inspectr" width="80%">

<img src="https://raw.githubusercontent.com/inspectr-hq/inspectr/main/assets/inspectr-console.png" alt="Console Inspectr" width="80%">

**Explanation:**

- The proxy listens on port `8080` and forwards requests to the backend at "http://localhost:3000.
- Captured request and response data are printed to the console.
- Captured data is also sent to the Inspectr UI service at default port `4004`. Visit http://localhost:4004 to view the Inspectr UI.

### Inspecting Webhook Events

In this case, you want to inspect webhook events sent from a third-party service. You may not have a backend service to forward the requests to—instead you simply want to capture and inspect the incoming webhook payloads. You can start Inspectr without a backend so that every incoming request receives a default 200 OK response while still capturing and broadcasting the webhook data:

```bash
./inspectr --listen=":8080" --catch=true --expose=true
```

<img src="https://raw.githubusercontent.com/inspectr-hq/inspectr/main/assets/inspectr-webhook.png" alt="Request Inspectr" width="80%">

**Explanation:**

- Via the remote Ingress Inspectr, a public URL is linked to the local Inspectr to be able to receive remote webhook events.
- The local Inspectr, which is connected, immediately returns a 200 OK response for every incoming webhook event.
- The webhook event payload details are captured and printed to the console.
- The captured webhook event is sent to the Inspectr App. Visit http://localhost:40004 to see the webhook events in real time.

### Inspecting Front-End API Requests

For front-end applications, you can simply replace your API endpoint URL with the Inspectr URL. All received request on Inspectr, will be forwarded to the API backend service, while this enables you to inspect and collect outgoing requests and their responses without any additional backend configuration. 
By using Inspectr, you gain visibility into how your front-end interacts with APIs, making debugging easier without modifying the client-side code.

**Example: Using Inspectr Proxy in a Front-End App**

If your application makes requests to an API at:

```js
fetch("https://api.example.com/data", {
  method: "GET",
  headers: {
    "Authorization": "Bearer token",
    "Content-Type": "application/json"
  }
});
```

You can modify the endpoint to route through Inspectr:

```js
fetch("http://localhost:8080/data", {
  method: "GET",
  headers: {
    "Authorization": "Bearer token",
    "Content-Type": "application/json"
  }
});
```

Configure Inspectr to forward requests to the API endpoints:

```bash
./inspectr --listen=":8080" --backend="https://api.example.com"
```

**Explanation:**

- The front-end makes requests to http://localhost:8080 instead of the original API.

- Inspectr forwards requests to https://api.example.com and relays the responses.

- All captured requests and responses are logged in the Inspectr App (http://localhost:4004).

- If needed, you can enable "expose" to make the API endpoints publicly available

```bash
./inspectr --listen=":8080" --backend="https://api.example.com"  --expose=true
```

This approach seamlessly integrates Inspectr into your front-end workflow, allowing you to monitor API interactions in real-time without modifying the backend.

### Mocking API Responses with Inspectr

> [!IMPORTANT]  
> This feature is early-stage and considered **beta**.

Inspectr supports **mock mode**, allowing you to simulate API backend responses based on an OpenAPI specification. This is particularly useful during front-end development, testing, or when your actual backend is unavailable or incomplete.

By enabling mock mode, Inspectr returns realistic, static responses as defined in your OpenAPI specification without the need of developing the actual service.

> [!NOTE]  
> Inspectr is using the powerfull [Prism](https://github.com/stoplightio/prism) package from [StopLight](https://stoplight.io/open-source/prism)

Launch Inspectr in static mock mode with your OpenAPI specification:

```bash
./inspectr --listen=":8080" --mock-backend="./openapi.yaml"
```

[//]: # (If you are looking for more advanced API mocking solutions, have a look at [Prism]&#40;https://stoplight.io/open-source/prism&#41;, [MockerServer.og]&#40;https://www.mocks-server.org/&#41; or [Microcks]&#40;https://microcks.io/&#41;)

### **Explanation:**

- Inspectr matches incoming requests against your OpenAPI specification (`openapi.yaml`) and provides mock responses based on the example(s) in OpenAPI.

- If Inspectr cannot match a request with the specification, it returns a default `200 OK` response with an empty body.

- All incoming requests and mock responses are logged and visible in the Inspectr App (`http://localhost:4004`).

If needed, you can also combine mock mode with exposing the mocked API publicly:

```
./inspectr --listen=":8080" --mock-backend="./openapi.yaml" --expose=true
```

### Overriding API Responses

Inspectr supports **response overrides**, allowing you to control how requests are responded during **mock** or **catch** mode using custom headers. This is useful for testing client behavior against simulated scenarios like timeouts, error responses, or simulating non-expected status codes.

By adding special `inspectr-` headers to your request, you can manipulate how Inspectr responds—regardless of what’s defined in the OpenAPI spec or what the backend returns.

Here’s how you can use these headers:

| Header                           | Description                                                                | Supported modes                |
| -------------------------------- | -------------------------------------------------------------------------- |--------------------------------|
| `inspectr-response-delay`        | Introduce artificial delay in milliseconds (e.g. `2000`)                   | - catch<br/>- mock<br/>- proxy |
| `inspectr-response-status`       | Override the HTTP status code (e.g. `503`, `404`)                          | - catch<br/>- mock             |
| `inspectr-response-content-type` | Set a custom `Content-Type` (e.g. `application/xml`)                       | - catch<br/>- mock             |
| `inspectr-response-example`      | Force a specific OpenAPI response example to be used (e.g. `errorExample`) | - mock                         |

#### **Example usage :**

```bash
curl -X GET http://localhost:8080/api/items \   
-H "inspectr-response-status: 503" \   
-H "inspectr-response-delay: 2000" \   
-H "inspectr-response-content-type: application/json" \   
-H "inspectr-response-example: errorExample"
```

### **Explanation:**

- These headers let you simulate slow networks, unexpected status codes, or non-default examples.

- In **mock mode**, the override headers modify the mock response generated from the OpenAPI spec.

- In **catch mode**, the override headers modify response returned from the generic catch response.

- All overridden responses are logged and shown in the Inspectr App (`http://localhost:4004`).

> [!TIP]  
> Combine mock and override to simulate full API behavior — including edge cases — without writing any backend logic.

---

# Configuration options

## Command-Line Options

| Flag             | Type    | Default          | Description                                                                                                                    |
|------------------|---------|------------------|--------------------------------------------------------------------------------------------------------------------------------|
| `--listen`       | string  | `:8080`          | Address (port) on which the Inspectr proxy listens for incoming HTTP requests.                                                 |
| `--backend`      | string  | `(empty)`        | Backend service address (e.g. "http://localhost:3000"). If empty, the proxy returns a default 200 OK response.                 |
| `--mock-backend` | string  | `(empty)`        | Path to an OpenAPI specification file to mock a backend based on the OpenAPI definition.                                       |
| `--catch`        | boolean | `true`           | Enable catch mode (returns 200 OK) if no backend is configured.                                                                |
| `--expose`       | boolean | `false`          | Enable a tunnel as public access to your local Inspectr proxy via Inspectr Ingress.                                            |
| `--channel`      | string  | ``               | Preferred channel name to be used as a subdomain on the Inspectr Ingress.                                                      |
| `--channel-code` | string  | ``               | Configure the Security code required to access your Ingress channel.                                                           |
| `--config`       | string  | `.inspectr.yaml` | Optional path to a Inspectr YAML configuration file. If omitted, a file named .inspectr.yaml will be auto-detected if present. |
| `--auth-enabled` | boolean | `false`          | Enable API key authentication for proxied requests                                                                             |
| `--auth-secret`  | string  | `(none)`         | Guard secret used to generate API keys                                                                                         |
| `--version`      | boolean |                  | Returns the version of Inspectr.                                                                                               |

Inspectr can easily be configured using a wide range of command-line flags.
See the online documentation [CLI Configuration Options](https://inspectr.dev/docs/configuration/cli-options/) for more configuration options.

## YAML Configuration File (.inspectr.yaml) Options

In addition to command-line flags, you can configure Inspectr using a YAML file. 

Create a file named `.inspectr.yaml` in your working directory or pass its path using the `--config` flag. The parameters in the YAML file correspond to the  
command-line flags. Note: Any parameter provided via the command line will override the corresponding value in the YAML  
file.  

| Flag           | Type    | Default          | Description                                                                                                                    |
|----------------|---------|------------------|--------------------------------------------------------------------------------------------------------------------------------|
| `listen`       | string  | `:8080`          | Address (port) on which the Inspectr proxy listens for incoming HTTP requests.                                                 |
| `backend`      | string  | `(empty)`        | Backend service address (e.g. "http://localhost:3000"). If empty, the proxy returns a default 200 OK response.                 |
| `mockBackend`  | string  | `(empty)`        | Path to an OpenAPI specification file to mock a backend based on the OpenAPI definition.                                       |
| `catch`        | boolean | `true`           | Enable catch mode (returns 200 OK) if no backend is configured.                                                                |
| `expose`       | boolean | `false`          | Enable a tunnel as public access to your local Inspectr proxy via Inspectr Ingress.                                            |
| `channel`      | string  | ``               | Preferred channel name to be used as a subdomain on the Inspectr Ingress.                                                      |
| `channelCode`  | string  | ``               | Configure the Security code required to access your Ingress channel.                                                           |
| `auth-enabled` | boolean | `false`          | Enable API key authentication for proxied requests                                                                             |
| `auth-secret`  | string  | `(none)`         | Guard secret used to generate API keys                                                                                         |
| `version`      | boolean |                  | Returns the version of Inspectr.                                                                                               |

The list above is just a sample of all available configuration options.
Visit the online documentation about [YAML Configuration File Options](https://inspectr.dev/docs/configuration/yaml-config/) for a complete list.

Here’s an example .inspectr.yaml:  

```yaml
listen: ":8080" # Port where Inspectr listens 
backend: "http://localhost:3000"  # Backend to forward requests
print: true  # Log requests in console
app: true  # Start UI App
appPort: "9999" # Configure a custom Port for App 
```
