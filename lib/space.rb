class Space

  @@marks = {}

  define_method(:initialize) do |space|
    @mark = "unmarked"
    @space = space
  end

  define_method(:mark) do |mark|
    @@marks.store(self, mark)
    @mark = @@marks.fetch(self)
    @marks
  end

  define_method(:check_mark) do
    @@marks.fetch(self)
  end

end
