function [output] = ostrich_rand(row_nb, col_nb)
	switch nargin
		case 2
			output = rand(row_nb, col_nb);
		case 1
			output = rand(row_nb);
		case 0
			output = rand();
		otherwise
			error('ostrich_rand error: expecting 2 arguments or less');
	end
end
