class Users::RegistrationsController < Devise::RegistrationsController
    
    def create
        super do |resouce|
            if params[:plan]
                resources.plan_id = params[:plan]
                if resouce.plan_id == 2
                    resouce.save_with_payment
                else
                    resouce.save
                end
            end
        end
    end
end