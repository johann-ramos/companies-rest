class BoardSerializer < ActiveModel::Serializer
  attributes :owner_id, :company_id, :id, :company_name, :owner_name

  def owner_name
    Owner.find_by(id: object.owner_id).name
  end

  def company_name
    Company.find_by(id: object.company_id).name
  end
end