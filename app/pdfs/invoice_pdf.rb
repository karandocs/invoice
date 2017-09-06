class InvoicePdf < Prawn::Document
  require 'open-uri'

  def initialize(invoice, view)
    super :page_size => [480,640], :page_layout => :landscape
    @invoice = invoice
    @view = view
    company_name
    move_down 200
  end

  def company_name
    cell_1 = make_cell(content: "Invoice", borders: [], size: 35, :text_color => "37474f")
    cell_2 = make_cell(content: "From InventBlue Organization", borders: [], size: 30, :text_color => "37474f")
    cell_3 = make_cell(content: "Invoicing date: #{@invoice.invoicing_date.strftime(" %d-%B-%Y")}", borders: [], size: 14, :text_color => "37474f")
    cell_4 = make_cell(content: "Due date: #{@invoice.due_date.strftime(" %d-%B-%Y")}", borders: [], size: 14, :text_color => "37474f")
    t = make_table [[cell_1],[cell_2],[cell_3], [cell_4] ] do
          rows(0..2).borders = []
    end
    t.draw
    data = []
    head = true
    @invoice.products.each do |product|
      if head
        cell_i = ['Product name', 'Payment mode']
        data << cell_i
        head = false
        cell_i = [product.name, @invoice.payment_mode]
      else
        cell_i = [product.name, @invoice.payment_mode]
      end
      data << cell_i
    end
    table(data.each{|c| c})

  end

end
