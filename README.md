# grip-docker
This is a dockerfile for executing [grip](https://github.com/joeyespo/grip) in a docker container for live markdown viewing in a web browser

## Usage

`make run` or `./scripts/run.sh`

### Examples 
* `make run` or `./scripts/run.sh`
    * This will run grip in a docker container
    * This requires a README.md to be present in current directory
* `./scripts/run.sh myfile.md`
    * This is the same as above but will open the specified file

NOTE: If you do not have a README.md in the current directory and do not specify a file, grip will not run properly

-Enjoy
