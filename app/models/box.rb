class Box < ActiveRecord::Base
  belongs_to :plan
  has_many :box_items
  has_many :items, through: :box_items

  validates :title, :month_year, :plan_id, presence: true
  validates :title, uniqueness: true
  accepts_nested_attributes_for :items, reject_if: :reject_items
  default_scope { order(created_at: :desc) }

  def reject_items(attributes)
    attributes['item_name'].blank? && attributes['size'].blank?
  end

  def items_attributes=(item_attributes)
    item_attributes.values.each do |item_attribute|
      item = Item.find_or_create_by(item_attribute)
      self.items << item
    end
  end

end
