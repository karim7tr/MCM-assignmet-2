function [r]=GetBasicVectorWrtBase(biTei, linkNumber)
%%% GetBasicVectorWrtBase function 
% input :
% iTj trasnformation matrix in between i and j 
% output
% r : basic vector from i to j

bTi = GetTransformationWrtBase(biTei,linkNumber);
r = bTi(1:3,end);

end