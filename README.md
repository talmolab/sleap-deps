# sleap-deps
Packages necessary for sleap build maintained by the SLEAP team.

## tensorflow

There is a Github Actions workflow `build_tensorflow.yml` that uses Github runners to build packages for us (and upload them to the `sleap-deps/label/dev` channel). But, if you would like to locally build and test the tensorflow package:

1. Create the tensorflow build environment:

```bash
mamba env create -f environment.tensorflow.yml -n tf
```

2. Activate the tensorflow build environment:

```bash
mamba activate tf
```

3. Build the tensorflow conda package:

#### Mac

```bash
conda build --debug.conda.tensorflow_macos --output-folder build.tensorflow_macos -c conda-forge
```

4. Test the conda package:

#### Mac

```bash
mamba create -n tf_macos -c ./build.tensorflow_macos -c conda-forge tensorflow
```
