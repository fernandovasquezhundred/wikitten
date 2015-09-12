# rails g scaffold result ip:string browser:string score:integer

##
## Data types
##
          :primary_key
Bool      :binary   :boolean
Time      :date     :datetime  :time     :timestamp
Numbers   :decimal  :float     :integer
Strings   :string   :text

##
## Queries ##
##
Person.where(name: 'Spartacus', rating: 4)    # list
Person.find_by(name: 'Spartacus', rating: 4)  # the first item or nil.
Person.where(..).first_or_initialize
Person.where(..).first_or_create
Person.where(..).exists?(conditions = :none)
Person.where(..).ids
Person.where(..).pluck(:field1, :field2)      # just these fields

##
## Associations ##
##
class Customer < ActiveRecord::Base
  has_many :orders, dependent: :destroy
  # belongs_to
  # has_one
  # has_many
  # has_many :through
  # has_one :through
  # has_and_belongs_to_many
end

class Order < ActiveRecord::Base
  belongs_to :customer
end

@order = @customer.orders.create(order_date: Time.now)
@customer.destroy

