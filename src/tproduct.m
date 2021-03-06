function [C] = tproduct (A, B)
  [l,p,n] = size(A);
  [p1,m,n1] = size(B);
  assert (p==p1 && n==n1, "Tensor dimensions do not match!");
  
  C = foldn(circ(A)*double(matvec(B)),n);
%  else
%    C = zeros(l,m,n);
%    for i=1:l
%      for j=1:m
%        for k=1:p
%          C(i,j,:) += tubalScalarMul(A(i,k,:),B(k,j,:));
%        end
%      end
%    end
%  end
end
