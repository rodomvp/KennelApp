json.partial! "ward", ward: @ward
json.runns @ward.runns.each do |runn|
  json.partial! "runns/runn", runn: runn
end
