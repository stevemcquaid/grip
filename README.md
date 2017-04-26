# grip-docker
This is a dockerfile for executing [grip](https://github.com/joeyespo/grip) in a docker container for live markdown viewing in a web browser

## Usage

`./run.sh [filename]`

### Examples 
* `./run.sh`
    * This will run grip
    * This requires a README.md to be present in current directory
    * This ill automatically open your default browser
* `./run.sh myfile.md`
    * This is the same as above but will open the specified file

NOTE: If you do not have a README.md in the current directory and do not specify a file, grip will not run.

-Enjoy
