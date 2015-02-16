% -----------------------------------------------------------
% Color Flood - Copyright (C) 2015  Ahmad Al-Kashef
%
% You should have received a copy of the GNU General Public License
% along with this program in LICENSE.txt at the root of the source code.
% If not, see <http://www.gnu.org/licenses/>.
% -----------------------------------------------------------

clear; clc; close all;

chosenColor = 0;

% -----------------------------------------------------------

grid = [1 1 3 3 1;
        3 1 1 3 3;
        3 1 1 1 1;   
        3 1 3 3 3];

printf("\nBefore flooding:\n"); disp(grid);

targetColor= grid(1,1);
grid = floodGrid(grid, targetColor, chosenColor, [1, 1]);

printf("\nAfter flooding:\n"); disp(grid);
printf("-------------------------------\n");

% -----------------------------------------------------------

grid = [1 3 3 3 3;
        1 3 3 3 3;
        1 3 3 3 3;   
        1 3 3 3 3];

printf("\nBefore flooding:\n"); disp(grid);

targetColor= grid(1,1);
grid = floodGrid(grid, targetColor, chosenColor, [1, 1]);

printf("\nAfter flooding:\n"); disp(grid);
printf("-------------------------------\n");

% -----------------------------------------------------------

grid = [1 1 1 1 1;
        3 3 3 3 3;
        3 3 3 3 3; 
        3 3 3 3 3];

printf("\nBefore flooding:\n"); disp(grid);

targetColor= grid(1,1);
grid = floodGrid(grid, targetColor, chosenColor, [1, 1]);

printf("\nAfter flooding:\n"); disp(grid);
printf("-------------------------------\n");

% -----------------------------------------------------------

grid = [1 1 1 1 1;
        3 3 3 3 3;
        3 3 3 3 3;   
        1 1 1 1 1];

printf("\nBefore flooding:\n"); disp(grid);

targetColor= grid(1,1);
grid = floodGrid(grid, targetColor, chosenColor, [1, 1]);

printf("\nAfter flooding:\n"); disp(grid);
printf("-------------------------------\n");

% -----------------------------------------------------------

grid = [1 1 3 1 3;
        3 1 3 1 3;
        3 1 1 1 3;   
        3 3 3 3 3];

printf("\nBefore flooding:\n"); disp(grid);

targetColor= grid(1,1);
grid = floodGrid(grid, targetColor, chosenColor, [1, 1]);
 
printf("\nAfter flooding:\n"); disp(grid);
printf("-------------------------------\n");
