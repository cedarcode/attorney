module Attorney
  module ApplicationHelper
    def attorney_mounted_path
      Rails.application.routes.named_routes[:attorney].format(nil)
    end

    def show_notice(notice)
      if notice.present?
        content_tag :p, notice, id: 'notice', class: 'alert alert-primary', role: 'alert'
      end
    end
  end
end
