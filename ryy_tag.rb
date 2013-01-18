
module Ryy
  private
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
      @attributes.to_a.map { |k,v| " #{k}=\"#{v}\"" }.join ' '
    end

    def render
      s = ['<', @tag, render_attributes, '>']
      s.join ''
    end

    def to_s
      render
    end
  end

end
