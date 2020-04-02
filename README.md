# F5 Terraform AWS Secure Cloud Architecture (SCA)

## Contents

- [CHANGELOG](CHANGELOG.md)
- [What is SCA](#what-is-sca)
- [Prerequisites](#prerequisites)
- [Security Mapping](#security-mapping)

## What is SCA

SCA is a location & cloud agnostic flexible and repeatable conceptual deployment pattern that can adapt for all customers challenges in the cloud.

## Security Mapping

| Category | Title | Description | Mapping Notes | Controls |
|----------|-------|-------------|---------------|----------|
| Security | Traffic Segregation | The Security Stack shall maintain virtual separation of all management, user, and data traffic. | LTM/CORE | SCCA 2.1.2.1 |
| Security | Traffic Encryption | The Security Stack shall allow the use of encryption for segmentation of management traffic. | LTM/Core | SCCA 2.1.2.2 |
| Security | Reverse Proxy | The Security Stack shall provide a reverse proxy capability to handle access requests from client systems. | LTM/Core | SCCA 2.1.2.3 |
| Security | Traffic Filtering | The Security Stack shall provide a capability to inspect and filter application layer conversations based on a predefined set of rules (including HTTP) to identify and block malicious content. | AFM/ASM/PS | SCCA 2.1.2.4 |
| Security | Block Unauthorized | The Security Stack shall provide a capability that can distinguish and block unauthorized application layer traffic. | ASM / AFM| SCCA 2.1.2.5 |
| Security | Traffic Monitor | The Security Stack shall provide a capability that monitors network and system activities to detect and report malicious activities for traffic entering and exiting Application virtual private networks/enclaves. | ASM / AFM / PS| SCCA 2.1.2.6 |
| Security | Block Malicious | The Security Stack shall provide a capability that monitors network and system activities to stop or block detected malicious activity. | ASM / AFM/ PS | SCCA 2.1.2.7|
| Security | East / West Inspection | The Security Stack shall inspect and filter traffic traversing between application virtual private networks/enclaves.| AFM | SCCA 2.1.2.8 |
| Security | Break and Inspect Traffic | The Security Stack shall perform break and inspection of SSL/TLS communication traffic supporting single and dual authentication for traffic destined to systems hosted within the Cloud Service Provider.| LTM | SCCA 2.1.2.9 |
| Security |||||
| Security |||||
| Security |||||
| Security |||||
| Security |||||
| Security |||||
| Security |||||
| Security |||||
| Security |||||
| Security |||||
| Security |||||
| Security |||||
| Security |||||

## Deploying Custom Configuration to the BIG-IP VE

## Post-Deployment Configuration

### Creating Virtual Servers on the BIG-IP VE

## Filing issues

If you find an issue, we would love to hear about it. You have a choice when it comes to filing issues:

* Use the Issues link on the GitHub menu bar in this repository for items such as enhancement or feature requests and non-urgent bug fixes. Tell us as much as you can about what you found and how you found it.

## Contributing

Individuals or business entities who contribute to this project must have completed and submitted the F5 Contributor License Agreement.