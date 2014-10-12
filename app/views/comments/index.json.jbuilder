json.array!(@comments) do |comment|
  json.extract! comment, :id, :task_id, :state, :feeling, :progress
  json.url comment_url(comment, format: :json)
end
