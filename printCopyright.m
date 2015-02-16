% -----------------------------------------------------------
% Color Flood - Copyright (C) 2015  Ahmad Al-Kashef
%
% You should have received a copy of the GNU General Public License
% along with this program in LICENSE.txt at the root of the source code.
% If not, see <http://www.gnu.org/licenses/>.
% -----------------------------------------------------------

function printCopyright(copyrightFile);

  fid = fopen(copyrightFile,'r');
  
  if (fid < 0) 
	  printf('Error: could not find the copyright notice file.\n');
  else
	  printf("\n");
    while (~feof(fid)),
		  line = fgetl(fid);
      printf("%s\n", line);
	  end;
    printf("\n");
    fclose(fid);
  end; 
   
endfunction