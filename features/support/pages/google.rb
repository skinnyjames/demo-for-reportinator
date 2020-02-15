class Google
  include PageObject

  direct_url 'http://www.google.com'

  text_field :query, name: 'q'
  button :search, text: /Google Search/

  def search(content)
    self.query = content
    search_element.click
  end
end