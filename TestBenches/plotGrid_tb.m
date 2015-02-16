% -----------------------------------------------------------
% Color Flood - Copyright (C) 2015  Ahmad Al-Kashef
%
% You should have received a copy of the GNU General Public License
% along with this program in LICENSE.txt at the root of the source code.
% If not, see <http://www.gnu.org/licenses/>.
% -----------------------------------------------------------

clear; clc; close all;

#--------------------------------------

x0 = [1 2 3 4 5 6;
      2 3 4 5 6 1;
      3 4 5 6 1 2; 
      4 5 6 1 2 3;
      5 6 1 2 3 4];

#--------------------------------------
      
colors = [1 2 3 4 5 6];

#--------------------------------------

x1 = 1  .* ones(6,6); x1 = [x1;colors];
x2 = 2  .* ones(5,6); x2 = [x2;colors];
x3 = 3  .* ones(6,6); x3 = [x3;colors];
x4 = 4  .* ones(6,6); x4 = [x4;colors];
x5 = 5  .* ones(6,6); x5 = [x5;colors];
x6 = 6  .* ones(6,6); x6 = [x6;colors];
x7 = 10 .* ones(6,6); x7 = [x7;colors];
x8 = -9 .* ones(6,6); x8 = [x8;colors];

#--------------------------------------

figure(1); image(x0); colormap(jet(6));
figure(2); image(x1); colormap(jet(6));
figure(3); image(x2); colormap(jet(6));
figure(4); image(x3); colormap(jet(6));
figure(5); image(x4); colormap(jet(6));
figure(6); image(x5); colormap(jet(6));
figure(7); image(x6); colormap(jet(6));
figure(8); image(x7); colormap(jet(6));
figure(9); image(x8); colormap(jet(6));