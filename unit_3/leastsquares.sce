clc
funcprot(0)   //if variables are redefined do nothing
format('v',10)

function [A,b]=leastsquares(A,b)
    x=(A'*A)\(A'*b);
    disp(x,'x = ');
    C=x(1,1);
    D=x(2,1);
    disp(C,'C = ');
    disp(D,'D = ');
    disp('the Line of best fit is b=C+Dt');
    
endfunction

function main()
    disp('Coefficient Matrix[A]');
    A = input("Enter: ");
   
    disp('Constant Matrix[b]');
    b = input('Enter: ');
    
    [A,b]=leastsquares(A,b);
endfunction

main();


//PES1201802018
