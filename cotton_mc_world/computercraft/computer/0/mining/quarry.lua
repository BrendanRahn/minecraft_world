
--params will be x, y, z
local params = {...}
local x = params[1] --east-west
local y = params[2] --up-down
local z = params[3] --north-south


local going_forward = true

function check_fuel()
    return turtle.getFuelLevel()
end    

function refuel()
    if check_fuel() == 0 then
        turtle.refuel()
        print("turtle refueled")
    end    
end
--always rotates to the right
function rotate(direction)

    if (direction == "right") then
        turtle.turnRight()
        turtle.dig()
        turtle.forward()
        turtle.turnRight()
    elseif (direction == "left") then
        turtle.turnLeft()
        turtle.dig()
        turtle.forward()
        turtle.turnLeft()
    end
        
end

function go_down()
    turtle.digDown()
    turtle.down()
    turtle.turnRight()
    turtle.turnRight()
end

turtle.dig()
turtle.forward()

for i=1,y do

    for j=1,x do

        for k=1,z-1 do
            check_fuel()
            if turtle.detect() then
                turtle.dig()
            end
            turtle.forward()         
        end
    
        if (j < tonumber(x)) then                    
            if (going_forward == true) then
                rotate("right")
                going_forward = false
            elseif (going_forward == false) then
                    rotate("left")
                going_forward = true
        end    
        end
    end
    go_down()
end




 
