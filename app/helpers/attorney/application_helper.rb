module Attorney
  module ApplicationHelper
    def attorney_mounted_path
      Rails.application.routes.named_routes[:attorney].format(nil)
    end
  end
end
