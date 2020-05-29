json.extract! game, :id, :title, :description, :duration_min, :duration_max, :material_list, :quant_min, :quant_max, :created_at, :updated_at
json.url game_url(game, format: :json)
