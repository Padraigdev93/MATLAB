

Point=[0,0];% original location of the point

plot(Point(1),Point(2),'o');
hold on 

numberOfSteps = 100;
maxCount = 10000;
for count=1:maxCount
    Point=[0,0];
    for i = 1:numberOfSteps
        random = rand;
        if random <.05
            Point(1)=xPoint(1)-1;
        elseif random >0.5
            Point(1)=Point(1)+1; 
        else
            Point(2)=Point(2)-1
        end
    
    
    plot(Point(1),Point(2),'o'); % drawing new coordinte
    hold on
    drawnow % graphic function 
    pause(.3) % pause to make animation slower 
end