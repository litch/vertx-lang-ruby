require 'vertx/buffer'
require 'vertx/socket_address'
require 'vertx/util/utils.rb'
# Generated from io.vertx.core.datagram.DatagramPacket
module Vertx
  #  A received datagram packet (UDP) which contains the data and information about the sender of the data itself.
  class DatagramPacket
    # @private
    # @param j_del [::Vertx::DatagramPacket] the java delegate
    def initialize(j_del)
      @j_del = j_del
    end
    # @private
    # @return [::Vertx::DatagramPacket] the underlying java delegate
    def j_del
      @j_del
    end
    #  Returns the {::Vertx::SocketAddress} of the sender that sent
    #  this {::Vertx::DatagramPacket}.
    # @return [::Vertx::SocketAddress]
    def sender
      ::Vertx::SocketAddress.new((Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:sender))).invoke(@j_del))
    end
    #  Returns the data of the {::Vertx::DatagramPacket}
    # @return [::Vertx::Buffer]
    def data
      ::Vertx::Buffer.new((Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:data))).invoke(@j_del))
    end
  end
end
