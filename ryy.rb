
module Ryy
  def self.div *args
    return Tag.new(:div, *args)
  end

  class Tag
    def initialize(tag, *args)
      @tag = tag
      @children = []
      @attributes = {}
      args.each { |arg|
        if arg.class == Hash
          arg.each { |k,v|
            set_attribute k, v
          }
        end
      }
    end

    def set_attribute(name, value)
      @attributes[name] = value
    end

    def render_attributes
      return @attributes.to_a.map { |k,v| " #{k}=\"#{v}\"" }.join ' '
    end

    def render
      s = ['<', @tag, render_attributes, '>']
      return s.join ''
    end

    def to_s
      return render
    end
  end

end
