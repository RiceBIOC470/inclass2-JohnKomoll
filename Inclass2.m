%% Inclass assignment 2

% 1. a. fill in this loop with a conditional statement so that it displays
% only the odd numbers

for ii = 1:20
    if mod(ii,2)
        disp(int2str(ii))
    end
end

% b. Write a new loop to display the same odd numbers which doesn't use a conditional statement 

for ii = 1:2:19
   disp(int2str(ii)) 
end

% c. display the same odd numbers without a loop or conditional (hint use
%  num2str)

disp(num2str((1:2:19)'))
%% 2. Vectorize the following code (that is produce the same result in z
%without using a loop). 

%a. 

for ii = 1:100
    z(ii) = ii*ii;
end

z2 = (1:100).^2

%b. 
z = 0;
for ii = 1:100
    z = z + ii;
end

z2 = sum(1:100)

%c.
xx = rand(50,2);

for ii = 1:50
    z(ii) = sqrt(xx(ii,1)^2+xx(ii,2)^2);
end

z2 = sqrt(sum(xx.^2,2))'

% d. what is the formula in c computing?

% The formula in c is computing the distance of each point (represented by
% a row of xx) from the origin. The first column represents the
% x-coordinates, and the second column represents the y-coordinates. The
% formula returns a vector with the distance of each point (as
% represented by a row of xx) from the origin.
%% plotting

%a. make a plot of sin(x) and cos(x) vs x from x = 0 to 4*pi on the same axis where the graph
%of sin(x) vs x is a red-dashed line and the graph of cos(x) vs x is a
%blue solid line.

x = 0:0.01:4*pi;
plot(x,sin(x),'r--')
hold on
plot(x,cos(x),'b-')
xlabel('x', 'FontSize', 24)
ylabel('sin(x) or cos(x)', 'FontSize', 24)
legend({'sin(x)', 'cos(x)'}, 'FontSize', 18, 'Location', 'Best')
set(gca, 'FontSize', 16)

%b. repeat the above but where each graph is in a different subplot in the
% same figure. 

figure
subplot(2,1,1), plot(x, sin(x), 'r--')
xlabel('x', 'FontSize', 24)
ylabel('sin(x)', 'FontSize', 24)
set(gca, 'FontSize', 16)
subplot(2,1,2), plot(x, cos(x), 'b-')
xlabel('x', 'FontSize', 24)
ylabel('cos(x)', 'FontSize', 24)
set(gca, 'FontSize', 16)

%c. here is some data, imagine they are x and y coordinates for cells. 
xy_dat = rand(100,2);
%plot the data in the xy plane.

figure
plot(xy_dat(:,1),xy_dat(:,2), '.', 'MarkerSize', 10)
xlabel('x-location', 'FontSize', 24)
ylabel('y-location', 'FontSize', 24)
set(gca, 'FontSize', 16)

%now imagine there is some fluorescence data corresponding to the same
%cells
fluor = rand(100,1);
% plot the data in the xy plane but color code the data by the fluorescnece
% values. Hint: see the scatter command

figure
scatter(xy_dat(:,1),xy_dat(:,2),10,fluor,'filled')
xlabel('x-location', 'FontSize', 24)
ylabel('y-location', 'FontSize', 24)
set(gca, 'FontSize', 16)
