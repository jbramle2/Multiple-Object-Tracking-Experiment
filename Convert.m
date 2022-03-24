files = dir('*.mat');               % obtain all files with .mat extenstion
fid = fopen('Participants2.csv','a');   

for k = 1:length(files)
    filename = files(k).name; % get the filename
    FileData = load(files(k).name);
    fprintf(fid, '%s,\n', filename);
    dlmwrite('Correct.csv', FileData.data.correct,'-append');
end

fid = fclose(fid);