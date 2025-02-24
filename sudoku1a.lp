% Sudoku Solver
%
% Hints:
% For subgrid of size n, subgrids can be identified by labels 1..n*n
% A cell (x,y) can be mapped to the subgrid labeled 1+(((x-1)/n)*n+(y-1)/n)

% Your implementation please...


% Creating 4x4 rows/columns/nums
rows(1..4).
cols(1..4).
nums(1..4).

%get initial values from input test files
cell(X,Y,N) :- initial(X,Y,N).

% assigna a cell value if there is not an initial one
{ cell(X, Y, N) : nums(N) } = 1 :- rows(X), cols(Y), not initial(X, Y, _).


% prevents rows from having the same numbers
:- cell(X,Y,N), cell(X,Z,N), Y != Z, rows(X), cols(Y), cols(Z).

% prevents columns from having the same number
:- cell(X,Y,N), cell(Z,Y,N), X != Z, cols(Y), rows(X), rows(Z).


% allows for the #show sudoku/3 to run
sudoku(X,Y,N) :- cell(X,Y,N).


#show sudoku/3.
