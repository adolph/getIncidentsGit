
url="https://mycity2.houstontx.gov/pubgis01/rest/services/HEC/HEC_Active_Incidents/MapServer/0/query?"
url=$url"f=json&"
url=$url"cacheHint=true&"
url=$url"resultOffset=0&"
url=$url"resultRecordCount=500&"
url=$url"where=1%3D1&"
url=$url"orderByFields=CALL_TIME%20DESC&"
url=$url"outFields=*&returnGeometry=false&"
url=$url"spatialRel=esriSpatialRelIntersects&";


curl "$url" \
-s \
--compressed | \
jq '.' > data.json

#   -H 'Accept: */*' \
#   -H 'Accept-Language: en-US,en;q=0.6' \
#   -H 'Cache-Control: no-cache' \
#   -H 'Connection: keep-alive' \
#   -H 'Origin: https://www.arcgis.com' \
#   -H 'Pragma: no-cache' \
#   -H 'Referer: https://www.arcgis.com/' \
#   -H 'Sec-Fetch-Dest: empty' \
#   -H 'Sec-Fetch-Mode: cors' \
#   -H 'Sec-Fetch-Site: cross-site' \
#   -H 'Sec-GPC: 1' \
#   -H 'User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36' \
#   -H 'sec-ch-ua: "Chromium";v="118", "Brave";v="118", "Not=A?Brand";v="99"' \
#   -H 'sec-ch-ua-mobile: ?0' \
#   -H 'sec-ch-ua-platform: "macOS"' \
