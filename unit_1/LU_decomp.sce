clc
funcprot(0)   //if variables are redefined do nothing
format('v',10)
A = input("Enter a matrix[NxN]: ")

function lu_decomp(A)
    
    U = A;
    disp(A,"The given matrix is A = ")
    m = det(U(1,1)); 
    n = det(U(2,1));
    a=n/m;
    
    U(2,:) = U(2,:) - U(1,:)/(m/n);
    n= det(U(3,1));
    b=n/m;
    
    U(3,:) = U(3,:) - U(1,:)/(m/n);
    m = det(U(2,2));
    n = det(U(3,2));
    c = n/m;
    
    U(3,:) = U(3,:) - U(2,:)/(m/n);
    disp(U,'Upper traingular Matrix U = ')
    
    L = [1,0,0;a,1,0;b,c,1];
    disp(L,'Lower traingular Matrix L = ')
    
endfunction


//PES1201802018
