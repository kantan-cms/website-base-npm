# Kantan CMS Client

This repository contains scripts for fetching data from Kantan CMS, converting it to the appropriate format, and deploying the site.

## Requirements

### System Requirements

- **Node.js** (v16 or higher)
- **npm** (v7 or higher)

Global Dependencies
```bash
# Global Dependencies
npm install -g vite-node typescript tsx
# Project Dependencies
npm install axios dotenv archiver
```

### Environment Variables

Create a `.env.local` file in the root directory with the following variables:

```
# Required
PROJECT_ID=<your_project_id>
CMS_API_KEY=<your_api_key>
CMS_BASE_URL=https://api.kantan-cms.com

# Optional
KANTAN_REQUIRED_COLLECTIONS=Blog,Authors,Categories
KANTAN_STORAGE_PATH=./tmp
STATIC_OUTPUT_DIR=./out
ZIP_FILENAME=site-export.zip
```

## Running the Scripts

### Complete Build Process

To run the complete build process, use:

```bash
./build.sh
```

## File Descriptions
- scripts/config.ts: Configuration file for the project.
- scripts/convert-content.ts: Converts content items from JSON to markdown or JSON format based on configuration.
- scripts/get_data_from_cms.ts: Fetches data from the Kantan CMS API and saves it to JSON files.
- scripts/get-from-cms.sh: Bash script that runs get_data_from_cms.ts to fetch data from the CMS.
- scripts/run-convert.sh: Bash script that runs convert-content.ts to convert JSON data to markdown files.
- scripts/tsconfig.json: TypeScript configuration for the scripts.
- scripts/types.ts: TypeScript interfaces for the content conversion system.
- scripts/zip_and_export.ts: Creates a ZIP archive of the static output directory and uploads it to Kantan CMS.
- scripts/zip-and-export.sh: Bash script that runs zip_and_export.ts to create and upload the ZIP archive.

## Integration with AI agent
- Download the following from the current repository:
    ```
    scripts/*
    build.sh
    ```
- get all the collections name
- get the UUID of the collections you want to integrate
- get a single record from the collection
- modify `scripts/config.ts` and `build.sh`.
- create.env.local
- modify 


