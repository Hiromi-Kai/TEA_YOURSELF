require 'telegraph'

module TEAYOURSELF
  class << self
    public
    def do(text)
      delete_last_space(delete_space(tuu_to_yourself(tonn_to_tea(Telegraph.text_to_morse(text)))))
    end
    private
    def tonn_to_tea(text)
      text.gsub('.','TEA ')
    end
    def tuu_to_yourself(text)
      text.gsub('-','YOURSELF ')
    end
    def delete_space(text)
      text.gsub(/\s{2,}/,' ')
    end
    def delete_last_space(text)
      text[0..-2]
    end
  end
end

if __FILE__==$0
  p TEAYOURSELF.do('TEA YOURSELF')
end