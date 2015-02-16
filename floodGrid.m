% -----------------------------------------------------------
% Color Flood - Copyright (C) 2015  Ahmad Al-Kashef
%
% You should have received a copy of the GNU General Public License
% along with this program in LICENSE.txt at the root of the source code.
% If not, see <http://www.gnu.org/licenses/>.
% -----------------------------------------------------------

function [grid] = floodGrid(grid, targetColor, chosenColor, node);
    
  # Source: http://en.wikipedia.org/wiki/Flood_fill
  #         Stack-based recursive implementation (Four-way)
  
  #targetColor    = grid(1, 1)
  nodeColor      = grid(node(1), node(2));
  nodeNeighbours = getNeighbours(grid, node);
  
  # 1. If target-color is equal to replacement-color, return.
  if (chosenColor == targetColor)
    return;
  endif
  
  # 2. If the color of node is not equal to target-color, return.
  if (nodeColor != targetColor)
    return;
  endif
  
  # 3. Set the color of node to replacement-color.
  grid(node(1), node(2)) = chosenColor;
  
  # 4. Perform Flood-fill for all neighbours.
  for n = 1 : size(nodeNeighbours, 1)
    grid = floodGrid(grid, targetColor, chosenColor, nodeNeighbours(n,:));
  endfor
  
endfunction