json.extract! course, :id, :dept, :course_number, :name, :created_at, :updated_at
json.url course_url(course, format: :json)
