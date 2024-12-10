module Validation
    def length_range?(string, min, max)
      string.length <= max && string.length >= min 
    end

    def valid_symbols?(pattern, text)
      text.match(pattern) != nil
    end

    module_function :length_range?, :valid_symbols?
end



