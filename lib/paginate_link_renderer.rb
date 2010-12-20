# 
# = The Paginate Table Link Renderer
#
class PaginateLinkRenderer < WillPaginate::LinkRenderer
    def page_link(page, text, attributes = {})
      @template.link_to_function text, "Paginate.Page.getInstance().table.fetch(#{page})", attributes
    end
end
