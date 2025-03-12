# Inspectr

> Inspectr – Simplifying API and Webhook debugging!

**Inspectr** is a lightweight and high-performance API Proxy for reviewing, analyzing, and debugging API requests and webhook events. 

Useful for testing integrations, monitoring incoming requests, reviewing past requests, or troubleshooting payload issues, Inspectr provides the insights you need.

<img src="https://raw.githubusercontent.com/inspectr-hq/inspectr/main/assets/inspectr-app.png" alt="Request Inspectr" width="80%">

<img src="https://raw.githubusercontent.com/inspectr-hq/inspectr/main/assets/inspectr-console.png" alt="Console Inspectr" width="80%">

## 💎 Features

- **Inspect API Requests** – View headers, query parameters, request bodies, and response details.
- **Analyze Webhook Events** – Capture and review webhook payloads from third-party services.
- **API Proxy:** Forwards incoming requests to a configured backend service and returns the backend response.
- **Real-time Logging** – Monitor incoming requests as they happen in your terminal and in the Inspectr UI.
- **History & Replay** – Review past requests with easy filtering and search options, and replay them as needed.
- **Public Exposure** - Expose your local service to be accessible for remote system, with the ability to define a custom subdomain.
- **Validation & Debugging** – Identify issues in request structures, missing parameters, and incorrect headers. View decoded JWT tokens for faster investigation.
- **Easy integration** – Capture requests through a Proxy or as Express middleware.
- **Lightweight & Fast** – Built for performance with minimal dependencies.

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

