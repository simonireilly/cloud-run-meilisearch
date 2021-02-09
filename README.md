# Cloud Run Mielisearch

This repo is an example of running Meilisearch in google cloud run.

- [Cloud Run Mielisearch](#cloud-run-mielisearch)
  - [Setup](#setup)
  - [CI/CD](#cicd)
  - [Examples](#examples)

## Setup

Cloud-run is stateless and so this configuration is pre-computed.

This works well for static sites, where you can populate the index at build time.

It is not possible to send PUT/POST requests to the container and hae them persisted.

## CI/CD

Enable a source repository in GitHub and every push to the `main` branch to be built.

![Github pushes source code to cloud run](setup.drawio.png)

## Examples

A good use case for this would be indexing your personal blog with a fast serverless search.

Say you use NextJS with markdown files. At build time you will have access to the markdown files and be able to parse them into the index.

Then, you can store that in the local file system and commit it to GitHub.

If you use vercel you can configure a preview URL with a preview cloud run image and run all your testing.
