#Default location is home directory install
cd ~
#Install miniconda
wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh
sh Miniconda3-latest-Linux-x86_64.sh -b -p $HOME/miniconda3
eval "$($HOME/miniconda3/bin/conda shell.bash hook)"
source ~/.bashrc
conda init
#Add channels, order is important!
conda config --add channels defaults
conda config --add channels bioconda
conda config --add channels conda-forge
#Create new environments from the yml files
conda env create -f $HOME/conda_setup/py27environment.yml
conda env create -f $HOME/conda_setup/py37environment.yml
#Set py37 to be activated by default
echo 'conda activate py37' >> ~/.bashrc