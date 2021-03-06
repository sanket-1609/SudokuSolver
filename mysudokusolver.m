function mysudokusolver(filename)
%% Read in a file
M = dlmread(filename);
  
%% Show the initial state
figure;
set(gcf,'units','pixels','Position',[200 200 800 400]);

D1 = cell(9);
for m = 1:9
    for n = 1:9
        if M(m,n)
            D1{m,n} = M(m,n);
        end
    end
end

%% Call the solver
    Msol = sudoku_solver(M);

%% Show the solution
if isempty(Msol)
    D2 = cell(9);
else
    D2 = num2cell(Msol);
end


h1 = uitable('Data',D1,'FontSize',16,'ColumnWidth',...
    num2cell(repmat(30,1,9)),'columne',false(1,9));
set(h1,'units','norm','position',[.05 .05 .4 .9]);
h2 = uitable('Data',D2,'FontSize',16,'ColumnWidth',num2cell(repmat(30,1,9)));
set(h2,'units','norm','position',[.55 .05 .4 .9]);