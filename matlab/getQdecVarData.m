function Qdec2 = getQdecVarData(Qdec1,Vars)
% Qdec2 = getQdecVarData(Qdec1,Vars)
%
% Returns the data for the variables in Qdec table Qdec1 that are named in 
% Vars.
%
% Input
% Qdec1: Two dimensional cell string array of Qdec data (eg. read with 
% fReadQdec).
% Vars: One dimensional cell string array.
%
% Output
% Qdec2: Two dimensional cell string array of Qdec data.
%
% $Revision: 1.2 $  $Date: 2012/12/12 22:58:12 $
% Original Author: Jorge Luis Bernal Rusiel 
% CVS Revision Info:
%    $Author: vinke $
%    $Date: 2012/12/12 22:58:12 $
%    $Revision: 1.2 $
%
if nargin < 2
    error('Too few inputs');
end;
Qdec2 = {};
for i=1:length(Vars)
    col = findQdecVar(Qdec1,Vars{i});
    if ~isempty(col)
        Qdec2 = [Qdec2 Qdec1(:,col)];
    else
        error(['The variable ''' Vars{i} ''' is not in the Qdec table']);
    end;
end;