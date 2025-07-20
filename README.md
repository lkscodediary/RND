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
(venv) foo@bar:~/RND$ jupyter notebook --generate-config #This is generate a .jupyter in your home directory
(venv) foo@bar:~/RND$ jupyter notebook password #This is optional
```
### 7) Start R
```console
foo@bar:~/RND$ R --no-save
```
### 8) Run the following commands in R
```R
#Install IRkernel
install.packages("IRkernel", INSTALL_opts = "--no-multiarch")

#Configure IRkernel. This is how we connect R kernel to Jupyter Notebook.
#More at https://github.com/IRkernel/IRkernel
#My version of R at the time of writing this is 4.4.2
IRkernel::installspec(name = "ir44", displayname = 'R 4.4')

#Quit R from console or RGui
q()
```
### 9) Start Jupyter Notebook
```console
foo@bar:~/RND$ jupyter notebook
```
