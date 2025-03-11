.PHONY: refresh-readme

SHELL := /bin/bash

refresh-readme:
	@echo "Refreshing README.md with external links mapping..."
	@echo '# content' > README.md.new
	@echo '' >> README.md.new
	@echo '## External links to file map' >> README.md.new
	@echo '' >> README.md.new
	@echo '| External URL | Repository File | Description |' >> README.md.new
	@echo '|-------------|-----------------|-------------|' >> README.md.new
	
	@# Add top.md first
	@if [ -f "page/top.md" ]; then \
		description=$$(grep -m 1 "description:" "page/top.md" | sed 's/description: *//;s/"//g' || echo ""); \
		echo "| https://pelicanbaytennisgroups.com/ | [page/top.md](/page/top.md) | $$description |" >> README.md.new; \
	fi
	
	@# Create a temporary file with all other entries
	@find page -type f -name "*.md" | grep -v "example.md" | grep -v "page/top.md" | sort | while read file; do \
		rel_path=$$(echo $$file | sed 's|^page/||'); \
		level=$$(echo $$rel_path | awk -F"/" '{print NF-1}'); \
		external_url=$$(echo $$rel_path | sed 's|\.md$$||'); \
		description=$$(grep -m 1 "description:" "$$file" | sed 's/description: *//;s/"//g' || echo ""); \
		echo "$$level|$$rel_path|https://pelicanbaytennisgroups.com/$$external_url|[$$file](/$$file)|$$description" >> README.md.temp; \
	done
	
	@# Sort by level and name
	@sort -t"|" -k1n -k2 README.md.temp | cut -d"|" -f3- | \
		while IFS="|" read -r external repo desc; do \
			echo "| $$external | $$repo | $$desc |" >> README.md.new; \
		done
	
	@rm -f README.md.temp
	@mv README.md.new README.md
	@echo "README.md has been updated."

commit-readme:
	@echo "Committing updated README.md..."
	@git add README.md
	@git commit -m "Update README with external links map [ci skip]"
	@echo "Changes committed. Use 'git push' to push the changes."