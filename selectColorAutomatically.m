% -----------------------------------------------------------
% Color Flood - Copyright (C) 2015  Ahmad Al-Kashef
%
% You should have received a copy of the GNU General Public License
% along with this program in LICENSE.txt at the root of the source code.
% If not, see <http://www.gnu.org/licenses/>.
% -----------------------------------------------------------

function chosenColor = selectColorAutomatically(grid);
  
  chosenColor = randi(max(unique(grid))); # Random selection
  printf("Automatically chosen color : % d\n", chosenColor);
  pause(0.5);
  
endfunction

