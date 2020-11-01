file = io.open("dumped.lua", "w+")

tabledump = function(...)
  local 
  local depth = 0
end

console, print = print, function(...)
  if type(...) == "table" then
    tabledump(...)
  else
    console(...)
  end
end