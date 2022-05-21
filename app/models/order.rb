class Order < ApplicationRecord
  belongs_to :customer
  validates_associated :customer
  <%= f.collection_select :customer_id, Customer.all, :id, :full_name, include_blank: true %>
end
