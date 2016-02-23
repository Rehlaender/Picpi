module GoodsHelper
  def good_types_select

    types = GoodType.all
      final_types = []

      types.each do |t|
        final_types << [t.name, t.id]

      end
      final_types
  end

end
