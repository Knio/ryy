require_relative 'ryy.rb'

p Ryy.html 1, "two", {:attr=>false}
p Ryy.span 1, "two", attr: true


class Tester
    include Ryy

    def page
        dom = html
    end
end

p Tester.new.page
