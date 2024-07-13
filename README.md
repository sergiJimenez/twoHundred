```md
                       ___    __  __                        __                    __     
                     /'___`\ /\ \/\ \                      /\ \                  /\ \    
                    /\_\ /\ \\ \ \_\ \   __  __    ___     \_\ \   _ __    __    \_\ \   
                    \/_/// /__\ \  _  \ /\ \/\ \ /' _ `\   /'_` \ /\`'__\/'__`\  /'_` \  
                       // /_\ \\ \ \ \ \\ \ \_\ \/\ \/\ \ /\ \L\ \\ \ \//\  __/ /\ \L\ \ 
                      /\______/ \ \_\ \_\\ \____/\ \_\ \_\\ \___,_\\ \_\\ \____\\ \___,_\
                      \/_____/   \/_/\/_/ \/___/  \/_/\/_/ \/__,_ / \/_/ \/____/ \/__,_ /
```

[![en](https://img.shields.io/badge/lang-en-red.svg)](https://github.com/sergiJimenez/twoHundred/blob/master/README.md)
[![es](https://img.shields.io/badge/lang-es-yellow.svg)](https://github.com/sergiJimenez/twoHundred/blob/master/README.es.md)

## Description
This shell script automates the repeated execution of tests for a Node.js project using npm. It is designed to run a set of tests defined in the project repeatedly, with a specific number of iterations controlled by the user. In addition, it provides statistics on the success and failure of the tests, as well as the total execution time.

## Installation and implementation
1. Clone the repository.
2. Drag the file twoHundred.bash into your project where you want to run the tests. **It is important to place it in the root of the project.
3. Open a terminal that allows bash scripts to be run.
4. Navigate to the directory where the project is located, and the script.
5. Open the script in any code editor.
6. Modify the desired number of iterations by changing the value of the variable `n`.
7. Run the script with the command `./twoHundred.sh`.

## Minimal dependencies
- Node.js.
- npm.
- The project must have a test script defined in the `package.json` file that can be run with `npm run test`.
- Optionally, if you wish to receive an audio notification upon successful completion of all tests, you must provide a valid path to the audio file on the line using `powershell`. Otherwise you can remove line 29 from the `twoHundred.bash` file.

## Use
The user can change the `n` variable to the desired number of iterations to run the tests. The script will then run the tests defined in the project with `npm run test`, as this is the default command to run the tests, as many times as specified. If any of the tests fail, the script will stop the execution and display an error message indicating the failure.

## Results
After completing all iterations, the script provides information on the total number of successful and failed tests. If all tests are successful, the script can provide an audio notification (optional) and open the code coverage file in a web browser.
