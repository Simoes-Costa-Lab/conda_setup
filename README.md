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
conda env create -f $HOME/conda_setup/py37environment.yml
```
