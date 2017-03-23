class OwnerSerializer < ActiveModel::Serializer
  attributes :id, :name, :companies

  def companies
    Board.where(owner_id: object.id).to_a.map {|s| s.company_id}.map{|i| Company.find(i).name}
  end
end
