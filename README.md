# robot framework with selenium container
Docker file for the container to execute Selenium or robot frameworks test cases
Uses Python 3.7 and robotframework-seleniumlibrary 4.3.0

Steps:
1. clone the project and keep your *.robot files in the same path (use sample.robot if you don't have one)
2. docker build .
3. docker run -it -v $(pwd):/tests:ro -v $(pwd)/out:/out:rw  <image_name> --outputdir /out /tests

