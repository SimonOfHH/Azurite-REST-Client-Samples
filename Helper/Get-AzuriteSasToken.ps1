if (-not(Get-Module -ListAvailable -Name Az.Storage)){
    Install-Module Az.Storage
}
Import-Module Az.Storage

$context = New-AzStorageContext -ConnectionString "DefaultEndpointsProtocol=http;AccountName=devstoreaccount1;AccountKey=Eby8vdM02xNOcqFlqUwJPLlmEtlCDXJ1OUzFT50uSRZ6IFsuFq2UVErCz4I6tq/K1SZFPTOtr/KBHBeksoGMGw==;BlobEndpoint=http://127.0.0.1:10000/devstoreaccount1;QueueEndpoint=http://127.0.0.1:10001/devstoreaccount1;TableEndpoint=http://127.0.0.1:10002/devstoreaccount1;"
New-AzStorageAccountSASToken -Context $context -Service Blob,File,Table,Queue -ResourceType Service,Container,Object -Permission "racwdlup" -ExpiryTime (Get-Date -Year 2030 -Month 12 -Day 12)
# Result: ?sv=2019-02-02&sig=%2FCD1sMemPH2TWuYwhPen69g%2Bnp4UYt8ZLiz8F3uVAig%3D&se=2030-12-12T15%3A34%3A48Z&srt=sco&ss=bfqt&sp=racupwdl