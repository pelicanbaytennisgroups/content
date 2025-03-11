.PHONY: refresh-readme

SHELL := /bin/bash

refresh-readme:
	@echo "Refreshing README.md with external links mapping..."
	@echo '# content' > README.md.new
	@echo '' >> README.md.new
	@echo '## External links to file map' >> README.md.new
	@echo '' >> README.md.new
	@echo '| External URL | Repository File | Title and/or Description |' >> README.md.new
	@echo '|-------------|-----------------|-------------|' >> README.md.new
	
	@# Create temporary files for entries and mermaid diagram
	@echo "graph TD" > mermaid.temp
	@echo "    %% Site structure diagram with styling" >> mermaid.temp
	@echo "    classDef default fill:#000,color:#fff,stroke:#666,stroke-width:1px;" >> mermaid.temp
	@echo "    Root[\"/\"]" >> mermaid.temp
	@echo "    page[\"/page\"]" >> mermaid.temp
	@echo "    Root -->|\"page\"| page" >> mermaid.temp
	@# Create empty files for tracking created nodes
	@> created_nodes.temp
	
	@# Add top.md first
	@if [ -f "page/top.md" ]; then \
		title=$$(grep -m 1 "title:" "page/top.md" | sed 's/title: *//;s/"//g;s/^ *//;s/ *$$//g;s/\r//g;s/\n//g' || echo "Home"); \
		description=$$(grep -m 1 "description:" "page/top.md" | sed 's/description: *//;s/"//g;s/^ *//;s/ *$$//g;s/\r//g;s/\n//g' || echo ""); \
		if [ -n "$$description" ]; then \
			full_desc="$$title ($$description)"; \
		else \
			full_desc="$$title"; \
		fi; \
		echo "| https://pelicanbaytennisgroups.com/ | [page/top.md](/page/top.md) | $$full_desc |" >> README.md.new; \
		echo "    page_top[\"/page/top\"]" >> mermaid.temp; \
		echo "    page -->|\"top\"| page_top" >> mermaid.temp; \
		echo "page_top" >> created_nodes.temp; \
	fi
	
	@# First, build a list of all directories to ensure we have nodes for every level
	@find page -type d | grep -v "_images" | grep -v "pdfs" | sort | while read dir; do \
		if [ "$$dir" != "page" ] && [ "$$dir" != "page/example.md" ]; then \
			rel_path=$$(echo $$dir | sed 's|^page/||'); \
			if [ -n "$$rel_path" ]; then \
				node_id=$$(echo $$dir | sed 's|/|_|g'); \
				name=$$(basename $$rel_path); \
				if ! grep -q "^$$node_id$$" created_nodes.temp; then \
					echo "    $$node_id[\"/$$dir\"]" >> mermaid.temp; \
					echo "$$node_id" >> created_nodes.temp; \
					if [ "$$(echo $$rel_path | grep -o '/' | wc -l)" -eq 0 ]; then \
						parent_id="Root"; \
					else \
						parent_dir=$$(dirname $$dir); \
						parent_id=$$(echo $$parent_dir | sed 's|/|_|g'); \
					fi; \
					echo "    $$parent_id -->|\"$$name\"| $$node_id" >> mermaid.temp; \
				fi; \
			fi; \
		fi; \
	done
	
	@# Process files for both the table and mermaid diagram
	@find page -type f -name "*.md" | grep -v "example.md" | grep -v "page/top.md" | sort | while read file; do \
		rel_path=$$(echo $$file | sed 's|^page/||'); \
		level=$$(echo $$rel_path | awk -F"/" '{print NF-1}'); \
		external_url=$$(echo $$rel_path | sed 's|\.md$$||'); \
		page_name=$$(basename $$external_url); \
		file_without_ext=$$(echo $$file | sed 's|\.md$$||'); \
		parent_dir=$$(dirname $$file); \
		title=$$(grep -m 1 "title:" "$$file" | sed 's/title: *//;s/"//g;s/^ *//;s/ *$$//g;s/\r//g;s/\n//g' || echo ""); \
		description=$$(grep -m 1 "description:" "$$file" | sed 's/description: *//;s/"//g;s/^ *//;s/ *$$//g;s/\r//g;s/\n//g' || echo ""); \
		if [ -n "$$title" ] && [ -n "$$description" ]; then \
			if echo "$$description" | grep -q "$$title"; then \
				full_desc="$$description"; \
			else \
				full_desc="$$title ($$description)"; \
			fi; \
		elif [ -n "$$title" ]; then \
			full_desc="$$title"; \
		else \
			full_desc="$$description"; \
		fi; \
		echo "$$level|$$rel_path|https://pelicanbaytennisgroups.com/page/$$external_url|[$$file](/$$file)|$$full_desc" >> README.md.temp; \
		\
		node_id=$$(echo $$file_without_ext | sed 's|/|_|g'); \
		if ! grep -q "^$$node_id$$" created_nodes.temp; then \
			echo "    $$node_id[\"/$$file_without_ext\"]" >> mermaid.temp; \
			echo "$$node_id" >> created_nodes.temp; \
			\
			parent_id=$$(echo $$parent_dir | sed 's|/|_|g'); \
			echo "    $$parent_id -->|\"$$page_name\"| $$node_id" >> mermaid.temp; \
		fi; \
	done
	
	@# Create a proper format for table rows - process in a way that handles whitespace properly
	@sort -t"|" -k1n -k2 -u README.md.temp | awk -F"|" '{gsub(/^ +| +$$/, "", $$3); gsub(/^ +| +$$/, "", $$4); gsub(/^ +| +$$/, "", $$5); printf "| %s | %s | %s |\n", $$3, $$4, $$5 }' >> README.md.new
	
	@# No additional styling needed - using global styling
	
	@# Add the sitemap section
	@echo "" >> README.md.new
	@echo "## Sitemap" >> README.md.new
	@echo "" >> README.md.new
	@echo '```mermaid' >> README.md.new
	@cat mermaid.temp >> README.md.new
	@echo '```' >> README.md.new
	
	@rm -f README.md.temp mermaid.temp created_nodes.temp
	@mv README.md.new README.md
	@echo "README.md has been updated."

commit-readme:
	@echo "Committing updated README.md..."
	@git add README.md
	@git commit -m "Update README with external links map [ci skip]"
	@echo "Changes committed. Use 'git push' to push the changes."