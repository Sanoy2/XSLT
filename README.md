# XSLT
This is a project with a few examples how to work with XSLT.

Examples use the same data, the only difference in .xml files is the reference to the stylesheet.

.xml and .xsl files can be edited in any text editor. 

## Run the samples
Unfortunately too see the results you cannot simply drag .xml file and drop in web browser address bar. If you do so you will 
get an empty page and an error like:
    
    Unsafe attempt to load URL file:///<pathToTheFile>/example1.xsl 
    from frame with URL file:///<pathToTheFile>/example1.xml. 
    'file:' URLs are treated as unique security origins.
    
To solve the issue you should try two solutions:
### Specific flag
Open your browser by the terminal with flag `--allow-file-access-from-files`

It worked on Windows 10:
1. I opened PowerShell.
2. Changed directory to the folder with chrome .exe file.
3. Typed: `.\chrome.exe --allow-file-access-from-files`

### Python
Open terminal and change directory to the one with your .xml and .xls files.

Call one of the following commands depending on what Python version you have installed:

Python 2.x: `python -m SimpleHTTPServer`

Python 3.x: `python3 -m http.server` or `python -m http.server`

HTTP server will start probably on `localhost:8000`

Then open your browser in normal way and paste the link: `http://localhost:8000/`. Then choose the file you want to see.

You can also paste the link to the specified file like: `http://localhost:8000/example1.xml`

It worked on Windows 10 from PowerShell with Python 3.7.0b4 installed.

### References
[Here](https://www.w3schools.com/xml/xsl_intro.asp) is the XSLT tutorial on W3Schools.

[Here](https://stackoverflow.com/questions/3828898/can-chrome-be-made-to-perform-an-xsl-transform-on-a-local-file) 
is the topic on stack**overlow** about running the examples.

[Here](https://cedricvb.be/xml-xslt-to-xhtml-transform/) is an example of using external CSS files like bootstrap etc.
