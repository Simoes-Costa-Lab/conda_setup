#Default location is home directory install
cd ~
#Install miniconda
wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh
sh Miniconda3-latest-Linux-x86_64.sh -b -p $HOME/miniconda3
eval "$($HOME/miniconda3/bin/conda shell.bash hook)"
source ~/.bashrc
#Add channels, order is important!
conda config --add channels defaults
conda config --add channels bioconda
conda config --add channels conda-forge
#Create new environments from the yml files
conda env create -f ./py27environment.yml
#py37 is created last to become the default
conda env create -f ./py37environment.yml
conda activate py37