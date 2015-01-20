require 'vertx/util/utils.rb'
# Generated from io.vertx.core.shareddata.AsyncMap<K,V>
module Vertx
  class AsyncMap
    # @private
    # @param j_del [::Vertx::AsyncMap] the java delegate
    def initialize(j_del)
      @j_del = j_del
    end
    # @private
    # @return [::Vertx::AsyncMap] the underlying java delegate
    def j_del
      @j_del
    end
    # THE METHOD DOC
    #
    # @param [Object] k
    # @param [Proc] resultHandler
    # return [void]
    def get(k,&resultHandler)
      if k.class == String  ||k.class == Hash || k.class == Array
        if resultHandler.class == Proc
          return @j_del.get(::Vertx::Util::Utils.to_object(k),(Proc.new { |ar| resultHandler.call(ar.failed ? ar.cause : nil, ar.succeeded ? ::Vertx::Util::Utils.from_object(ar.result) : nil) }))
        end
        raise ArgumentError, "Invalid argument resultHandler=#{resultHandler} when calling get(k,resultHandler)"
      end
      raise ArgumentError, "Invalid argument k=#{k} when calling get(k,resultHandler)"
    end
    # THE METHOD DOC
    #
    # @overload put(k,v,completionHandler)
    #   @param [Object] k
    #   @param [Object] v
    #   @param [Proc] completionHandler
    # @overload put(k,v,timeout,completionHandler)
    #   @param [Object] k
    #   @param [Object] v
    #   @param [Fixnum] timeout
    #   @param [Proc] completionHandler
    # return [void]
    def put(param_1,param_2,param_3,&param_4)
      if param_1.class == String  ||param_1.class == Hash || param_1.class == Array
        if param_2.class == String  ||param_2.class == Hash || param_2.class == Array
          if param_3.class == Proc
            return @j_del.put(::Vertx::Util::Utils.to_object(param_1),::Vertx::Util::Utils.to_object(param_2),(Proc.new { |ar| param_3.call(ar.failed ? ar.cause : nil) }))
          end
          if param_3.class == Fixnum
            if param_4.class == Proc
              return @j_del.put(::Vertx::Util::Utils.to_object(param_1),::Vertx::Util::Utils.to_object(param_2),param_3,(Proc.new { |ar| param_4.call(ar.failed ? ar.cause : nil) }))
            end
            raise ArgumentError, "Invalid argument param_4=#{param_4} when calling put(param_1,param_2,param_3,param_4)"
          end
          raise ArgumentError, "Invalid argument param_3=#{param_3} when calling put(param_1,param_2,param_3,param_4)"
        end
        raise ArgumentError, "Invalid argument param_2=#{param_2} when calling put(param_1,param_2,param_3,param_4)"
      end
      raise ArgumentError, "Invalid argument param_1=#{param_1} when calling put(param_1,param_2,param_3,param_4)"
    end
    # THE METHOD DOC
    #
    # @overload putIfAbsent(k,v,completionHandler)
    #   @param [Object] k
    #   @param [Object] v
    #   @param [Proc] completionHandler
    # @overload putIfAbsent(k,v,timeout,completionHandler)
    #   @param [Object] k
    #   @param [Object] v
    #   @param [Fixnum] timeout
    #   @param [Proc] completionHandler
    # return [void]
    def put_if_absent(param_1,param_2,param_3,&param_4)
      if param_1.class == String  ||param_1.class == Hash || param_1.class == Array
        if param_2.class == String  ||param_2.class == Hash || param_2.class == Array
          if param_3.class == Proc
            return @j_del.putIfAbsent(::Vertx::Util::Utils.to_object(param_1),::Vertx::Util::Utils.to_object(param_2),(Proc.new { |ar| param_3.call(ar.failed ? ar.cause : nil, ar.succeeded ? ::Vertx::Util::Utils.from_object(ar.result) : nil) }))
          end
          if param_3.class == Fixnum
            if param_4.class == Proc
              return @j_del.putIfAbsent(::Vertx::Util::Utils.to_object(param_1),::Vertx::Util::Utils.to_object(param_2),param_3,(Proc.new { |ar| param_4.call(ar.failed ? ar.cause : nil, ar.succeeded ? ::Vertx::Util::Utils.from_object(ar.result) : nil) }))
            end
            raise ArgumentError, "Invalid argument param_4=#{param_4} when calling put_if_absent(param_1,param_2,param_3,param_4)"
          end
          raise ArgumentError, "Invalid argument param_3=#{param_3} when calling put_if_absent(param_1,param_2,param_3,param_4)"
        end
        raise ArgumentError, "Invalid argument param_2=#{param_2} when calling put_if_absent(param_1,param_2,param_3,param_4)"
      end
      raise ArgumentError, "Invalid argument param_1=#{param_1} when calling put_if_absent(param_1,param_2,param_3,param_4)"
    end
    # THE METHOD DOC
    #
    # @param [Object] k
    # @param [Proc] resultHandler
    # return [void]
    def remove(k,&resultHandler)
      if k.class == String  ||k.class == Hash || k.class == Array
        if resultHandler.class == Proc
          return @j_del.remove(::Vertx::Util::Utils.to_object(k),(Proc.new { |ar| resultHandler.call(ar.failed ? ar.cause : nil, ar.succeeded ? ::Vertx::Util::Utils.from_object(ar.result) : nil) }))
        end
        raise ArgumentError, "Invalid argument resultHandler=#{resultHandler} when calling remove(k,resultHandler)"
      end
      raise ArgumentError, "Invalid argument k=#{k} when calling remove(k,resultHandler)"
    end
    # THE METHOD DOC
    #
    # @param [Object] k
    # @param [Object] v
    # @param [Proc] resultHandler
    # return [void]
    def remove_if_present(k,v,&resultHandler)
      if k.class == String  ||k.class == Hash || k.class == Array
        if v.class == String  ||v.class == Hash || v.class == Array
          if resultHandler.class == Proc
            return @j_del.removeIfPresent(::Vertx::Util::Utils.to_object(k),::Vertx::Util::Utils.to_object(v),(Proc.new { |ar| resultHandler.call(ar.failed ? ar.cause : nil, ar.succeeded ? ar.result : nil) }))
          end
          raise ArgumentError, "Invalid argument resultHandler=#{resultHandler} when calling remove_if_present(k,v,resultHandler)"
        end
        raise ArgumentError, "Invalid argument v=#{v} when calling remove_if_present(k,v,resultHandler)"
      end
      raise ArgumentError, "Invalid argument k=#{k} when calling remove_if_present(k,v,resultHandler)"
    end
    # THE METHOD DOC
    #
    # @param [Object] k
    # @param [Object] v
    # @param [Proc] resultHandler
    # return [void]
    def replace(k,v,&resultHandler)
      if k.class == String  ||k.class == Hash || k.class == Array
        if v.class == String  ||v.class == Hash || v.class == Array
          if resultHandler.class == Proc
            return @j_del.replace(::Vertx::Util::Utils.to_object(k),::Vertx::Util::Utils.to_object(v),(Proc.new { |ar| resultHandler.call(ar.failed ? ar.cause : nil, ar.succeeded ? ::Vertx::Util::Utils.from_object(ar.result) : nil) }))
          end
          raise ArgumentError, "Invalid argument resultHandler=#{resultHandler} when calling replace(k,v,resultHandler)"
        end
        raise ArgumentError, "Invalid argument v=#{v} when calling replace(k,v,resultHandler)"
      end
      raise ArgumentError, "Invalid argument k=#{k} when calling replace(k,v,resultHandler)"
    end
    # THE METHOD DOC
    #
    # @param [Object] k
    # @param [Object] oldValue
    # @param [Object] newValue
    # @param [Proc] resultHandler
    # return [void]
    def replace_if_present(k,oldValue,newValue,&resultHandler)
      if k.class == String  ||k.class == Hash || k.class == Array
        if oldValue.class == String  ||oldValue.class == Hash || oldValue.class == Array
          if newValue.class == String  ||newValue.class == Hash || newValue.class == Array
            if resultHandler.class == Proc
              return @j_del.replaceIfPresent(::Vertx::Util::Utils.to_object(k),::Vertx::Util::Utils.to_object(oldValue),::Vertx::Util::Utils.to_object(newValue),(Proc.new { |ar| resultHandler.call(ar.failed ? ar.cause : nil, ar.succeeded ? ar.result : nil) }))
            end
            raise ArgumentError, "Invalid argument resultHandler=#{resultHandler} when calling replace_if_present(k,oldValue,newValue,resultHandler)"
          end
          raise ArgumentError, "Invalid argument newValue=#{newValue} when calling replace_if_present(k,oldValue,newValue,resultHandler)"
        end
        raise ArgumentError, "Invalid argument oldValue=#{oldValue} when calling replace_if_present(k,oldValue,newValue,resultHandler)"
      end
      raise ArgumentError, "Invalid argument k=#{k} when calling replace_if_present(k,oldValue,newValue,resultHandler)"
    end
    # THE METHOD DOC
    #
    # @param [Proc] resultHandler
    # return [void]
    def clear(&resultHandler)
      if resultHandler.class == Proc
        return @j_del.clear((Proc.new { |ar| resultHandler.call(ar.failed ? ar.cause : nil) }))
      end
      raise ArgumentError, "Invalid argument resultHandler=#{resultHandler} when calling clear(resultHandler)"
    end
    # THE METHOD DOC
    #
    # @param [Proc] resultHandler
    # return [void]
    def size(&resultHandler)
      if resultHandler.class == Proc
        return @j_del.size((Proc.new { |ar| resultHandler.call(ar.failed ? ar.cause : nil, ar.succeeded ? ar.result : nil) }))
      end
      raise ArgumentError, "Invalid argument resultHandler=#{resultHandler} when calling size(resultHandler)"
    end
  end
end
