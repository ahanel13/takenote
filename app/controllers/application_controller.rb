class ApplicationController < ActionController::Base
    #path after user edits their profile
    def after_sign_in_path_for(resource)
        dashboard_index_path
    end
end
