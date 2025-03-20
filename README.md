# CoughOverflow-Engine

The CoughOverFlow Analysis Engine binaries for amd64, arm64.

To run the analysis engine:

```bash
./overflowengine --input image_location --output output_location.txt
```
* The `--input` parameter is the absolute or relative location of the image (**only jpg**) to be analysed.
* The `--output` parameter is the absolute or relative location of a text file to hold the analysis result.

To install the analysis engine inside a Docker container:

```bash
dpkg --print-architecture | grep -q "amd64" && export ARCH="amd64" || export ARCH="arm64" && wget https://github.com/CSSE6400/CoughOverflow-Engine/releases/download/v1.0/overflowengine-${ARCH} -O overflowengine && chmod +x overflowengine
```

The provided `Dockerfile` installs the analysis engine into a minimal Ubuntu image with the libraries required to run the analysis engine.
It then copies the sample JPG images into the container so you can experiment with the analysis engine.
* The `sample-images` directory contains a set of prepared samples to use for testing. The file names indicate the expected result from the analysis engine
* The `sample-base64` directory contains base64 encodings of the sample JPGs in the `sample-images` directory.

You can clone this repository, build the container and run it.
```bash
docker build -t engine .
docker run -it --rm engine
```

This allows you to interact with the container through your terminal.
You can then execute the analysis engine manually to experiment with how it works.

For the assignment, you will need to run the analysis engine on the JPG images you receive via a POST request.
