echo "Detecting conda"

if ! command -v conda &> /dev/null
then
    echo "conda could not be found"
    echo "Trying to add to PATH"
    export PATH="/usr/local/Anaconda3-2021.05/bin:$PATH"
    if ! command -v conda &> /dev/null
    then
        echo "conda could not be found... again."
    else export CONDA_FOUND=1
    fi
else export CONDA_FOUND=1
fi

if $CONDA_FOUND=1
then
    echo "Installing requirements with conda"
    conda install -c conda-forge nbgrader
    jupyter nbextension install --user --py nbgrader --overwrite
    jupyter nbextension enable --user --py nbgrader
    wget https://raw.githubusercontent.com/adimajo/CSE204-2021/master/conda_environment.yml
    conda env create -f conda_environment.yml
    python -m ipykernel install --user --name cse204 --display-name "CSE204"
else
    echo "Detecting pip3"
    if ! command -v pip3 &> /dev/null
    then
        echo "pip3 could not be found. Abording."
        read -p "Press enter to continue"
        exit 1
    else
        echo "pip3 found"
    fi
    echo "Installing requirements with pip3"
    pip3 install --user virtualenv 
    virtualenv cse204
    source cse204/bin/activate
    pip3 install jupyter nbgrader
    jupyter nbextension install --user --py nbgrader --overwrite
    jupyter nbextension enable --user --py nbgrader
    wget https://raw.githubusercontent.com/adimajo/CSE204-2021/master/requirements.txt
    pip3 install -r requirements.txt
    ipython kernel install --name "CSE204" --user
fi

echo "Success"

