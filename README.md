# Inspectr

> Inspectr – Simplifying API and Webhook debugging!

**Inspectr** is a lightweight and high-performance API Proxy for reviewing, analyzing, and debugging API requests and webhook events. 

Useful for testing integrations, monitoring incoming requests, reviewing past requests, or troubleshooting payload issues, Inspectr provides the insights you need.

<img src="https://raw.githubusercontent.com/inspectr-hq/inspectr/main/assets/inspectr-app.png" alt="Request Inspectr" width="80%">

<img src="https://raw.githubusercontent.com/inspectr-hq/inspectr/main/assets/inspectr-console.png" alt="Console Inspectr" width="80%">

## 💎 Features

- **Inspect API Requests** – View headers, query parameters, request bodies, and response details.
- **Analyze Webhook Events** – Capture and review webhook payloads from third-party services.
- **API Proxy** - Forwards incoming requests to a configured backend service and returns the backend response.
- **Real-time Logging** – Monitor incoming requests as they happen in your terminal and in the Inspectr UI.
- **History & Replay** – Review past requests with easy filtering and search options, and replay them as needed.
- **Public Exposure** - Expose your local service to be accessible for remote system, with the ability to define a secured,customizable subdomain.
- **Validation & Debugging** – Identify issues in request structures, missing parameters, and incorrect headers. View decoded JWT tokens for faster investigation.
- **Easy integration** – Capture requests through a Proxy or as Express middleware.
- **Lightweight & Fast** – Built for performance with minimal dependencies.

## 🚀 Quick Start

Install via brew or npm:

```bash
brew tap inspectr-hq/inspectr
brew install inspectr
```
or
```bash
npm install -g @inspectr/inspectr
```

Run Inspectr:

```bash
inspectr --listen=:8080 --backend=http://localhost:3000
```

Visit the UI: http://localhost:4004

Make your request to your backend 

```bash
curl http://localhost:8080/
```


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

