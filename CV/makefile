# Define variables
PDF_NAME = output.pdf
TEMPLATE = template.tex
METADATA = details.yaml

# Default target to compile the PDF
all: $(PDF_NAME)

$(PDF_NAME): $(TEMPLATE) $(METADATA)
	pandoc $(METADATA) -o $(PDF_NAME) --template=$(TEMPLATE) --pdf-engine=xelatex

# Clean up the generated PDF
clean:
	rm -f $(PDF_NAME)

.PHONY: all clean
