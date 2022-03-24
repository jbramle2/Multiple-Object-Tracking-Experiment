d=dir('*.mat');  % get the list of files
x=[];            % start w/ an empty array
for i=1:length(d)
x=[x; load(d(i).name)];   % read/concatenate into x
end
save('combined.mat',x)