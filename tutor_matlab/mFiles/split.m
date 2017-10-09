function tokenList = split(str, delimiter, mode)
% split: Split a string based on a given delimiter
%	Usage: tokenList = split(str, delimiter, mode)
%
%	For example:
%		str='--This-is---a-test--';
%		fprintf('str = "%s"\n', str);
%		tokenList=split(str, '-', 0);
%		fprintf('After running "tokenList = split(str, ''-'', 0)":\n');
%		strVecPrint(tokenList, 'tokenList');
%		tokenList=split(str, '-', 1);
%		fprintf('After running "tokenList = split(str, ''-'', 1)":\n');
%		strVecPrint(tokenList, 'tokenList');

%	See also JOIN.

%	Roger Jang, 20010324, 20071009

if nargin<1; selfdemo; return; end
if nargin<2; delimiter=' '; end
if nargin<3; mode=0; end

if length(str)==0
	tokenList={};
	return;
end

switch(mode)
	case 0
		tokenList = {};
		remain = str;
		i = 1;
		while ~isempty(remain),
			[token, remain] = strtok(remain, delimiter);
			tokenList{i} = token;
			i = i+1;
		end
		% Get rid of the possible empty last element
		if isempty(tokenList{end})
			tokenList(end)=[];
		end
	case 1
		tokenList={};
		beginPos=1;
		prevDef=0;
		for i=1:length(str)
			if str(i)==delimiter
				tokenList{end+1}=str(beginPos:i-1);
				prefDef=0;
				beginPos=i+1;
			end
			if str(i)~=delimiter & ~prevDef
				beginPos=i;
				prevDef=1;
			end 
		end

		if str(end)==delimiter
			tokenList{end+1}='';
		else
			tokenList{end+1}=str(beginPos:end);
		end
	otherwise
		error('Unknown mode!');
end

% ====== Self demo
function selfdemo
str='--This-is---a-test--';
fprintf('str = "%s"\n', str);
tokenList=feval(mfilename, str, '-', 0);
fprintf('After running "tokenList = split(str, ''-'', 0)":\n');
strVecPrint(tokenList, 'tokenList');
tokenList=feval(mfilename, str, '-', 1);
fprintf('After running "tokenList = split(str, ''-'', 1)":\n');
strVecPrint(tokenList, 'tokenList');