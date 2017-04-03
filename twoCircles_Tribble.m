clc
clear

% Get the inputs
c1 = input('Enter the coordinates of the center of Circle 1: ');
r1 = input('Enter the radius of Circle 1: ');
c2 = input('Enter the coordinates of the center of Circle 2: ');
r2 = input('Enter the radius of Circle 2: ');

% Calculate the distance between the centers of the circles
distance = sqrt((c2(1)-(c1(1)))^2 + (c2(2)-c1(2))^2);

% Determine the scenario and output the result
if distance <= abs(r1-r2)
    fprintf('\nCircle 1:\n\tCenter: (%.1f,%.1f)\n\tRadius: %.1f\n\nCircle 2:\n\tCenter: (%.1f,%.1f)\n\tRadius: %.1f\n\nCircle 2 is inside Circle 1.\n\n',c1(1),c1(2),r1,c2(1),c2(2),r2);
elseif distance <= r1+r2
    fprintf('\nCircle 1:\n\tCenter: (%.1f,%.1f)\n\tRadius: %.1f\n\nCircle 2:\n\tCenter: (%.1f,%.1f)\n\tRadius: %.1f\n\nCircle 2 overlaps Circle 1.\n\n',c1(1),c1(2),r1,c2(1),c2(2),r2);
else
    fprintf('\nCircle 1:\n\tCenter: (%.1f,%.1f)\n\tRadius: %.1f\n\nCircle 2:\n\tCenter: (%.1f,%.1f)\n\tRadius: %.1f\n\nThe two circles do not touch.\n\n',c1(1),c1(2),r1,c2(1),c2(2),r2);
end
