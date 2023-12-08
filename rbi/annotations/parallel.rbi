# typed: true

module Parallel
  class << self
    sig do
      params(
        args: [T::Enumerable[T.anything], T.nilable({progress: T.nilable(String), start: T.nilable(T.proc.params(item: T.anything, index: Integer).void), finish: T.nilable(T.proc.params(item: T.anything, index: Integer, result: T.anything).void), in_processes: T.nilable(Integer), in_ractors: T.nilable(Integer), in_threads: T.nilable(Integer), interrupt_signal: T.nilable(String), isolation: T.nilable(T::Boolean)})],
        block: T.proc.params(item: T.anything).returns(T.anything)
      ).returns(T::Boolean)
    end
    def all?(*args, &block); end

    sig do
      params(
        args: [T::Enumerable[T.anything], T.nilable({progress: T.nilable(String), start: T.nilable(T.proc.params(item: T.anything, index: Integer).void), finish: T.nilable(T.proc.params(item: T.anything, index: Integer, result: T.anything).void), in_processes: T.nilable(Integer), in_ractors: T.nilable(Integer), in_threads: T.nilable(Integer), interrupt_signal: T.nilable(String), isolation: T.nilable(T::Boolean)})],
        block: T.proc.params(item: T.anything).returns(T.anything)
      ).returns(T::Boolean)
    end
    def any?(*args, &block); end

    sig do
      params(
        array: T::Enumerable[T.anything],
        options: {progress: T.nilable(String), start: T.nilable(T.proc.params(item: T.anything, index: Integer).void), finish: T.nilable(T.proc.params(item: T.anything, index: Integer, result: T.anything).void), in_processes: T.nilable(Integer), in_ractors: T.nilable(Integer), in_threads: T.nilable(Integer), interrupt_signal: T.nilable(String), isolation: T.nilable(T::Boolean)},
        block: T.proc.params(item: T.anything).returns(T.anything)
      ).void
    end
    def each(array, options = {}, &block); end

    sig do
      params(
        array: T::Enumerable[T.anything],
        options: {progress: T.nilable(String), start: T.nilable(T.proc.params(item: T.anything, index: Integer).void), finish: T.nilable(T.proc.params(item: T.anything, index: Integer, result: T.anything).void), in_processes: T.nilable(Integer), in_ractors: T.nilable(Integer), in_threads: T.nilable(Integer), interrupt_signal: T.nilable(String), isolation: T.nilable(T::Boolean)},
        block: T.proc.params(args: [T.anything, Integer]).returns(T.anything)
      ).void
    end
    def each_with_index(array, options = {}, &block); end

    sig do
      params(
        args: [T::Enumerable[T.anything], T.nilable({progress: T.nilable(String), start: T.nilable(T.proc.params(item: T.anything, index: Integer).void), finish: T.nilable(T.proc.params(item: T.anything, index: Integer, result: T.anything).void), in_processes: T.nilable(Integer), in_ractors: T.nilable(Integer), in_threads: T.nilable(Integer), interrupt_signal: T.nilable(String), isolation: T.nilable(T::Boolean)})],
        block: T.proc.params(item: T.anything).returns(T.anything)
      ).returns(T::Array[T.anything])
    end
    def filter_map(*args, &block); end

    sig do
      params(
        args: [T::Enumerable[T.anything], T.nilable({progress: T.nilable(String), start: T.nilable(T.proc.params(item: T.anything, index: Integer).void), finish: T.nilable(T.proc.params(item: T.anything, index: Integer, result: T.anything).void), in_processes: T.nilable(Integer), in_ractors: T.nilable(Integer), in_threads: T.nilable(Integer), interrupt_signal: T.nilable(String), isolation: T.nilable(T::Boolean)})],
        block: T.proc.params(item: T.anything).returns(T.anything)
      ).returns(T::Array[T.anything])
    end
    def flat_map(*args, &block); end

    sig do
      params(
        options: {progress: T.nilable(String), start: T.nilable(T.proc.params(item: T.anything, index: Integer).void), finish: T.nilable(T.proc.params(item: T.anything, index: Integer, result: T.anything).void), in_processes: T.nilable(Integer), in_ractors: T.nilable(Integer), in_threads: T.nilable(Integer), interrupt_signal: T.nilable(String), isolation: T.nilable(T::Boolean)},
        block: T.proc.params(item: T.anything).returns(T.anything)
      ).returns(T::Array[T.anything])
    end
    def in_processes(options = {}, &block); end

    sig do
      params(
        options: {progress: T.nilable(String), start: T.nilable(T.proc.params(item: T.anything, index: Integer).void), finish: T.nilable(T.proc.params(item: T.anything, index: Integer, result: T.anything).void), in_processes: T.nilable(Integer), in_ractors: T.nilable(Integer), in_threads: T.nilable(Integer), interrupt_signal: T.nilable(String), isolation: T.nilable(T::Boolean)},
        block: T.proc.params(item: T.anything).returns(T.anything)
      ).returns(T::Array[T.anything])
    end
    def in_threads(options = {}, &block); end

    sig do
      params(
        array: T::Enumerable[T.anything],
        options: {progress: T.nilable(String), start: T.nilable(T.proc.params(item: T.anything, index: Integer).void), finish: T.nilable(T.proc.params(item: T.anything, index: Integer, result: T.anything).void), in_processes: T.nilable(Integer), in_ractors: T.nilable(Integer), in_threads: T.nilable(Integer), interrupt_signal: T.nilable(String), isolation: T.nilable(T::Boolean)},
        block: T.proc.params(item: T.anything).returns(T.anything)
      ).returns(T::Array[T.anything])
    end
    def map(array, options = {}, &block); end

    sig do
      params(
        array: T::Enumerable[T.anything],
        options: {progress: T.nilable(String), start: T.nilable(T.proc.params(item: T.anything, index: Integer).void), finish: T.nilable(T.proc.params(item: T.anything, index: Integer, result: T.anything).void), in_processes: T.nilable(Integer), in_ractors: T.nilable(Integer), in_threads: T.nilable(Integer), interrupt_signal: T.nilable(String), isolation: T.nilable(T::Boolean)},
        block: T.proc.params(args: [T.anything, Integer]).returns(T.anything)
      ).returns(T::Array[T.anything])
    end
    def map_with_index(array, options = {}, &block); end

    sig { returns(Integer) }
    def physical_processor_count; end

    sig { returns(Integer) }
    def processor_count; end

    sig { returns(Integer) }
    def worker_number; end

    sig { params(worker_num: Integer).returns(Integer) }
    def worker_number=(worker_num); end
  end
end

class Parallel::Break < ::StandardError
  # TODO: I guess this could be generic?

  sig { params(value: T.anything).void }
  def initialize(value = nil); end

  sig { returns(T.anything) }
  def value; end
end

class Parallel::ExceptionWrapper
  sig { params(exception: Exception).void }
  def initialize(exception); end

  sig { returns(Exception) }
  def exception; end
end

Parallel::Stop = T.let(T.unsafe(nil), Object)

class Parallel::UndumpableException < ::StandardError
  sig { params(original: Exception).void }
  def initialize(original); end

  sig { returns(T::Array[String]) }
  def backtrace; end
end

Parallel::VERSION = T.let(T.unsafe(nil), String)

Parallel::Version = T.let(T.unsafe(nil), String)
