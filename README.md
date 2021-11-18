# Azurite-REST-Client-Samples
Small repo with some samples for Azure Blob REST Service API with Azurite. 

I just created this repo to avoid needing to search for the right syntax, prepare files, etc. every couple of months I want to test something with Azurite ;) Decided to make it public in case someone else can make use of it. 

## Readme 
Most variables are found in .vscode/settings.json. **baseUrl** in there refers to Azurite on port 11000, but the default port ist 10000. When I tested the last time on my machine it wouldn't work on 10000 so I changed it to 11000 (started Azurite with `azurite --location F:\AzuriteEmulator\Azurite --blobPort 11000 --queuePort 11001 --tablePort 11002`). If you want to use this as an example, please change the port of the **baseUrl**-variable accordingly.