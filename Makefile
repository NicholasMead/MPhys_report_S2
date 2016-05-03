MainFile = Report_Main
Target = MPhys_Semester1_Report.pdf

all: $(MainFile).tex
	make available; make pdf; make clean; make rename

pdf:
	pdflatex $(MainFile).tex
	biber $(MainFile)
	pdflatex $(MainFile).tex

rename:
	mv $(MainFile).pdf $(Target)

available:
	mv Generated_Files/* .

clean:
	mv *.log *.aux *.xml *.bcf *.toc *.blg *.bbl Generated_Files/