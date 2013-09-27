xml version="1.0" encoding="UTF-8"
xml.datasets() do
	@datasets.each do |dataset,priority|
		xml.dataset do
			xml.title(dataset.title)
			xml.description(dataset.description)
			xml.link(dataset.link)
			xml.department(dataset.department)
			xml.sector(dataset.sector)
			xml.priority(priority)
			xml.terms do
				dataset.term_items.each do |term_item|
					xml.term(term_item.term.term)
				end
			end
		end
	end
end