json.extract! post, :id, :title, :content, :racer_name, :start_day, :end_day, :set_money, :checker_name, :receiver_name, :created_at, :updated_at
json.url post_url(post, format: :json)