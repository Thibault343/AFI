# APT Fast Installer 
## What is AFI?
Are you installing a new Linux computer and would like to install all your software at once? AFI is here to solve the problem.
AFI is a script that allows you to install everything that can be downloaded via APT in one go.
## How do I use it?
1. Download or clone the repository.
```bash
git clone https://github.com/Thibault343/AFI

```
2. Add permission to execute the script
```bash
cd ./AFI
chmod +x ./script.sh
```
3. Execute the script.
```bash
./script.sh
```
4. Select what you want to download 
Example: 2 3 4 will download sl, neofetch and sublime-text
```bash
[1] vim
[2] sl 
[3] neofetch 
[4] sublime-text
Select in this format (1 2 3) :
2 3 4
```
5. Validate the download.
```bash
Validate by writing ‘start’ :
start
```
# AppList
- vim
- sl
- neofetch
- sublime text
- cmatrix
- Visual Studio Code (code)
# Want add more?
Create a pull request and add the line in the script!!

