% -----------------------------------------------------------
% Color Flood - Copyright (C) 2015  Ahmad Al-Kashef
%
% You should have received a copy of the GNU General Public License
% along with this program in LICENSE.txt at the root of the source code.
% If not, see <http://www.gnu.org/licenses/>.
% -----------------------------------------------------------

clear; clc; close all;

% -----------------------------------------------------------

grid = [1 11 111 1111 -1;
        2 22 222 2222 -2;
        3 33 333 3333 -3;   
        4 44 444 4444 -4];

% -----------------------------------------------------------

for ir = 1 : size(grid, 1)
  for ic = 1 : size(grid, 2)
    printf("node[%d,%d] = %d :\n", ir, ic, grid(ir, ic));
    nodeNeighbours = getNeighbours(grid, [ir, ic]);
    for n = 1 : size(nodeNeighbours, 1)
      grid(nodeNeighbours(n, 1), nodeNeighbours(n, 2))
    endfor
    printf("\n--------------\n");
  endfor
endfor