Read the article [how to capture and debug API requests](https://github.com/inspectr-hq/inspectr-proxy?tab=readme-ov-file#inspecting-api-http-traffic)
with the [Inspectr](https://github.com/inspectr-hq/inspectr) and inspect all the details in the Inspectr viewer.

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

Read the "[Inspecting Webhook Events](https://github.com/inspectr-hq/inspectr-proxy?tab=readme-ov-file#inspecting-webhook-events)"
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

Inspectr provides multiple componets, that can be used in different ways, depending on your use case:

## 🔌 Request capturing

### 🔹 Proxy Inspectr

Run **Inspectr** **locally** as an **HTTP API proxy** to seamlessly intercept and log traffic between your client and backend services. This setup is ideal for debugging API calls and webhook events by just a simple configuration change. 

### 🔹 Ingress Inspectr

**Expose** your **local API** or **AI service** securely to external systems through the hosted **Ingress Inspectr** service, enabling real-world integrations and testing without complex network configurations.

Your local running service can be exposed to the public internet via a private endpoint, without the need to deploy your service externally. The ingresss is a pure forwarding service that delivers the remote requests to your local Inspectr setup.

## 🔍 Request inspections

### 🔹 Standalone App

Run **Inspectr** as an independent application that can be deployed in various environments:

- **Localhost** – Self-hosted for debugging API requests or webhook events directly on your machine. Comes with the Proxy Inspectr.
- **Vercel** – Cloud-hosted for easy access and seamless integration.

More info can be found in the [Inspectr App](https://github.com/inspectr-hq/inspectr-app) repository.

# 🚀 Get started

## Instal Inspectr

Installing Inspectr is easy with a variety of options to match your workflow. Whether you prefer the convenience of a package manager, the simplicity of a macOS installation, or direct access to pre-built binaries, we've got you covered.

### **NPM**

Install Inspectr via npm using the following command:

```
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

Inspectr comes with configurations options

### Inspecting API HTTP Traffic

Suppose you have a backend service running on port
`3000`. You want to inspect all HTTP request and responses sent to the backend service, log the details to the console, and view the request and response data in real time via the Inspectr UI running on port http://localhost:4004.

You would start the proxy as follows:

```bash
./inspectr --listen=":8080" \
--backend="http://localhost:3000" \
--print=true \
--app=true
```

<img src="https://raw.githubusercontent.com/inspectr-hq/inspectr/main/assets/inspectr-app.png" alt="Request Inspectr" width="80%">

<img src="https://raw.githubusercontent.com/inspectr-hq/inspectr/main/assets/inspectr-console.png" alt="Console Inspectr" width="80%">

**Explanation:**

- The proxy listens on port `8080` and forwards requests to the backend at "http://localhost:3000.
- Captured request and response data is printed to the console.
- Captured data is also sent to the Inspectr UI service at port
  `4004`. Visit http://localhost:4004 to view the Inspectr UI.

### Inspecting Webhook Events

In this case you want to inspect webhook events sent from a third-party service. You may not have a backend service to forward the requests to—instead you simply want to capture and inspect the incoming webhook payloads. You can start the
proxy without a backend so that every incoming request receives a default 200 OK response while still capturing and broadcasting the webhook data:

```bash
./inspectr --listen=":8080" \
--print=true \
--app=true
```

<img src="https://raw.githubusercontent.com/inspectr-hq/inspectr/main/assets/inspectr-webhook.png" alt="Request Inspectr" width="80%">

**Explanation:**

- Via the service of the Ingress Inspectr, a public URL is linked to the Inspectr Proxy service.
- The proxy listens on port 8080 and immediately returns a 200 OK response for every incoming webhook event.
- The webhook event payload details are captured and printed to the console.
- The captured webhook event is send to the Inspectr UI service. Visit http://localhost:40004 to see the Inspectr UI in real time.

### Inspecting Front-End API Requests

For front-end applications, you can simply replace your API endpoint URL with the Inspectr Proxy URL. This enables you to inspect and collect outgoing requests and their responses without any additional backend configuration. By using the
proxy, you gain visibility into how your front-end interacts with APIs, making debugging easier without modifying the client-side code.

#### Example: Using Inspectr Proxy in a Front-End App

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

You can modify the endpoint to route through the Inspectr Proxy:

```js
fetch("http://localhost:8080/data", {
  method: "GET",
  headers: {
    "Authorization": "Bearer token",
    "Content-Type": "application/json"
  }
});
```

Running the Proxy for Front-End Debugging
Start Inspectr Proxy on your local machine:

```bash
./inspectr --listen=":8080" --backend="https://api.example.com" --print=true --app=true
```

**Explanation:**

- The front-end makes requests to http://localhost:8080 instead of the original API.
- Inspectr forwards requests to https://api.example.com and relays the responses.
- All captured requests and responses are logged in the Inspectr UI (http://localhost:4004).
- If needed, you can enable localtunnel to expose the proxy publicly:

```bash
./inspectr --listen=":8080" --backend="https://api.example.com" --print=true --app=true --ingress=true
```

This approach seamlessly integrates Inspectr into your front-end workflow, allowing you to monitor API interactions in
real-time without modifying the backend.

## Exposing Inspectr Proxy Publicly with Localtunnel

> Localtunnel is a free and open-source tool that lets you easily share local web services publicly. It assigns a unique
> URL (like https://inspectr-abc.loca.lt) that forwards requests to your locally running server (
> e.g., http://localhost:3000), bypassing DNS and firewall hassles.

If you enable Localtunnel with `--localtunnel`, the proxy will be exposed publicly. Optionally, use
`--localtunnelSubdomain` to request a custom subdomain.

For example:

```bash
./inspectr --listen=":8080" \
--backend="http://localhost:3000" \
--broadcast="http://localhost:9999/api/sse" \
--print=true \
--app=true \
--app-port="9999"
```

or by executing `./inspectr` with the configuration set in `.inspectr.yaml` file

```yaml
listen: ":8080"
backend: "http://localhost:3000"
broadcast: "http://localhost:9999/api/sse"
print: true
app: true
appPort: "9999"
```

This will:

- Expose the proxy publicly via Localtunnel (attempting to use the subdomain "myinspectr"), forwarding requests to the
  Proxy on `8080`.
- Listen on port 8080 and forward requests to the backend at port 3000.
- Print and broadcast captured data.
- Start the Inspectr App service on port 9999.

## How It Works

1. Proxy Mode:
   
   The proxy listens on the specified `--listen` address. If a backend is defined via `--backend`, it forwards the
   incoming HTTP request to that backend and relays the response back to the client. If `--ingress` is enabled, the
   proxy is exposed publicly via the Inspectr Ingress service.

2. Data Capture & Wrapping:
   
   All request and response details are captured into an Inspectr structure. This data is then wrapped in a
   CloudEvents envelope.

3. Embedded Inspectr App:
   
   The embedded Inspectr App server runs on the port specified by `--app-port` and serves the Inspectr UI for real‑time
   updates.

4. Broadcasting & Logging:
   
      - If the `--print` flag is enabled, a color‑coded summary of each transaction is printed to the console.
      - If a `--broadcast` URL is provided, the CloudEvent is sent via HTTP POST to that destination, like a remote setup
        of the Inspectr App on Vercel.
      - If the embedded app mode is enabled (`--app`), the data is also broadcast internally via SSE.

---

The Inspectr App provides a live and historical view of the requests and responses available in your browser.

For detailed options and configuration (including YAML support), have a look at to
the [Inspectr](https://github.com/inspectr-hq) documentation.

---

## ## Configuration options

## Options

**Command-Line Flags**  

| Flag          | Type    | Default   | Description                                                                                                           |
| ------------- | ------- | --------- | --------------------------------------------------------------------------------------------------------------------- |
| `--listen`    | string  | `:8080`   | Address (port) on which the Inspectr proxy listens for incoming HTTP requests.                                        |
| `--backend`   | string  | `(empty)` | Backend service address (e.g. "http://localhost:3000"). If empty, the proxy returns a default 200 OK response.        |
| `--broadcast` | string  | `(empty)` | Optional remote URL to which the captured requests are sent via HTTP POST ( e.g. "http://localhost:9999/api/sse").    |
| `--print`     | boolean | `false`   | If true, prints a color‑coded summary of each request/response to the console.                                        |
| `--app`       | boolean | `false`   | If true, starts the embedded Inspectr App service (serves static assets and SSE endpoints).                           |
| `--app-port`  | string  | `4004`    | Port on which the Inspectr App service runs when `--app` is enabled.                                                  |
| `--config`    | string  | `(empty)` | Optional path to a YAML configuration file. If omitted, a file named .inspectr.yaml will be auto-detected if present. |
| `--version`   | string  | `(empty)` | Returns the version of Inspectr.                                                                                      |

**YAML Configuration File (.inspectr.yaml)**  

In addition to command-line flags, you can configure Inspectr using a YAML file. Create a file named `.inspectr.yaml` in  
your working directory or pass its path using the `--config` flag. The parameters in the YAML file correspond to the  
command-line flags. Note: Any parameter provided via the command line will override the corresponding value in the YAML  
file.  

Here’s an example .inspectr.yaml:  

```yaml
listen: ":8080"  
backend: "http://localhost:3000"  
broadcast: "http://localhost:4004/api/sse"  
print: true  
app: true  
appPort: "9999"  
```
