# frozen_string_literal: true

json.extract! teacher, :id, :name, :thumbnail, :created_at, :updated_at
json.url teacher_url(teacher, format: :json)
