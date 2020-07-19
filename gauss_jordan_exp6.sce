clc()
mat =[0,0,0,0;0,0,0,0;0,0,0,0];
for i=1:3
    for j=1:4
        mat(i,j) = input("Enter the  (" +string(i)+" , "+string(j) +" ) element:");
        end
end
disp("Entered matrix is :");
for i=1:3
    disp("" + string(mat(i,1)) + "     " + string(mat(i,2)) + "     " + string(mat(i,3))+"     "+string(mat(i,4)))
end
for i=1:3
    mat(i,:) = mat(i,:)/mat(i,i);
    for j=i+1:3
        mat(j,:) = mat(j,:) - mat(i,:)*mat(j,i);
        end
end
for i=1:3
    for j=i+1:3
        mat(i,:)= mat(i,:) - mat(j,:)*mat(i,j);
        end
end
disp("Identity matrix is :");
for i=1:3
    disp("" + string(mat(i,1)) + "     " + string(mat(i,2)) + "     " + string(mat(i,3))+"     "+string(mat(i,4)))
end
x3 = mat(3,4);
x2 = mat(2,4) - mat(2,3)*x3;
x1 = mat(1,4) - mat(1,3)*x3 - mat(1,2)*x2;
disp("The solutions from guass jordan method are :");
disp("        " + string(x1) + " , " + string(x2) + " , " + string(x3))
