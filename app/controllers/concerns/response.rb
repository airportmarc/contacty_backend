module Response
  def json_response(object, status = :ok)
    render json: object, status: status
  end

  def json_detailed_response(object, status = :ok)
    render json: object.to_json( {include: [:contact, contact: { include: [:emails, :phones]}]})
  end
end