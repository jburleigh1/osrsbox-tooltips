# This script requires:
# 1) Java (at least JRE)
# 2) YUI Compressor
# YUI compressor as a JAR is available from: https://github.com/yui/yuicompressor/downloads
# Download it, extract ZIP file, open yuicompressor-3.4.7/build
# Copy "yuicompressor-2.4.7.jar" to same folder as this script

# Combine all JS files to temp.css
cat jquery-3.2.1.min.js, jquery-ui.js, additions.js | sc temp.js

# Minify the temp.js file using YUI Compressor
java -jar .\yuicompressor-2.4.7.jar .\temp.js -o .\osrsbox-tooltips.js

# Remove the temp.js file
Remove-Item .\temp.js

# Static header for new JS file
$header = "/*! OSRSBOX Tooltips
*   Date: 27/05/2017
*   Author: PH01L
*   Website: osrsbox.com
*   License: MIT
*   Dependencies: JQuery, JQuery UI (included license below)
*/
"

# Read in minified JS file
$file = Get-Content .\osrsbox-tooltips.js

# Append the header to top of final file
Set-Content .\osrsbox-tooltips.js �value $header, $file

# Move final file to parent directory
Move-Item -Path .\osrsbox-tooltips.js -Destination ..\.\osrsbox-tooltips.js -force