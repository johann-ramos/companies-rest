class CompanySerializer < ActiveModel::Serializer
  attributes :id, :name, :address, :city, :country, :email, :phone, :owners

  def owners
    Board.where(company_id: object.id).to_a.map {|s| s.owner_id}.map{|i| Owner.find(i).name}
  end
end
