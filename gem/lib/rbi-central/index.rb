# typed: strict
# frozen_string_literal: true

module RBICentral
  class Index < T::Struct
    extend T::Sig

    const :gems, T::Hash[String, Gem], default: {}

    class Error < RBICentral::Error; end

    sig { params(object: T::Hash[String, T.untyped]).returns(Index) }
    def self.from_object(object)
      Index.new(gems: object.map { |name, gem_object| [name, Gem.from_object(name, gem_object)] }.to_h)
    end

    sig { params(name: String).returns(Gem) }
    def [](name)
      if gems.key?(name)
        gems.fetch(name)
      else
        raise Error, "No gem named `#{name}` in index"
      end
    end

    sig { params(gem: Gem).void }
    def <<(gem)
      gems[gem.name] = gem
    end

    sig { returns(T::Array[Gem]) }
    def all_gems
      gems.sort.map { |_name, gem| gem }
    end

    sig { params(names: T::Array[String]).returns(T::Array[Gem]) }
    def target_gems(names)
      names.empty? ? all_gems : gems_from_names(names)
    end

    sig { params(names: T::Array[String]).returns(T::Array[Gem]) }
    def gems_from_names(names)
      names.sort.map { |name| self[name] }
    end

    sig { returns(String) }
    def to_formatted_json
      JSON.pretty_generate(gems.sort.map { |name, gem| [name, gem.to_object] }.to_h) + "\n"
    end
  end
end