Read the article [how to capture and debug API requests](https://github.com/inspectr-hq/inspectr?tab=readme-ov-file#inspecting-api-http-traffic)
with [Inspectr](https://github.com/inspectr-hq/inspectr) and inspect all the details in the Inspectr viewer.

### Public Exposure of Local Services

When developing locally, you often need to test integrations or share your local environment with external systems or team members. Inspectr Ingress provides a secure, easy-to-use solution for publicly exposing your local service without complicated setup or firewall adjustments.

- **Secure Public Access** – Create a secure public endpoint linked directly to your local development server.

- **Custom Subdomains** – Choose a unique, custom subdomain to clearly identify and easily share your endpoint.

- **Real-time Request Capture** – Monitor requests hitting your local service instantly in both the Inspectr UI and console.

- **AI services** – Seamlessly expose local AI and LLM models, enabling easy integration testing, collaboration, or demonstrations.

- **Collaboration-Friendly** – Quickly share your endpoint with colleagues, stakeholders, or external systems to streamline feedback and testing cycles.

Check out the [Inspectr documentation](https://github.com/inspectr-hq/inspectr?tab=readme-ov-file#exposing-local-services-publicly) to learn how simple it is to securely expose your local environment to the world.

### Webhook Capturing Service

When building applications that rely on webhooks or external callbacks, manually re-triggering a webhook can be a hassle - especially when dealing with third-party systems. With Inspectr, you can capture incoming webhook events automatically and replay requests when needed, eliminating the need for repeated triggering the events.

- **Expose** your local webhook endpoints to receive events from remote systems.
- **Catch** incoming webhook events without requiring a live backend.
- **Replay** captured webhook requests on demand for efficient debugging and testing.
- **Streamline** third-party integration debugging with real-time event insights.

<img src="https://raw.githubusercontent.com/inspectr-hq/inspectr/main/assets/inspectr-webhook.png" alt="Request Inspectr" width="80%">

Read the "[Inspecting Webhook Events](https://github.com/inspectr-hq/inspectr?tab=readme-ov-file#inspecting-webhook-events)"
article which explains how to use the [Inspectr](https://github.com/inspectr-hq/inspectr) to create a public webhook endpoint that catches all webhook events.

### Easy Front-end Request Inspection

For front-end applications, you can simply replace your API endpoint URL with the Inspectr Proxy URL. This enables you
to inspect & collect outgoing requests and their responses without any additional backend configuration. Combine the
Proxy with your existing front-end workflow for a transparent debugging experience.

- **Zero-config Integration** - Plug Inspectr into your front-end with only a base URL change. Works with any framework or HTTP client
- **Transparent Debugging** - View outgoing requests and responses without modifying the backend
- **Request History** – Easily track, search & filter past requests for analysis.

<img src="https://raw.githubusercontent.com/inspectr-hq/inspectr/main/assets/inspectr-app.png" alt="Request Inspectr" width="80%">

Have a look at the [Inspectr](https://github.com/inspectr-hq/inspectr?tab=readme-ov-file#inspecting-front-end-api-requests) documentation to see how easy it is to use
it in your front-end application.

# Components

Inspectr provides multiple components, that can be used in different ways, depending on your use case:

## 🔌 Request capturing

### 🔹 Proxy Inspectr

Run **Inspectr** locally as an **HTTP API proxy** to intercept and log traffic between your frontend and backend services. Great for local debugging and development.

### 🔹 Ingress Inspectr

**Expose** your **local API** or **AI service** securely to external systems through the hosted **Ingress Inspectr** service, enabling real-world integrations and testing without complex network configurations.

Your local running service can be exposed to the public internet via a private endpoint, without the need to deploy your service externally. The ingress is a pure forwarding service that delivers the remote requests to your local Inspectr setup.

## 🔍 Request inspections

### 🔹 Standalone App

Run **Inspectr** as an standalone application that can be deployed in various environments:

- **Localhost** – Self-hosted for debugging API requests or webhook events directly on your machine. Comes with the Proxy Inspectr.
- **Vercel** – Cloud-hosted for easy access and seamless integration.

More info can be found in the [Inspectr App](https://github.com/inspectr-hq/inspectr-app) repository.

# 🚀 Get started

## Install Inspectr

Installing Inspectr is easy with a variety of options to match your workflow. Whether you prefer the convenience of a package manager, the simplicity of a macOS installation, or direct access to pre-built binaries, we've got you covered.

<a href="https://github.com/inspectr-hq/inspectr/releases/latest" alt="Latest Stable Version">![github](https://raster.shields.io/github/v/release/inspectr-hq/inspectr.png)</a>
<a href="https://github.com/inspectr-hq/inspectr/releases/latest" alt="Total Downloads">![github](https://img.shields.io/github/downloads/inspectr-hq/inspectr/total)</a>

[//]: # (<a href="https://www.npmjs.com/package/@inspectr/inspectr" alt="Total Downloads">![npm]&#40;https://img.shields.io/npm/dw/@inspectr/inspectr.svg&#41;</a>)

### **NPM**

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

In this case you want to inspect webhook events sent from a third-party service. You may not have a backend service to forward the requests to—instead you simply want to capture and inspect the incoming webhook payloads. You can start Inspectr without a backend so that every incoming request receives a default 200 OK response while still capturing and broadcasting the webhook data:

```bash
./inspectr --listen=":8080" --catch=true --expose=true
```

<img src="https://raw.githubusercontent.com/inspectr-hq/inspectr/main/assets/inspectr-webhook.png" alt="Request Inspectr" width="80%">

**Explanation:**

- Via the remote Ingress Inspectr, a public URL is linked to the local Inspectr to be able receive remote webhook events.
- The local Inspectr that is connected, immediately returns a 200 OK response for every incoming webhook event.
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

This approach seamlessly integrates Inspectr into your front-end workflow, allowing you to monitor API interactions in
real-time without modifying the backend.

## Exposing Inspectr publicly with Inspect Ingress

> Inspectr Ingress is a public ingress service, that lets you easily share local web services publicly. It assigns a unique
> URL (like https://your-channel-abc.in.inspectr.dev) that forwards requests to your locally running server (
> e.g., http://localhost:3000), bypassing DNS and firewall hassles.

If you start your local Inspectr with `--expose`, your local service will be exposed publicly. 
Optionally, use `--channel` to request your preferred subdomain, if you have not preferred `--channel`, a random channel will be selected. A security code to protect your channel & subdomain will be generated or it can be set to your preference, using the `channel-code` parameter.

> [!NOTE]
> Inspectr will use the `channel`  to create subdomains on `in-spectr.dev` (notice the -)

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

Your service is now available on https://your-channel-abc.in-spectr.dev

```bash
curl https://your-channel-abc.in-spectr.dev
```

and locally on http://localhost:8080

```bash
curl http://localhost:8080
```

This will:

- Expose the proxy publicly via Inspectr Ingress (attempting to use the subdomain `your-channel-abc` on `https://in-spectr.dev`), forwarding requests to the
  local Inspectr on `8080`.
- The local Inspectr listens on port `8080` forward local and remote requests to the backend at http://localhost:30000.
- Print the received requests in the terminal
- Show the captured data real-time in Inspectr App in your browser   

## How It Works

1. Proxy Mode:
   
   The proxy listens on the specified `--listen` address. If a backend is defined via `--backend`, it forwards the
   incoming HTTP request to that backend and relays the response back to the client. If `--ingress` is enabled, the
   proxy is exposed publicly via the Inspectr Ingress service.

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

## Configuration options

### Command-Line Options

| Flag             | Type    | Default   | Description                                                                                                                    |
|------------------|---------|-----------|--------------------------------------------------------------------------------------------------------------------------------|
| `--listen`       | string  | `:8080`   | Address (port) on which the Inspectr proxy listens for incoming HTTP requests.                                                 |
| `--backend`      | string  | `(empty)` | Backend service address (e.g. "http://localhost:3000"). If empty, the proxy returns a default 200 OK response.                 |
| `--catch`        | boolean | `true`    | Enable catch mode (returns 200 OK) if no backend is configured.                                                                |
| `--print`        | boolean | `true`    | Print a color‑coded summary of each request/response to the console.                                                           |
| `--app`          | boolean | `true`    | Start/stops the embedded Inspectr App UI & API.                                                                                |
| `--app-port`     | string  | `4004`    | Port on which the Inspectr App UI runs when `--app` is enabled.                                                                |
| `--expose`       | boolean | `false`   | Enable public access to your local Inspectr proxy via Inspectr Ingress.                                                        |
| `--channel`      | string  | ``        | Preferred channel name to be used as a subdomain on the Inspectr Ingress.                                                      |
| `--channel-code` | string  | ``        | Configure the Security code required to access your Ingress channel.                                                           |
| `--config`       | string  | `(empty)` | Optional path to a Inspectr YAML configuration file. If omitted, a file named .inspectr.yaml will be auto-detected if present. |
| `--apiSecret`    | string  | `(empty)` | Configure the API secret to secure your Inspectr administration API.                                                           |
| `--version`      | string  | `(empty)` | Returns the version of Inspectr.                                                                                               |
| `--log-level`    | string  | `(empty)` | Set the desired log level (none, debug, info, warn, error, fatal, panic)                                                       |

### YAML Configuration File (.inspectr.yaml) Options  

In addition to command-line flags, you can configure Inspectr using a YAML file. 

Create a file named `.inspectr.yaml` in your working directory or pass its path using the `--config` flag. The parameters in the YAML file correspond to the  
command-line flags. Note: Any parameter provided via the command line will override the corresponding value in the YAML  
file.  


| Flag            | Type    | Default   | Description                                                                                                                    |
|-----------------|---------|-----------|--------------------------------------------------------------------------------------------------------------------------------|
| `--listen`      | string  | `:8080`   | Address (port) on which the Inspectr proxy listens for incoming HTTP requests.                                                 |
| `--backend`     | string  | `(empty)` | Backend service address (e.g. "http://localhost:3000"). If empty, the proxy returns a default 200 OK response.                 |
| `--catch`       | boolean | `true`    | Enable catch mode (returns 200 OK) if no backend is configured.                                                                |
| `--print`       | boolean | `true`    | Print a color‑coded summary of each request/response to the console.                                                           |
| `--app`         | boolean | `true`    | Start/stops the embedded Inspectr App UI & API.                                                                                |
| `--appPort`     | string  | `4004`    | Port on which the Inspectr App UI runs when `--app` is enabled.                                                                |
| `--expose`      | boolean | `false`   | Enable public access to your local Inspectr proxy via Inspectr Ingress.                                                        |
| `--channel`     | string  | ``        | Preferred channel name to be used as a subdomain on the Inspectr Ingress.                                                      |
| `--channelCode` | string  | ``        | Configure the Security code required to access your Ingress channel.                                                           |
| `--config`      | string  | `(empty)` | Optional path to a Inspectr YAML configuration file. If omitted, a file named .inspectr.yaml will be auto-detected if present. |
| `--apiSecret`   | string  | `(empty)` | Configure the API secret to secure your Inspectr administration API.                                                           |
| `--version`     | string  | `(empty)` | Returns the version of Inspectr.                                                                                               |
| `--logLevel`    | string  | `(empty)` | Set the desired log level (none, debug, info, warn, error, fatal, panic)                                                       |


Here’s an example .inspectr.yaml:  

```yaml
listen: ":8080" # Port where Inspectr listens 
backend: "http://localhost:3000"  # Backend to forward requests
print: true  # Log requests in console
app: true  # Start UI App
appPort: "9999" # Configure a custom Port for App 
```
