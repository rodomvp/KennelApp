json.partial! "ward", ward: @ward
# json.runns @ward.runns.each do |runn|
#   json.partial! "runns/runn", runn: runn
# end
json.runns_count @ward.runns.count
json.runn_ids @ward.runn_ids
