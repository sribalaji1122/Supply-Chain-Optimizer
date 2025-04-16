from fpdf import FPDF

pdf = FPDF()
pdf.add_page()
pdf.set_font("Arial", size=12)

pdf.cell(200, 10, txt="Inventory Report - March 2025", ln=True, align='C')
pdf.cell(200, 10, txt="Total Orders: 500", ln=True)
pdf.cell(200, 10, txt="Avg. Delivery Time: 3 days", ln=True)

pdf.output("reports/inventory_report.pdf")
