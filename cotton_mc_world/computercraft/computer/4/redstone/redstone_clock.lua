print("executing redstone clock")


while true do
    
    redstone.setOutput("bottom", true)
    sleep(0.1)
    redstone.setOutput("bottom", false)
    sleep(0.1)
    
end    
