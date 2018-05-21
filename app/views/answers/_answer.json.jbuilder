json.extract! answer, :id, :author, :body, :question_id, :created_at, :updated_at
json.url answer_url(answer, format: :json)
