json.array!(@tasks) do |task|
  json.extract! task, :id, :user_id, :subject, :detail, :started_on, :finished_on, :due_date, :status_id, :tag_id, :icon_id, :is_current, :is_indicated
  json.url task_url(task, format: :json)
end
