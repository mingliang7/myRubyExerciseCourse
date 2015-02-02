class Bang
    def instance_bang
      self.class.class_bang
    end

    protected
    def self.class_bang
      puts "bang"
    end
end

Bang.new.instance_bang