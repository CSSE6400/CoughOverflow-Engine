# CoughOverflow-Engine

The CoughOverFlow Analysis Engine binaries for amd64, arm64.

To run the analysis engine:

```bash
./coughoverflow --input image_location --output output_location.txt
```
* The `--input` parameter is the location of the image(**only jpg**) to be analysed.
* The `--output` parameter is the location of a text file to hold the analysis result.

The provided `Dockerfile` installs the analysis engine into a minimal Ubuntu image with the libraries required to run the analysis engine.