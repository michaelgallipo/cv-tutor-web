json.array! @subjects.each do |subject|
  json.id = subject.id
  json.name = subject.name
end