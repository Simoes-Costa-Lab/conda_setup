# Conda Setup
A repository containing an automatic installation of two different conda environments (py27 and py37) for easy user setup.

## Installation guide
Clone the repository, make the script executable, and then run it.
```bash
git clone https://github.com/Simoes-Costa-Lab/conda_setup/
cd conda_setup
chmod +x ./install.sh
./install.sh
```
Reload your shell

## Update guide
First, remove the current environment. Then update
```bash
cd conda_setup
conda env update -n py37 --file py37environment.yml --prune
conda env update -n py27 --file py27environment.yml --prune
```

## Exporting an update guide
Write out the environment to a file
```bash
conda env export -n py37 > py37environment.yml
conda env export -n py27 > py27environment.yml
```
Then upload this to github
