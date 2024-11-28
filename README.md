<a name="readme-top"></a>
<div align="center">

  <h3 align="center">Health New Zealand | Te Whatu Ora Mockplus System FHIR API Implementation Guide</h3>

  <p align="center">
    This GitHub project is the repository for the Health NZ | Te Whatu Ora Mockplus System HL7 FHIR API Implementation Guide.
  </p>
</div>

<!-- GETTING STARTED -->

## Local development

`./_updatePublisher.sh -y` - Download the latest FHIR Publisher

`./_genonce.sh` - Build the IG using the latest FHIR Publisher

`./_genopenapi.sh` - Generate an HNZ OpenAPI specification. Run after _genonce.sh to avoid changes being lost

`http-server output` - To run a local server (install using npm install --global http-server)
