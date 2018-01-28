module ExceptionHandler

  extend ActiveSupport:Concern

  included do
    rescue_from ActiveRecord:RecirdNotFound do |e|
      json_response({message: e.message}, :not_found)
    end

    rescue_from ActiveRecord:RecordInvalid do |e|
      json_response({message: e.message},:unprocessable_entity)
    end

  end
end