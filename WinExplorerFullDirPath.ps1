$template="    {Value:Name to be extracted}    REG_SZ    bruh"


$text=REG QUERY HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\FolderDescriptions\"{754AC886-DF64-4CBA-86B5-F7FBF4FBCEF5}"\ /s /f ParsingName | findstr /I /C:"ParsingName"
if (-not ([string]::IsNullOrEmpty($text))){
	$Deskbruh= $text | ConvertFrom-String -TemplateContent $template | ForEach-Object { $_.Value}

	REG delete HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\FolderDescriptions\"{754AC886-DF64-4CBA-86B5-F7FBF4FBCEF5}" /v $Deskbruh /f
}

$text=REG QUERY HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\FolderDescriptions\"{f42ee2d3-909f-4907-8871-4c22fc0bf756}"\ /s /f ParsingName | findstr /I /C:"ParsingName"
if (-not ([string]::IsNullOrEmpty($text))){
	$Documents= $text | ConvertFrom-String -TemplateContent $template | ForEach-Object { $_.Value}

	REG delete HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\FolderDescriptions\"{f42ee2d3-909f-4907-8871-4c22fc0bf756}" /v $Documents /f
}

$text=REG QUERY HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\FolderDescriptions\"{7d83ee9b-2244-4e70-b1f5-5393042af1e4}"\ /s /f ParsingName | findstr /I /C:"ParsingName"
if (-not ([string]::IsNullOrEmpty($text))){	
	$Downloads= $text | ConvertFrom-String -TemplateContent $template | ForEach-Object { $_.Value}

	REG delete HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\FolderDescriptions\"{7d83ee9b-2244-4e70-b1f5-5393042af1e4}" /v $Downloads /f
}

$text=REG QUERY HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\FolderDescriptions\"{a0c69a99-21c8-4671-8703-7934162fcf1d}"\ /s /f ParsingName | findstr /I /C:"ParsingName"
if (-not ([string]::IsNullOrEmpty($text))){
	$Music= $text | ConvertFrom-String -TemplateContent $template | ForEach-Object { $_.Value}

	REG delete HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\FolderDescriptions\"{a0c69a99-21c8-4671-8703-7934162fcf1d}" /v $Music /f
}

$text=REG QUERY HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\FolderDescriptions\"{0ddd015d-b06c-45d5-8c4c-f59713854639}"\ /s /f ParsingName | findstr /I /C:"ParsingName"
if (-not ([string]::IsNullOrEmpty($text))){
	$Pictures= $text | ConvertFrom-String -TemplateContent $template | ForEach-Object { $_.Value}

	REG delete HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\FolderDescriptions\"{0ddd015d-b06c-45d5-8c4c-f59713854639}" /v $Pictures /f
}

$text=REG QUERY HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\FolderDescriptions\"{35286a68-3c57-41a1-bbb1-0eae73d76c95}"\ /s /f ParsingName | findstr /I /C:"ParsingName"
if (-not ([string]::IsNullOrEmpty($text))){	
	$Videos= $text | ConvertFrom-String -TemplateContent $template | ForEach-Object { $_.Value}

	REG delete HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\FolderDescriptions\"{35286a68-3c57-41a1-bbb1-0eae73d76c95}" /v $Videos /f
}

'done'
Pause