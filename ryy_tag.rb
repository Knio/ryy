
module Ryy

  private

  class Tag
    @name = 'TAG'
    attr_reader :name
    def initialize(*args)
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
      s = ['<', @name.to_s, render_attributes, '>']
      s.join ''
    end

    def to_s
      render
    end
  end


  def self.tag(name, opts={})

    tag = Class.new(Tag) {
      # @name = name
      def initialize(name, opts, *args)
        @name = name
        @opts = opts
        super *args
      end
    }

    define_method(name) { |*a| tag.new name, opts, *a }
    module_eval { module_function name }

  end

end


# class Cat(object):
#   species = 'Felis catus'

# class Tiger(object):
#   species = 'Panthera tigris'

