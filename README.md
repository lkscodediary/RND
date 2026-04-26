# RND Sandbox
If you enjoy coding both in R and Python or like to explore/experiment with packages from both ecosystems, and love the interactive experience of Jupyter Notebook then follow these steps.

## Goal is to get to this stage
![Sandbox](https://github.com/lkscodediary/RND/blob/main/resources/1.gif)

## Step by step guide
### 1) Install Git, R, Python

### 2) Clone this repo
```console
foo@bar:~$ git clone https://github.com/lkscodediary/RND.git
foo@bar:~$ cd RND
foo@bar:~/RND$
```
### 3) Create a virtual environment
```console
foo@bar:~/RND$ python3 -m venv venv
```
### 4) Activate your virtual environment and upgrade pip
```console
foo@bar:~/RND$ source venv/bin/activate
(venv) foo@bar:~/RND$ pip install --upgrade pip
```
### 5) Install the basic set of packages while virtual environment is activated
```console
(venv) foo@bar:~/RND$ pip install -r resources/requirements.txt
```
### 6) Tidy up some things in jupyter notebook. This step is crucial for step 8
```console
(venv) foo@bar:~/RND$ jupyter notebook --generate-config #Crucial step. This generates a .jupyter directory in HOME directory
(venv) foo@bar:~/RND$ jupyter notebook password #This is optional
```
### 7) Configure and Prep for R
```console
(venv) foo@bar:~/RND$ ./resources/setup.sh #This creates a .Rprofile in HOME directory to direct new R libraries to rlibs directory in RND
(venv) foo@bar:~/RND$ sudo apt-get install libcurl4-openssl-dev #For Linux, ensure curl is installed
(venv) foo@bar:~/RND$ R --no-save #For Linux, start R in terminal
```
### 8) Install Packages in R
```R
df <- read.csv("resources/requirements_r.txt")
install.packages(df$Package, INSTALL_opts = "--no-multiarch") #This should install all of the packages listed in resources/requirements_r.txt
```
### 9) Connect R Kernel to Jupyter Notebook
More at https://github.com/IRkernel/IRkernel
```R
install.packages("IRkernel", INSTALL_opts = "--no-multiarch") #Install IRkernel

IRkernel::installspec(name = "ir44", displayname = 'R 4.4') #Final connection to jupyter notebook
q() #Quit R from console or RGui
```
### 10) Start Jupyter Notebook and Enjoy
```console
(venv) foo@bar:~/RND$ jupyter notebook
```
