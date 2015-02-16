
# Color Flood #

This is a Matlab/Octave implementation of the color flood game. 

The aim of the game is to fill the board with a single color in the minimum number of step. In each step, the player selects a color from the template of 6 colors to flood the board. The player iterates until all the cells in the board have a single color. 

The flooding function implements the *stack-based recursive (four-way)* algorithm  described [here](http://en.wikipedia.org/wiki/Flood_fill).

# Project Setup #

### Dependencies ###
This project was developed and tested on GNU Octave, version 3.8.0. 
Octave was configured for "i686-pc-mingw32".

### Project Files ###

- **README.md**: This file. It contains information about the project.
- **LICENSE.txt**: GNU GPL v3.0 License file.
- **copyright.txt**: Copyright notice printed at the prompt when you run the program and included on the top of each source code file.  
- **play.m**: Program head and start file (contains the game flow and calls the rest of the m functions/files). You should run this file to play the game.
- **\*.m**: Matlab/Octave functions which implements the different aspects of the game.
- **/TestBenches**: Contains test bench (unit test) files. **{function}_tb.m** file test **{function}.m**. **tb** stands for Test Bench. 
- **/Misc**: Miscellaneous scripts that I found useful while developing the program.

### To Run the Program ###

1. Load Octave.
2. Set the current directory to the project root.
3. Run **play.m**.

### Game Mode ###

You can choose between two playing modes, either a human (manual) player or a machine (automatic) player by commenting the other in *play.m*:

>  chosenColor = selectColorManually(grid); 
>
>  chosenColor = selectColorAutomatically(grid);

The machine player is not intelligent; it selects a random color.

# Future Work #

1. Improve the automatic player using reinforcement learning.
2. Enable color selection graphically (buttons) rather than using labelled colors on the prompt.
3. End game when the board window is closed.
4. Allow the player to select mode (machine vs human) and grid size.
5. Implement other flooding algorithms.

# Contributors #

- Ahmad Al-Kashef: Initial implementation (v1.0).

# License #

This is an open source free program provided under Version 3 of the GNU GENERAL PUBLIC LICENSE. A copy of the license is available in LICENSE.txt at the root of the source code. If not, please see <http://www.gnu.org/licenses/>.