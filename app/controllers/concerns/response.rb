module Response
  def json_response(object, statis = :ok)
    render json: object, status: status
  end
end