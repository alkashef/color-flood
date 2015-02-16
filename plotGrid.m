% -----------------------------------------------------------
% Color Flood - Copyright (C) 2015  Ahmad Al-Kashef
%
% You should have received a copy of the GNU General Public License
% along with this program in LICENSE.txt at the root of the source code.
% If not, see <http://www.gnu.org/licenses/>.
% -----------------------------------------------------------

function plotGrid(grid, colors, colorNames);

  % Plot grid
  image(grid);
  
  % Set figure title
  set (gcf, 'name', 'Color Flood - v1.0');
  set (gcf, 'numbertitle', 'off');
  
  % Set color map
  colormap(jet(length(colors)));
  
  % Custom color map:
  %map      = [  0,   0, 128;  % Navy
  %             30, 144, 255;  % Blue
  %              0, 128,   0;  % Green
  %            255,  10,  10;  % Red
  %            255, 140,   0;  % Orange
  %            255, 255,   0]; % Yellow
  %colormap(map ./ 255);             
  
  % Set color bar
  hcb = colorbar;
  getIndexes = arrayfun(@(xx) find(colors == xx), colors); 
  set(hcb, 'YTickLabel', colorNames(getIndexes));

  % Remove image labels
  set(gca, 'XTickLabel', []);
  set(gca, 'YTickLabel', []);
  
  % Flush plot buffer
  drawnow;
  
endfunction
