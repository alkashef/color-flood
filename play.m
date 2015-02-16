% -----------------------------------------------------------
% Color Flood - Copyright (C) 2015  Ahmad Al-Kashef
%
% You should have received a copy of the GNU General Public License
% along with this program in LICENSE.txt at the root of the source code.
% If not, see <http://www.gnu.org/licenses/>.
% -----------------------------------------------------------

clear; clc; close all;

printCopyright('copyright.txt');

% -----------------------------------------------------------

% Grid size:
size = 12;

% Color settings:
colorNames = {'1', '2', '3', '4', '5', '6'};
colors = 1:6;

% -----------------------------------------------------------

% Initialize grid:
grid = initializeGrid(size, colors);

% Plot grid:
plotGrid(grid, colors, colorNames);

% Initialize step counter:
step = 1;

while(!gameOver(grid))
  printf(" %2d | ", step);
 
  chosenColor = selectColorManually(grid); # Human player
  #chosenColor = selectColorAutomatically(grid); # Machine player

  targetColor = grid(1,1);

  grid = floodGrid(grid, targetColor, chosenColor, [1, 1]);

  plotGrid(grid, colors, colorNames);

  step = step + 1;

  fflush(stdout);

end

printf("\n Game over!\n\n");

% -----------------------------------------------------------
