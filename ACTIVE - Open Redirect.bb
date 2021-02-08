[
 {
  "Name": "ACTIVE - Open Redirect (Firm)", 
  "Active": false, 
  "Scanner": 1, 
  "Payloads": [
   "https://xerosecurity.com"
  ], 
  "Encoder": [
   "URL-encode key characters"
  ], 
  "UrlEncode": true, 
  "CharsToUrlEncode": " ?&#:/\\", 
  "Grep": [
   "Location: https://xerosecurity.com", 
   "<meta http-equiv"
  ], 
  "PayloadResponse": false, 
  "NotResponse": false, 
  "NotCookie": false, 
  "TimeOut": 0, 
  "isTime": false, 
  "CaseSensitive": false, 
  "isReplace": false, 
  "ExcludeHTTP": false, 
  "OnlyHTTP": false, 
  "IsContentType": false, 
  "ContentType": "", 
  "NegativeCT": false, 
  "IsResponseCode": false, 
  "ResponseCode": "", 
  "NegativeRC": false, 
  "MatchType": 1, 
  "RedirType": 4, 
  "MaxRedir": 5, 
  "rCookies": false, 
  "spaceEncode": false, 
  "payloadPosition": 1, 
  "sEncode": "", 
  "payloadsFile": "", 
  "grepsFile": "", 
  "IssueName": "Open Redirect (Firm)", 
  "IssueSeverity": "High", 
  "IssueConfidence": "Certain", 
  "IssueDetail": "Open Redirect (Firm)", 
  "RemediationDetail": "Open Redirect (Firm)", 
  "IssueBackground": "Open Redirect (Firm)", 
  "RemediationBackground": "Open Redirect (Firm)"
 }
]