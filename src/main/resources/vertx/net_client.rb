require 'vertx/measured'
require 'vertx/net_socket'
require 'vertx/util/utils.rb'
# Generated from io.vertx.core.net.NetClient
module Vertx
  class NetClient
    include ::Vertx::Measured
    # @private
    # @param j_del [::Vertx::NetClient] the java delegate
    def initialize(j_del)
      @j_del = j_del
    end
    # @private
    # @return [::Vertx::NetClient] the underlying java delegate
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
    # @param [Fixnum] port
    # @param [String] host
    # @param [Proc] connectHandler
    # return [self]
    def connect(port,host,&connectHandler)
      if port.class == Fixnum
        if host.class == String
          if connectHandler.class == Proc
            @j_del.connect(port,host,(Proc.new { |ar| connectHandler.call(ar.failed ? ar.cause : nil, ar.succeeded ? ::Vertx::NetSocket.new(ar.result) : nil) }))
            return self
          end
          raise ArgumentError, "Invalid argument connectHandler=#{connectHandler} when calling connect(port,host,connectHandler)"
        end
        raise ArgumentError, "Invalid argument host=#{host} when calling connect(port,host,connectHandler)"
      end
      raise ArgumentError, "Invalid argument port=#{port} when calling connect(port,host,connectHandler)"
    end
    # THE METHOD DOC
    #
    # return [void]
    def close
      @j_del.close
    end
  end
end
