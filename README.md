![X](https://raw.githubusercontent.com/adimajo/CSE204-2021/master/data/logo.jpg)

# Polytechnique [CSE204-2021](https://moodle.polytechnique.fr/course/view.php?id=12838)

These courses were made by [Jérémie Decock](http://www.jdhp.org/) ([lab sessions 01 to 04](https://github.com/jeremiedecock/polytechnique-cse204-2018)), [Théo Lacombe](https://tlacombe.github.io/) (lab exam 05) and [James B. Scoggins](https://jbscoggi.github.io/website/) ([lab sessions 06 to 13](https://github.com/jbscoggi/teaching/tree/master/Polytechnique/CSE204)) for [CSE204-2018](https://moodle.polytechnique.fr/enrol/index.php?id=6784), slightly amended and put together by [Pawel Guzewicz](http://www.lix.polytechnique.fr/Labo/Pawel.Guzewicz/) and I ([Adrien Ehrhardt](https://adimajo.github.io/)).

## Moodle

[Moodle Link](https://moodle.polytechnique.fr/course/view.php?id=12838)

### Welcome to CSE204 Machine Learning!

Machine learning is an increasingly important area, and it has provided many of the recent advances behind applications of artificial intelligence. It is relevant to a plethora of application domains in science and industry - including in finance, health, transport, linguistics, media, and biology. Lectures will cover the many of the main concepts and algorithms. We will cover in some degree all the main paradigms of machine learning: supervised learning (regression, classification), unsupervised learning, and reinforcement learning. Among many learning algorithms we will look at: least squares, logistic regression, k-nearest neighbors, neural networks and deep learning, decision tree inducers, kernel methods, PCA, k-means clustering, and Q-learning. In the labs, we will implement many of these, and investigate their use in different applications. Programming will be done in Python with scientific libraries such as numpy and scikit-learn. The main grading component is a team project, as well as several in-class tests.

**Course Outline**: A working outline can be found as topics below. This is subject to minor changes as the course progresses.

**Grading:**

14 Lab reports:

* 2 lab exams
* 1 graded exam
* bonuses / maluses for all others

3 Quizzes (grades incorporated to the graded / exam labs).

Group project (in groups of 2-4) 50%

**Some recommended literature:**

There is no official course textbook, but the following are recommendations (others may be added later):

James et al., **An Introduction to Statistical Learning**. Springer. (And/or: Hastie et al., The Elements of Statistical Learning. Springer)

Goodfellow et al. **The Deep Learning Book**. MIT Press.

**Lab sessions:**

Jupyter Notebooks can either be executed on [Google Colab](https://colab.research.google.com/?utm_source=scs-index) (works nicely with Google Drive), [MyBinder](https://mybinder.org/) (don't forget to regularly save your work) or locally, either in the Salles Informatiques, or on your own computers, in which case Anaconda (2021.05 or above ; Python 3.8 or above) is strongly recommended.

### Installation

You can rely on the [setup_CSE204.sh](setup_CSE204.sh) script on Linux and (possibly) Mac OS.

To retrieve it from the command line, type `wget https://raw.githubusercontent.com/adimajo/CSE204-2021/master/setup_CSE204.sh`.

Run it with `bash -i setup_CSE204.sh` (you might be prompted to confirm updates / packages installations).

It does the following:

1. Check if `conda` is available

If the `conda` command does not work, it's that `conda` is not in the PATH environment variable.
If in the computer rooms, it will try to add `conda` by adding its PATH:

`export PATH="/usr/local/Anaconda3-2021.05/bin:$PATH"`

`conda init`

2. Else, check if `pip3` is available

At this stage, it seems you don't have a working Python environment on this computer. Either install [Anaconda](https://www.anaconda.com/products/individual) (2021.05 or above ; Python 3.8 or above) or [Python 3.8](https://www.python.org/downloads/) and restart the script.

3. Install the requirements

*With conda*

We use `nbgrader` extensively: cells in which you have to input your own code are clearly shown; other cells are read-only. You may test your answers with the "Validate" button of the "Assignment list" in Jupyter Notebook. Warning: this is only available through a local installation and requires the installation of nbgrader using:

`conda install -c conda-forge nbgrader`

`jupyter nbextension install --user --py nbgrader --overwrite`

`jupyter nbextension enable --user --py nbgrader`

To list the requirements, we use [this conda_environment.yml](conda_environment.yml) file.

`conda env create -f conda_environment.yml`

`python -m ipykernel install --user --name CSE204 --display-name "Python (CSE204)"`

This will install all dependencies in a new conda environment named CSE204. Once on the Notebook, don't forget to use Kernel > Change Kernel to use the Python (CSE204) environment.
If the conda environment CSE204 already exists, you may delete it with the following command:

`conda remove --name CSE204 --all`

*With pip3*

Requirements are listed in the [requirements.txt](requirements.txt) file, which is also used by binder to prepare your environment.

`pip3 install -r requirements.txt`

### Working with the labs

For each lab, you can choose between working on Colab, MyBinder, or locally (either the Salles Informatiques or your own PC) - provided you ran the script described above. In that case, to launch Jupyter, simply use `jupyter notebook`

Upload your work on Moodle: **do not rename the assignement**, **do not put it in a subfolder**, simply upload e.g. `lab_session_01.ipynb`.

While working on your assignement, **do not change the type** (e.g. Code, Text) **of a cell you did not create** (you are free to create new cells of whatever type).

To work on the mathematical exercises, you can use a sheet of paper; upload it by inserting a new blank Markdown cell and clicking **Edit** > **Insert image**.

Failure to follow these rules will break the autograding software (and result in 0 point for that assignment).

## Lab sessions

## Lab session 01: Introduction

### Subject:

[![Open in Google Colab](https://colab.research.google.com/assets/colab-badge.svg)](https://colab.research.google.com/github/adimajo/CSE204-2021/blob/master/lab_session_01/lab_session_01.ipynb)

[![My Binder](https://mybinder.org/badge_logo.svg)](https://mybinder.org/v2/gh/adimajo/CSE204-2021/master?filepath=lab_session_01%2Flab_session_01.ipynb)

[![Local](https://img.shields.io/badge/Local-Save%20As...-blue)](https://github.com/adimajo/CSE204-2021/raw/master/lab_session_01/lab_session_01.ipynb)

### Solution:

[![Solutions](https://img.shields.io/badge/Solution-As%20HTML-blueviolet)](https://adimajo.github.io/CSE204-2021/lab_session_01/lab_session_01.html)

## Lab session 02: parametric models

### Subject:

[![Open in Google Colab](https://colab.research.google.com/assets/colab-badge.svg)](https://colab.research.google.com/github/adimajo/CSE204-2021/blob/master/lab_session_02/lab_session_02.ipynb)

[![My Binder](https://mybinder.org/badge_logo.svg)](https://mybinder.org/v2/gh/adimajo/CSE204-2021/master?filepath=lab_session_02%2Flab_session_02.ipynb)

[![Local](https://img.shields.io/badge/Local-Save%20As...-blue)](https://htmlpreview.github.io/?https://github.com/adimajo/CSE204-2021/blob/master/lab_session_02/lab_session_02.html)

### Solution:

[![Solutions](https://img.shields.io/badge/Solution-As%20HTML-blueviolet)](https://adimajo.github.io/CSE204-2021/lab_session_02/lab_session_02.html)

## Lab session 03: `k`-nearest neighbors

### Subject:

[![Open in Google Colab](https://colab.research.google.com/assets/colab-badge.svg)](https://colab.research.google.com/github/adimajo/CSE204-2021/blob/master/lab_session_03/lab_session_03.ipynb)

[![My Binder](https://mybinder.org/badge_logo.svg)](https://mybinder.org/v2/gh/adimajo/CSE204-2021/master?filepath=lab_session_03%2Flab_session_03.ipynb)

[![Local](https://img.shields.io/badge/Local-Save%20As...-blue)](https://github.com/adimajo/CSE204-2021/raw/master/lab_session_03/lab_session_03.ipynb)

### Solution:

[![Solutions](https://img.shields.io/badge/Solution-As%20HTML-blueviolet)](https://adimajo.github.io/CSE204-2021/lab_session_03/lab_session_03.html)

## Lab session 04: regression methods

### Subject:

[![Open in Google Colab](https://colab.research.google.com/assets/colab-badge.svg)](https://colab.research.google.com/github/adimajo/CSE204-2021/blob/master/lab_session_04/lab_session_04.ipynb)

[![My Binder](https://mybinder.org/badge_logo.svg)](https://mybinder.org/v2/gh/adimajo/CSE204-2021/master?filepath=lab_session_04%2Flab_session_04.ipynb)

[![Local](https://img.shields.io/badge/Local-Save%20As...-blue)](https://github.com/adimajo/CSE204-2021/raw/master/lab_session_04/lab_session_04.ipynb)

### Solution:

[![Solutions](https://img.shields.io/badge/Solution-As%20HTML-blueviolet)](https://adimajo.github.io/CSE204-2021/lab_session_04/lab_session_04.html)

## Lab session 05: Exam 1

### Subject:

[![Open in Google Colab](https://colab.research.google.com/assets/colab-badge.svg)](https://colab.research.google.com/github/adimajo/CSE204-2021/blob/master/lab_session_05/lab_session_05.ipynb)

[![My Binder](https://mybinder.org/badge_logo.svg)](https://mybinder.org/v2/gh/adimajo/CSE204-2021/master?filepath=lab_session_05%2Flab_session_05.ipynb)

[![Local](https://img.shields.io/badge/Local-Save%20As...-blue)](https://github.com/adimajo/CSE204-2021/raw/master/lab_session_05/lab_session_05.ipynb)

### Solution:

[![Solutions](https://img.shields.io/badge/Solution-As%20HTML-blueviolet)](https://adimajo.github.io/CSE204-2021/lab_session_05/lab_session_05.html)

## Lab session 06: building a neural network from scratch (part 1)

### Subject:

[![Open in Google Colab](https://colab.research.google.com/assets/colab-badge.svg)](https://colab.research.google.com/github/adimajo/CSE204-2021/blob/master/lab_session_06/lab_session_06.ipynb)

[![My Binder](https://mybinder.org/badge_logo.svg)](https://mybinder.org/v2/gh/adimajo/CSE204-2021/master?filepath=lab_session_06%2Flab_session_06.ipynb)

[![Local](https://img.shields.io/badge/Local-Save%20As...-blue)](https://github.com/adimajo/CSE204-2021/raw/master/lab_session_06/lab_session_06.ipynb)

### Solution:

[![Solutions](https://img.shields.io/badge/Solution-As%20HTML-blueviolet)](https://www.youtube.com/watch?v=dQw4w9WgXcQ)

## Lab session 07: building a neural network from scratch (part 2)

<!---
### Subject:

[![Open in Google Colab](https://colab.research.google.com/assets/colab-badge.svg)](https://colab.research.google.com/github/adimajo/CSE204-2021/blob/master/lab_session_07/lab_session_07.ipynb)

[![My Binder](https://mybinder.org/badge_logo.svg)](https://mybinder.org/v2/gh/adimajo/CSE204-2021/master?filepath=lab_session_07%2Flab_session_07.ipynb)

[![Local](https://img.shields.io/badge/Local-Save%20As...-blue)](https://github.com/adimajo/CSE204-2021/raw/master/lab_session_07/lab_session_07.ipynb)

### Solution:

[![Solutions](https://img.shields.io/badge/Solution-As%20HTML-blueviolet)](https://www.youtube.com/watch?v=dQw4w9WgXcQ)
-->

## Lab session 08: Classification of the CIFAR-10 dataset using CNNs

<!---
### Subject:

[![Open in Google Colab](https://colab.research.google.com/assets/colab-badge.svg)](https://colab.research.google.com/github/adimajo/CSE204-2021/blob/master/lab_session_08/lab_session_08.ipynb)

[![My Binder](https://mybinder.org/badge_logo.svg)](https://mybinder.org/v2/gh/adimajo/CSE204-2021/master?filepath=lab_session_08%2Flab_session_08.ipynb)

[![Local](https://img.shields.io/badge/Local-Save%20As...-blue)](https://github.com/adimajo/CSE204-2021/raw/master/lab_session_08/lab_session_08.ipynb)

### Solution:

[![Solutions](https://img.shields.io/badge/Solution-As%20HTML-blueviolet)](https://www.youtube.com/watch?v=dQw4w9WgXcQ)
-->

## Lab session 09: Decision Trees and Ensemble Methods

<!---
### Subject:

[![Open in Google Colab](https://colab.research.google.com/assets/colab-badge.svg)](https://colab.research.google.com/github/adimajo/CSE204-2021/blob/master/lab_session_09/lab_session_09.ipynb)

[![My Binder](https://mybinder.org/badge_logo.svg)](https://mybinder.org/v2/gh/adimajo/CSE204-2021/master?filepath=lab_session_09%2Flab_session_09.ipynb)

[![Local](https://img.shields.io/badge/Local-Save%20As...-blue)](https://github.com/adimajo/CSE204-2021/raw/master/lab_session_09/lab_session_09.ipynb)

### Solution:

[![Solutions](https://img.shields.io/badge/Solution-As%20HTML-blueviolet)](https://www.youtube.com/watch?v=dQw4w9WgXcQ)
-->

## Lab session 10: Dimensionality Reduction with PCA and Autoencoders

<!---
### Subject:

[![Open in Google Colab](https://colab.research.google.com/assets/colab-badge.svg)](https://colab.research.google.com/github/adimajo/CSE204-2021/blob/master/lab_session_10/lab_session_10.ipynb)

[![My Binder](https://mybinder.org/badge_logo.svg)](https://mybinder.org/v2/gh/adimajo/CSE204-2021/master?filepath=lab_session_10%2Flab_session_10.ipynb)

[![Local](https://img.shields.io/badge/Local-Save%20As...-blue)](https://github.com/adimajo/CSE204-2021/raw/master/lab_session_10/lab_session_10.ipynb)

### Solution:

[![Solutions](https://img.shields.io/badge/Solution-As%20HTML-blueviolet)](https://www.youtube.com/watch?v=dQw4w9WgXcQ)
-->

## Lab session 11: Unsupervised Learning - Clustering

<!---
### Subject:

[![Open in Google Colab](https://colab.research.google.com/assets/colab-badge.svg)](https://colab.research.google.com/github/adimajo/CSE204-2021/blob/master/lab_session_11/lab_session_11.ipynb)

[![My Binder](https://mybinder.org/badge_logo.svg)](https://mybinder.org/v2/gh/adimajo/CSE204-2021/master?filepath=lab_session_11%2Flab_session_11.ipynb)

[![Local](https://img.shields.io/badge/Local-Save%20As...-blue)](https://github.com/adimajo/CSE204-2021/raw/master/lab_session_11/lab_session_11.ipynb)

### Solution:

[![Solutions](https://img.shields.io/badge/Solution-As%20HTML-blueviolet)](https://www.youtube.com/watch?v=dQw4w9WgXcQ)
-->

## Lab session 12: Exam 2

<!---
### Subject:

[![Open in Google Colab](https://colab.research.google.com/assets/colab-badge.svg)](https://colab.research.google.com/github/adimajo/CSE204-2021/blob/master/lab_session_12/lab_session_12.ipynb)

[![My Binder](https://mybinder.org/badge_logo.svg)](https://mybinder.org/v2/gh/adimajo/CSE204-2021/master?filepath=lab_session_12%2Flab_session_12.ipynb)

[![Local](https://img.shields.io/badge/Local-Save%20As...-blue)](https://github.com/adimajo/CSE204-2021/raw/master/lab_session_12/lab_session_12.ipynb)

### Solution:

[![Solutions](https://img.shields.io/badge/Solution-As%20HTML-blueviolet)](https://www.youtube.com/watch?v=dQw4w9WgXcQ)
-->

## Lab session 13: Reinforcement Learning

<!---
### Subject:

[![Open in Google Colab](https://colab.research.google.com/assets/colab-badge.svg)](https://colab.research.google.com/github/adimajo/CSE204-2021/blob/master/lab_session_13/lab_session_13.ipynb)

[![My Binder](https://mybinder.org/badge_logo.svg)](https://mybinder.org/v2/gh/adimajo/CSE204-2021/master?filepath=lab_session_13%2Flab_session_13.ipynb)

[![Local](https://img.shields.io/badge/Local-Save%20As...-blue)](https://github.com/adimajo/CSE204-2021/raw/master/lab_session_13/lab_session_13.ipynb)

### Solution:

[![Solutions](https://img.shields.io/badge/Solution-As%20HTML-blueviolet)](https://www.youtube.com/watch?v=dQw4w9WgXcQ)
-->

## Lab session 14: Evolutionary algorithms

<!---

### Subject:

[![Open in Google Colab](https://colab.research.google.com/assets/colab-badge.svg)](https://colab.research.google.com/github/adimajo/CSE204-2021/blob/master/lab_session_14/lab_session_14.ipynb)

[![My Binder](https://mybinder.org/badge_logo.svg)](https://mybinder.org/v2/gh/adimajo/CSE204-2021/master?filepath=lab_session_14%2Flab_session_14.ipynb)

[![Local](https://img.shields.io/badge/Local-Save%20As...-blue)](https://github.com/adimajo/CSE204-2021/raw/master/lab_session_14/lab_session_14.ipynb)

### Solution:

[![Solutions](https://img.shields.io/badge/Solution-As%20HTML-blueviolet)](https://www.youtube.com/watch?v=dQw4w9WgXcQ)
-->
