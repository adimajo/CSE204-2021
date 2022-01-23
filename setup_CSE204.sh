#!/bin/bash
shopt -s expand_aliases

echo "Detecting conda"

if ! command -v conda &> /dev/null
then
    echo "conda could not be found"
    echo "Trying to add to PATH"
    export PATH="/usr/local/Anaconda3-2021.05/bin:$PATH"
    if ! command -v conda &> /dev/null
    then
        echo "conda could not be found... again."
        export CONDA_FOUND=false
    else export CONDA_FOUND=true
    fi
else export CONDA_FOUND=true
fi

if $CONDA_FOUND
then
    echo "Installing requirements with conda"
    conda install -c conda-forge nbgrader
    jupyter nbextension install --sys-prefix --py nbgrader --overwrite
    jupyter nbextension enable --sys-prefix --py nbgrader
    jupyter serverextension enable --sys-prefix --py nbgrader
    curl -O https://raw.githubusercontent.com/adimajo/CSE204-2021/master/conda_environment.yml
    conda env create -f conda_environment.yml
    python -m ipykernel install --user --name CSE204 --display-name "CSE204"
else
    echo "Detecting pip3"
    if ! command -v pip3 &> /dev/null
    then
        echo "pip3 could not be found. Aborting."
        read -p "Press enter to continue"
        exit 1
    else
        echo "pip3 found"
    fi
    echo "Installing requirements with pip3"
    pip3 install virtualenv 
    if ! command -v virtualenv &> /dev/null
    then
        echo "virtualenv could not be found. Aborting."
        read -p "Press enter to continue"
        exit 1
    else
    	virtualenv CSE204
        source CSE204/bin/activate
        curl -O https://raw.githubusercontent.com/adimajo/CSE204-2021/master/requirements.txt
        pip3 install -r requirements.txt
	jupyter nbextension install --sys-prefix --py nbgrader --overwrite
	jupyter nbextension enable --sys-prefix --py nbgrader
	jupyter serverextension enable --sys-prefix --py nbgrader
        ipython kernel install --name "CSE204" --user
    fi
fi

echo "Success"

