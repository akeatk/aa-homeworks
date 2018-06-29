class LRUCache
    def initialize(size)
      @size = size
      @arr = []
    end

    def count
      # returns number of elements currently in cache
      @arr.length
    end

    def add(el)
      # adds element to cache according to LRU principle
      if @arr.include?(el)
        @arr.delete(el)
        @arr << el
      elsif @arr.length == @size
        @arr.shift
        @arr << el
      else
        @arr << el
      end
      self
    end

    def show
      # shows the items in the cache, with the LRU item first
      p(@arr)
    end

    private
    # helper methods go here!
    def print_change(el)
      show
      add(el)
      show
    end
  end

johnny_cache = LRUCache.new(4)

johnny_cache.add("I walk the line")
johnny_cache.add(5)

johnny_cache.show
p johnny_cache.count # => returns 2

johnny_cache.add([1,2,3])
johnny_cache.add(5)
johnny_cache.add(-5)
johnny_cache.add({a: 1, b: 2, c: 3})
johnny_cache.add([1,2,3,4])
johnny_cache.add("I walk the line")
johnny_cache.add(:ring_of_fire)
johnny_cache.add("I walk the line")
johnny_cache.add({a: 1, b: 2, c: 3})

johnny_cache.show
p johnny_cache.count
