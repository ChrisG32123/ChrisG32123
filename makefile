# Define variables
PDF_NAME = output2.pdf
TEMPLATE = template2.tex
METADATA = details.yaml

# Default target to compile the PDF
all: $(PDF_NAME)

# Rule to compile PDF from the YAML metadata and LaTeX template
$(PDF_NAME): $(TEMPLATE) $(METADATA)
	pandoc $(METADATA) -o $(PDF_NAME) --template=$(TEMPLATE) --pdf-engine=xelatex

# Clean up the generated PDF
clean:
	rm -f $(PDF_NAME)

# Phony targets (these don't correspond to actual files)
.PHONY: all clean
