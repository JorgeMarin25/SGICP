class Novedade < ActiveRecord::Base
	def self.to_csv(options = {})
  CSV.generate(options) do |csv|
    csv << column_names
    all.each do |novedade|
      csv << novedade.attributes.values_at(*column_names)
    end
  end
 end
end

