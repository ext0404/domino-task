dominos = {
    {0,1},
    {1,2},
    {2,2},
    {2,3},
    {3,4},
    {4,5},
    {3,0},
    {5,6},
    {6,0},
    {3,5}
}



a =  {
    key = 0, value = "zero"
    }





--Проверка на пустую таблицу
-- function isEmpty(dominos)
--     if dominos[1] == nil then
--         print("input пуст")
--         arrayisEmpty = false
--     end
-- end

-- isEmpty(dominos)



-- function printTable(dominos)
--     local printed = ""
--     for i = 1, #dominos do
--         printed = printed .. dominos[i] .. ' '
--     end
--     print(printed)
-- end

function printTable(dominos)
    print(table.concat(dominos, " "))
    
end

function makeRing(dominos)

    
    ring = {}
    local first, last = {}, {}
    ring[1] = table.remove(dominos,1)
    printTable(ring)

    first = ring[1]
    left = string.sub(first,1,1)
    print("left of ring is "..left)

    N = #dominos    

    for i=1, N do
        
        last = ring[#ring]
        right = string.sub(last,3,3)
        --print("right of ring is "..right)

        local x = dominos[i]
        if string.sub(x,1,1) == right then
            --ring[#ring+1] = table.remove(dominos,i)
            ring[#ring+1] = dominos[i]

        elseif string.sub(x, 3, 3) == left then
            print(x)
            ring[0] = dominos[i]
            table.insert(ring,1 ,x)
        
        else print("error: Нельзя составить кользо из этих домино")

        end
        
    end
   printTable(ring)
   --printTable(dominos)
   
end


-- printTable(dominos)
-- print(printed)


makeRing(dominos)
--print("ring is "..printTable(ring))





-- local x = 0
-- for i = 0, 10, 2 do
--         print(i)
--         x = x + i
-- end
-- print(x)