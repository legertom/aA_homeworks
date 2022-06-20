class LRUCache
    attr_accessor :cache
    def initialize
        @cache = []
    end

    def count
      # returns number of elements currently in cache
      @cache.length
    end

    def add(el)
      # adds element to cache according to LRU principle
      @cache << el
    end

    def show
      # shows the items in the cache, with the LRU item first
      puts @cache
    end

    private
    # helper methods go here!

  end