% -----------------------------------------------------------
% Color Flood - Copyright (C) 2015  Ahmad Al-Kashef
%
% You should have received a copy of the GNU General Public License
% along with this program in LICENSE.txt at the root of the source code.
% If not, see <http://www.gnu.org/licenses/>.
% -----------------------------------------------------------

function [nodeNeighbours] = getNeighbours(grid, node);

  # Initialize output matrix
  nodeNeighbours = zeros(0,0);
  
  if (node(1) > 1)
    nodeNeighbours = [nodeNeighbours; [node(1) - 1, node(2)]];
  endif

  if (node(2) > 1)
    nodeNeighbours = [nodeNeighbours; [node(1), node(2) - 1]];
  endif
  
  if (node(2) < size(grid,2))
    nodeNeighbours = [nodeNeighbours; [node(1), node(2) + 1]];
  endif
  
  if (node(1) < size(grid,1))
    nodeNeighbours = [nodeNeighbours; [node(1) + 1, node(2)]];
  endif
  
endfunction