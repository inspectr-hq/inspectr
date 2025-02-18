# Inspectr

> Inspectr – Simplifying API and Webhook debugging!

**Inspectr** is a lightweight and efficient tool for reviewing, analyzing, and debugging API requests and webhook
events. Useful for testing integrations, monitoring incoming requests, reviewing past requests, or troubleshooting
payload issues, Inspectr
provides the insights you need.

<img src="https://raw.githubusercontent.com/thim81/inspectr/main/assets/inspectr-app.png" alt="Request Inspectr" width="80%">

<img src="https://raw.githubusercontent.com/thim81/inspectr/main/assets/inspectr-console.png" alt="Console Inspectr" width="80%">

## 🚀 Features

- **Inspect API Requests** – View headers, query parameters, request bodies, and response details.
- **Analyze Webhook Events** – Capture and review webhook payloads from third-party services.
- **Real-time Logging** – Monitor incoming requests as they happen.
- **History & Replay** – Review past requests with easy filtering and search options, and replay them as needed.
- **Validation & Debugging** – Identify issues in request structures, missing parameters, and incorrect headers.
- **Easy integration** – Capture requests through a Proxy or as Express middleware.
- **Lightweight & Fast** – Built for performance with minimal dependencies.

## 🎯 Use Cases

Inspectr is versatile enough to support various development and debugging workflows:

### Debugging During Development

During the initial stages of application development, it’s essential to see exactly what requests are hitting your
endpoints. The Inspectr App allows you to:

- Monitor real-time requests.
- Quickly identify malformed requests or missing parameters.
- Correlate problematic 4xx/5xx responses with the exact request data.
- This immediate feedback is invaluable when documentation is incomplete or out of date, ensuring you can build reliable
  integrations.

<img src="https://raw.githubusercontent.com/thim81/inspectr/main/assets/inspectr-app.png" alt="Request Inspectr" width="80%">

<img src="https://raw.githubusercontent.com/thim81/inspectr/main/assets/inspectr-console.png" alt="Console Inspectr" width="80%">

Read the
article [how to capture and debug API requests](https://github.com/thim81/inspectr-proxy?tab=readme-ov-file#inspecting-api-http-traffic)
with
the [Inspectr Proxy](https://github.com/thim81/inspectr-proxy) and inspect all the details in the Inspectr viewer.

### Webhook Capturing Service

When building new applications that rely on webhooks or external callbacks, it can be challenging to re-trigger a
webhook manually (especially when third-party systems are involved). With Inspectr, you can capture incoming webhook
events automatically, and even replay requests when needed—eliminating the need to simulate the action in the
third-party system repeatedly.

When building applications that rely on webhooks or external callbacks, it can be difficult to get a clear view on which
request they are sending. Inspectr automatically captures the incoming webhook events or forward them to your service,
allowing you to review and debug them without having to repeatedly simulate the triggering action. You can even replay
captured requests when needed, ensuring that your integrations work reliably without the hassle of manual testing.

<img src="https://raw.githubusercontent.com/thim81/inspectr/main/assets/inspectr-webhook.png" alt="Request Inspectr" width="80%">

Read
the "[Inspecting Webhook Events](https://github.com/thim81/inspectr-proxy?tab=readme-ov-file#inspecting-webhook-events)"
article which explains how to use
the [Inspectr Proxy](https://github.com/thim81/inspectr-proxy) to create a public webhook endpoint that catches all
webhook events.

### Front-End Projects

For front-end applications, you can simply replace your API endpoint URL with the Inspectr Proxy URL. This enables you
to inspect & collect outgoing requests and their responses without any additional backend configuration. Combine the
Proxy with your existing front-end workflow for a transparent debugging experience.

<img src="https://raw.githubusercontent.com/thim81/inspectr/main/assets/inspectr-app.png" alt="Request Inspectr" width="80%">

Have a look at the [Inspectr Proxy](https://github.com/thim81/inspectr-proxy?tab=readme-ov-file#inspecting-front-end-api-requests) documentation to see how easy it is to use
it in your front-end application.

# Components

Inspectr can be used in different ways, depending on your use case:

## 🔌 Request capturing

### 🔹 Proxy Inspectr

Deploy **Inspectr** as an **HTTP proxy** to intercept requests and responses send to a backend service. Useful for
debugging API calls and webhook events without modifying your application.This allows

### 🔹 Express Middleware

Integrate **Inspectr** as middleware in an **Express.js** application to log and analyze incoming API requests and
webhook events. Ideal for adding inspection capabilities to existing Express Node.js applications.

## 🔍 Request inspections

### 🔹 Standalone App

Run **Inspectr** as an independent application that can be deployed in various environments:

- **Localhost** – Self-hosted for debugging API requests or webhook events directly on your machine.
- **VercelJS** – Cloud-hosted for easy access and seamless integration.

# 🔧 Installation & Setup

## Installing the Proxy

The Inspectr Proxy is a high-performance HTTP proxy that captures every incoming request and outgoing response.

**Download Pre-compiled Binaries**
Download the [latest binaries](https://github.com/thim81/inspectr-proxy/releases) from
the [Releases](https://github.com/thim81/inspectr-proxy/releases) page.

**Running the Proxy**
Once downloaded or built, you can run the proxy with your desired configuration. For example:

```bash
./inspectr --listen=":8080" --backend="http://localhost:3000" --print=true --app=true
```

**Expose your service publicly**

If you want to receive public requests on your local service, use the build-in `localtunnel` to get a public URL that is
connected to your setup.

```bash
./inspectr --listen=":8080" --backend="http://localhost:3000" --print=true --app=true --localtunnel=true
```

**Running the Inspectr App**

The Inspectr App provides a live and historical view of the requests and responses available in your browser
at http://localhost:4004.

For detailed options and configuration (including YAML support), have a look at to
the [Inspectr Proxy](https://github.com/thim81/inspectr-proxy) documentation.

## Using Inspectr in an Express App

For Express projects, Inspectr is available as a NPM package that provides middleware to capture and inspect every
incoming request and outgoing response from your Express service, with a UI to can view request & response details in
real time.

**Installation**
Install via npm:

```bash
npm install @inspectr/express
```

**Quick Start**
Add the middleware to your Express application:

```js
// app.js
const express = require('express');
const inspectr = require('@inspectr/express').capture;

const app = express();

// Add the Inspectr middleware before your routes
app.use(Inspectr.capture);

// Define your routes
app.get('/', (req, res) => {
  res.send('Hello, world!');
});

// Start your Express server
const PORT = process.env.PORT || 3000;
app.listen(PORT, () => {
  console.log(`Express app listening on port ${PORT}`);
});

```

For more detailed instructions, configuration options, and usage examples, check out
the [@inspectr/express documentation](https://github.com/thim81/inspectr-express).

**Running the Inspectr App**
The Inspectr App provides a live and historical view of all the received requests and returned responses of your Express
service.

Via npx (if installed locally):

```bash
npx  @inspectr/express
```

or as package.json script

```bash
"scripts": {
 "inspectr-app": "inspectr"
}
```

Then open your browser to http://localhost:4004 to view the Inspectr interface.



