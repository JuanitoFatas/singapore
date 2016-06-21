require "singapore/version"

module Singapore
  module ObjectExtensions
    HOR_METHOD_REGEXP = %r(\A(?<method_name>.+)_hor\?\z)
    METHOD_BANG = %r(\A(?<method_name>.+)_lah!\z)

    def respond_to_missing?(meth, include_all = false)
      if matched = HOR_METHOD_REGEXP.match(meth)
        super || self.respond_to?("#{matched[:method_name]}?", include_all)
      elsif matched = METHOD_BANG.match(meth)
        super || self.respond_to?("#{matched[:method_name]}!", include_all)
      else
        super
      end
    end

    def method_missing(meth, *args, &block)
      if matched = HOR_METHOD_REGEXP.match(meth)
        self.public_send("#{matched[:method_name]}?", *args, &block)
      elsif matched = METHOD_BANG.match(meth)
        self.public_send("#{matched[:method_name]}!", *args, &block)
      else
        super
      end
    end
  end

  module ExceptionExtensions
    MSG_PREFIX = [
      "Walao",
      "Sorry lor",
      "Paiseh leh",
    ]

    def to_s
      "#{MSG_PREFIX.sample}, #{super}"
    end
  end
end

module ::Kernel
  alias :bobian :raise
  alias :ord :exit
end

Object.prepend(Singapore::ObjectExtensions)
Exception.prepend(Singapore::ExceptionExtensions)
