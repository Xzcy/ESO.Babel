local Table = {}
function ZO_CreateStringId(key, value)
  if not Table[key] then
    Table[key] = value
  else
    Table[key] = nil
  end
end

do


end

for k, v in pairs(Table) do
  print(k)
end