module ApplicationHelper
	 def markdown(text)
    options = {   
        :autolink => true, 
        :space_after_headers => true,
        :fenced_code_blocks => true,
        :no_intra_emphasis => true,
        :hard_wrap => true,
        :strikethrough =>true,
        :footnotes => true,
        :highlight => true,
        :lax_spacing => false,
        :no_links => true,
      }
    markdown = Redcarpet::Markdown.new(CodeRayify, options)
    markdown.render(text).html_safe
  end

  class CodeRayify < Redcarpet::Render::HTML
    def block_code(code, language)
      language ||= :plaintext
      CodeRay.scan(code, language).div
    end
  end
end
