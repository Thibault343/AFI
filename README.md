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
[1] vim, Status: false
[2] sl, Status: false
[3] neofetch, Status: false
[4] sublime-text, Status: false
Select in this format (1 2 3) :
2 3 4
```
5. Validate the download.
```bash
Validate by writing ‘start’ :
start
```

# Want add more?
Create a pull request and add the line in the script!!

