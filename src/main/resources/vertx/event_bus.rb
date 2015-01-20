require 'vertx/measured'
require 'vertx/message'
require 'vertx/message_consumer'
require 'vertx/message_producer'
require 'vertx/util/utils.rb'
# Generated from io.vertx.core.eventbus.EventBus
module Vertx
  class EventBus
    include ::Vertx::Measured
    # @private
    # @param j_del [::Vertx::EventBus] the java delegate
    def initialize(j_del)
      @j_del = j_del
    end
    # @private
    # @return [::Vertx::EventBus] the underlying java delegate
    def j_del
      @j_del
    end
    # THE METHOD DOC
    #
    # @return [String]: the return value (todo)
    def metric_base_name
      @j_del.metricBaseName
    end
    # THE METHOD DOC
    #
    # @return [Hash{String => Hash{String => Object}}]: the return value (todo)
    def metrics
      Java::IoVertxLangJruby::Helper.adaptingMap(@j_del.metrics, Proc.new { |val| ::Vertx::Util::Utils.from_object(val) }, Proc.new { |val| ::Vertx::Util::Utils.to_json_object(val) })
    end
    # THE METHOD DOC
    #
    # @param [Proc] completionHandler
    # return [void]
    def close(&completionHandler)
      if completionHandler.class == Proc
        return @j_del.close((Proc.new { |ar| completionHandler.call(ar.failed ? ar.cause : nil) }))
      end
      raise ArgumentError, "Invalid argument completionHandler=#{completionHandler} when calling close(completionHandler)"
    end
    # THE METHOD DOC
    #
    # @overload send(address,message)
    #   @param [String] address
    #   @param [Object] message
    # @overload send(address,message,replyHandler)
    #   @param [String] address
    #   @param [Object] message
    #   @param [Proc] replyHandler
    # @overload send(address,message,options)
    #   @param [String] address
    #   @param [Object] message
    #   @param [Hash] options
    # @overload send(address,message,options,replyHandler)
    #   @param [String] address
    #   @param [Object] message
    #   @param [Hash] options
    #   @param [Proc] replyHandler
    # return [self]
    def send(param_1,param_2,param_3=nil,&param_4)
      if param_1.class == String
        if param_2.class == String  ||param_2.class == Hash || param_2.class == Array
          if param_3.class == Hash
            if param_4.class == Proc
              @j_del.send(param_1,::Vertx::Util::Utils.to_object(param_2),Java::IoVertxCoreEventbus::DeliveryOptions.new(::Vertx::Util::Utils.to_json_object(param_3)),(Proc.new { |ar| param_4.call(ar.failed ? ar.cause : nil, ar.succeeded ? ::Vertx::Message.new(ar.result) : nil) }))
              return self
            end
            @j_del.send(param_1,::Vertx::Util::Utils.to_object(param_2),Java::IoVertxCoreEventbus::DeliveryOptions.new(::Vertx::Util::Utils.to_json_object(param_3)))
            return self
          end
          if param_3.class == Proc
            @j_del.send(param_1,::Vertx::Util::Utils.to_object(param_2),(Proc.new { |ar| param_3.call(ar.failed ? ar.cause : nil, ar.succeeded ? ::Vertx::Message.new(ar.result) : nil) }))
            return self
          end
          @j_del.send(param_1,::Vertx::Util::Utils.to_object(param_2))
          return self
        end
        raise ArgumentError, "Invalid argument param_2=#{param_2} when calling send(param_1,param_2,param_3,param_4)"
      end
      raise ArgumentError, "Invalid argument param_1=#{param_1} when calling send(param_1,param_2,param_3,param_4)"
    end
    # THE METHOD DOC
    #
    # @param [String] address
    # @param [Object] message
    # @param [Hash] options
    # return [self]
    def publish(address,message,options=nil)
      if address.class == String
        if message.class == String  ||message.class == Hash || message.class == Array
          if options.class == Hash
            @j_del.publish(address,::Vertx::Util::Utils.to_object(message),Java::IoVertxCoreEventbus::DeliveryOptions.new(::Vertx::Util::Utils.to_json_object(options)))
            return self
          end
          @j_del.publish(address,::Vertx::Util::Utils.to_object(message))
          return self
        end
        raise ArgumentError, "Invalid argument message=#{message} when calling publish(address,message,options)"
      end
      raise ArgumentError, "Invalid argument address=#{address} when calling publish(address,message,options)"
    end
    # THE METHOD DOC
    #
    # @param [String] address
    # @param [Proc] handler
    # @return [::Vertx::MessageConsumer]: the return value (todo)
    def consumer(address,&handler)
      if address.class == String
        if handler.class == Proc
          return ::Vertx::MessageConsumer.new(@j_del.consumer(address,(Proc.new { |event| handler.call(::Vertx::Message.new(event)) })))
        end
        return ::Vertx::MessageConsumer.new(@j_del.consumer(address))
      end
      raise ArgumentError, "Invalid argument address=#{address} when calling consumer(address,handler)"
    end
    # THE METHOD DOC
    #
    # @param [String] address
    # @param [Proc] handler
    # @return [::Vertx::MessageConsumer]: the return value (todo)
    def local_consumer(address,&handler)
      if address.class == String
        if handler.class == Proc
          return ::Vertx::MessageConsumer.new(@j_del.localConsumer(address,(Proc.new { |event| handler.call(::Vertx::Message.new(event)) })))
        end
        return ::Vertx::MessageConsumer.new(@j_del.localConsumer(address))
      end
      raise ArgumentError, "Invalid argument address=#{address} when calling local_consumer(address,handler)"
    end
    # THE METHOD DOC
    #
    # @param [String] address
    # @param [Hash] options
    # @return [::Vertx::MessageProducer]: the return value (todo)
    def sender(address,options=nil)
      if address.class == String
        if options.class == Hash
          return ::Vertx::MessageProducer.new(@j_del.sender(address,Java::IoVertxCoreEventbus::DeliveryOptions.new(::Vertx::Util::Utils.to_json_object(options))))
        end
        return ::Vertx::MessageProducer.new(@j_del.sender(address))
      end
      raise ArgumentError, "Invalid argument address=#{address} when calling sender(address,options)"
    end
    # THE METHOD DOC
    #
    # @param [String] address
    # @param [Hash] options
    # @return [::Vertx::MessageProducer]: the return value (todo)
    def publisher(address,options=nil)
      if address.class == String
        if options.class == Hash
          return ::Vertx::MessageProducer.new(@j_del.publisher(address,Java::IoVertxCoreEventbus::DeliveryOptions.new(::Vertx::Util::Utils.to_json_object(options))))
        end
        return ::Vertx::MessageProducer.new(@j_del.publisher(address))
      end
      raise ArgumentError, "Invalid argument address=#{address} when calling publisher(address,options)"
    end
  end
end
