require_relative 'ryy_tag.rb'



module Ryy

  module_function

  def div(*args)
    Tag.new :div, *args
  end

  def self.tag(name, opts={})
    p opts
    tag = Class.new(Tag) {
      @name = name
    }

    # bind(Ryy, name, tag)
    send (name.to_s+'=').to_sym, tag

  end

  tag :html
  tag :head
  tag :title
  tag :base
  tag :link
  tag :meta
  tag :style
  tag :script
  tag :noscript
  tag :body
  tag :section
  tag :nav
  tag :article
  tag :aside
  tag :h1
  tag :h2
  tag :h3
  tag :h4
  tag :h5
  tag :h6
  tag :hgroup
  tag :header
  tag :footer
  tag :address
  tag :p
  tag :hr
  tag :pre, is_pretty: false
  tag :blockquote
  tag :ol
  tag :ul
  tag :li
  tag :dl
  tag :dt
  tag :dd
  tag :figure
  tag :figcaption
  tag :div
  tag :a
  tag :em
  tag :strong
  tag :small
  tag :s
  tag :cite
  tag :q
  tag :dfn
  tag :abbr
  tag :time
  tag :code
  tag :var
  tag :samp
  tag :kbd
  tag :sub
  tag :sup
  tag :i
  tag :b
  tag :u
  tag :mark
  tag :ruby
  tag :rt
  tag :rp
  tag :bdi
  tag :bdo
  tag :span
  tag :br, is_single: true
  tag :wbr, is_single: true
  tag :ins
  tag :del
  tag :img, is_single: true
  tag :iframe
  tag :embed, is_single: true
  tag :object
  tag :param, is_single: true
  tag :video
  tag :audio
  tag :source, is_single: true
  tag :track, is_single: true
  tag :canvas
  tag :map
  tag :area, is_single: true
  tag :table
  tag :caption
  tag :colgroup
  tag :col, is_single: true
  tag :tbody
  tag :thead
  tag :tfoot
  tag :tr
  tag :td
  tag :th
  tag :form
  tag :fieldset
  tag :legend
  tag :label
  tag :input, is_single: true
  tag :button
  tag :select
  tag :datalist
  tag :optgroup
  tag :option
  tag :textarea
  tag :keygen, is_single: true
  tag :output
  tag :progress
  tag :meter
  tag :details
  tag :summary
  tag :command, is_single: true
  tag :menu

end

