profile = xlsread('Data.xlsx','A:A'); %the profile vector
Rank = xlsread('Data.xlsx','B:B'); %dependent variable vector

%function to get each attribute array from the profiles
function attr_array = get_attri_array(attri, profiles, length_of_profile) 
 
    for i = 1:length_of_profile
        %to get individual profiles
        profile = num2str(profiles);
        temp = profile(i,attri); %get an array of the specific attribute
        temp2 = str2double(temp);
        attr_array(i,1)= temp2;
    end
end

%create one arrays for each category of attribute
for i = 1:4  
       attr_Array = get_attri_array(i, profile, length(profile));  
       if i == 1
           A = reshape(attr_Array,[length(attr_Array),1]);
       elseif i == 2
           B = reshape(attr_Array,[length(attr_Array),1]);
       elseif i == 3
           C = reshape(attr_Array,[length(attr_Array),1]);
       elseif i == 4
           D = reshape(attr_Array,[length(attr_Array),1]);
       end
           O = ones(n,1); %array of ones for finding the constant term
end

X = [O A B C D];  %matrix that contains the independent variables for the regression
R = regress(Rank,X);  %R is the vector that contains the weights of the attributes
c0 = R(1); %constant term in the model
c1 = R(2); %weight of attribute 1
c2 = R(3); %weight of attribute 2
c3 = R(4); %weight of attribute 3
c4 = R(5); %weight of attribute 4
