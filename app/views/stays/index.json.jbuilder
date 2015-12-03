json.array!(@stay) do |stay|
  json.partial! "stay", stay: stay
end
