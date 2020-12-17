class TransactionSerializer < ActiveModel::Serializer
  attributes :id, :amount, :kind, :date, :description
  belongs_to :account
end
