# frozen_string_literal: true

json.extract! video, :id, :title, :description, :url, :rating, :teacher_id, :category_id, :created_at, :updated_at
json.url video_url(video, format: :json)
