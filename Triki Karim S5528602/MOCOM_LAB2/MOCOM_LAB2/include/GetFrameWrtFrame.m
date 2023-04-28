function [iTj]=GetFrameWrtFrame(linkNumber_i, linkNumber_j,biTei)
%%% GetFrameWrtFrame function 
% inputs : 
% linkNumber_i : number of ith link 
% linkNumber_j: number of jth link 
% biTei vector of matrices containing the transformation matrices from link i to link i +1 for the current q.
% The size of biTri is equal to (4,4,numberOfLinks)
% outputs:
% iTj : transformationMatrix in between link i and link j for the
% configuration described in biTei

minVal = min(linkNumber_i, linkNumber_j);
MaxVal = max(linkNumber_i, linkNumber_j);
iTj= biTei(:,:,minVal);

if minVal~= MaxVal
for y= minVal+1 : MaxVal
    iTjy = biTei(:,:,y);
    iTj = iTj*iTjy;
    %disp(iTj);
end
clc
end