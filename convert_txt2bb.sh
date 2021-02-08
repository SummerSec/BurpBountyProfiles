#!/bin/bash
#converting txt file to BurpBounty json bb file
#ex: for ff in *; do /opt/burp/BurpBounty-Profiles/convert.sh $ff; done
#outfile=$1'.bb'
issuename=${1%.*}
outfile=$issuename'.bb'
#out Header
echo -n '[{"Name":"' > $outfile
echo -n "$issuename" >> $outfile
echo -n '","Active":true,"Scanner":1,"Payloads":[' >> $outfile

echo "filename: $1"
ind=0
while read -r ss 
do
	
	#escape & -> \u0026, " -> \", ' -> \u0027
	ssc=$(echo -n "$ss" | sed 's/\\/\\\\/g; s/&/\\u0026/g; s/"/\\"/g; s/\x27/\\u0027/g')
	

	if [[ ! -z "$ssc" ]]; then 
		if [[ $ind -eq 0 ]]; then
			echo -n '"'"$ssc"'"' >> $outfile
			#echo debug: "$ssc"
		else
			echo -n ',"'"$ssc"'"' >> $outfile
			#echo debug: "$ssc"
		fi
	fi
	ind+=1;
done < "$1"

#out footer
echo -n '],"Encoder":[],"UrlEncode":false,"CharsToUrlEncode":"","SearchString":"","ReplaceString":"","Grep":["error"],"PayloadResponse":false,"NotResponse":false,"NotCookie":false,"CaseSensitive":false,"ExcludeHTTP":false,"OnlyHTTP":false,"IsContentType":false,"ContentType":"","IsResponseCode":false,"ResponseCode":"","MatchType":1,"IssueName":"' >> $outfile
#out issuename
echo -n "$issuename" >> $outfile

echo -n '","IssueSeverity":"Information","IssueConfidence":"Certain","IssueDetail":"' >> $outfile
echo -n "$issuename" >> $outfile
echo -n '\n\n\u003cgrep\u003e","RemediationDetail":"","IssueBackground":"","RemediationBackground":""}]' >> $outfile
#echo -n '' >> $outfile
#echo -n '' >> $outfile
#echo -n '' >> $outfile