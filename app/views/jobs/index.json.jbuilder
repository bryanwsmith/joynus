json.array! @jobs do |job|
  json.company job.company
  json.title job.title
  json.location job.location
  json.language job.language
  json.posted job.formatted_date
end
