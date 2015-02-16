% -----------------------------------------------------------
% Color Flood - Copyright (C) 2015  Ahmad Al-Kashef
%
% You should have received a copy of the GNU General Public License
% along with this program in LICENSE.txt at the root of the source code.
% If not, see <http://www.gnu.org/licenses/>.
% -----------------------------------------------------------

function bool =  indexedForFlooding(row, col, listOfCellsToBeFlooded);

  bool = 0;
  
  for i = 1 : size(listOfCellsToBeFlooded, 1)
    rowMatch = row == listOfCellsToBeFlooded(i, 1);
    colMatch = col == listOfCellsToBeFlooded(i, 2);
    if and(rowMatch, colMatch)
      bool = 1;
      break;
    endif
  endfor

endfunction