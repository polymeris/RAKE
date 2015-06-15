#!/usr/bin/lua
local file = arg[1]
if not file then
    print('Please pass a text file path as argument. ')
    os.exit()
end
local rake = require 'rake'
local r = rake.new('SmartStoplist.txt')
local text = io.open(file, "rb"):read("*all")
local kws = r:run(text)
for kw, s in pairs(kws) do 
    print(kw, s)
end