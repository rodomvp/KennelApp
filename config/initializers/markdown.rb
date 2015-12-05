MarkdownRails.configure do |config|
  markdown = Redcarpet::Markdown.new(Redcarpet::Render::HTML,
    :fenced_code_blocks => false,
    disable_indented_code_blocks: true,
    footnotes: true,
    :autolink => true,
  )

  config.render do |markdown_source|
    markdown.render(markdown_source)
  end
end
