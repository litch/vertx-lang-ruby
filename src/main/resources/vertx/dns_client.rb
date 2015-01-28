require 'vertx/mx_record'
require 'vertx/srv_record'
require 'vertx/util/utils.rb'
# Generated from io.vertx.core.dns.DnsClient
module Vertx
  #  Provides a way to asynchronously lookup information from DNS servers.
  #  <p>
  #  Please consult the documentation for more information on DNS clients.
  class DnsClient
    # @private
    # @param j_del [::Vertx::DnsClient] the java delegate
    def initialize(j_del)
      @j_del = j_del
    end
    # @private
    # @return [::Vertx::DnsClient] the underlying java delegate
    def j_del
      @j_del
    end
    #  Try to lookup the A (ipv4) or AAAA (ipv6) record for the given name. The first found will be used.
    # @param [String] name the name to resolve
    # @param [Proc] handler the {@link io.vertx.core.Handler} to notify with the {@link io.vertx.core.AsyncResult}. The handler will get notified with the resolved address if a record was found. If non was found it will get notifed with {@code null}. If an error accours it will get failed.
    # @return [self]
    def lookup(name,&handler)
      if name.class == String
        if handler.class == Proc
          (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:lookup,Java::java.lang.String.java_class,Java::IoVertxCore::Handler.java_class))).invoke(@j_del,name,(Proc.new { |ar| handler.call(ar.failed ? ar.cause : nil, ar.succeeded ? ar.result : nil) }))
          return self
        end
        raise ArgumentError, "Invalid argument handler=#{handler} when calling lookup(name,handler)"
      end
      raise ArgumentError, "Invalid argument name=#{name} when calling lookup(name,handler)"
    end
    #  Try to lookup the A (ipv4) record for the given name. The first found will be used.
    # @param [String] name the name to resolve
    # @param [Proc] handler the {@link Handler} to notify with the {@link io.vertx.core.AsyncResult}. The handler will get notified with the resolved {@link java.net.Inet4Address} if a record was found. If non was found it will get notifed with {@code null}. If an error accours it will get failed.
    # @return [self]
    def lookup4(name,&handler)
      if name.class == String
        if handler.class == Proc
          (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:lookup4,Java::java.lang.String.java_class,Java::IoVertxCore::Handler.java_class))).invoke(@j_del,name,(Proc.new { |ar| handler.call(ar.failed ? ar.cause : nil, ar.succeeded ? ar.result : nil) }))
          return self
        end
        raise ArgumentError, "Invalid argument handler=#{handler} when calling lookup4(name,handler)"
      end
      raise ArgumentError, "Invalid argument name=#{name} when calling lookup4(name,handler)"
    end
    #  Try to lookup the AAAA (ipv6) record for the given name. The first found will be used.
    # @param [String] name the name to resolve
    # @param [Proc] handler the {@link Handler} to notify with the {@link AsyncResult}. The handler will get notified with the resolved {@link java.net.Inet6Address} if a record was found. If non was found it will get notifed with {@code null}. If an error accours it will get failed.
    # @return [self]
    def lookup6(name,&handler)
      if name.class == String
        if handler.class == Proc
          (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:lookup6,Java::java.lang.String.java_class,Java::IoVertxCore::Handler.java_class))).invoke(@j_del,name,(Proc.new { |ar| handler.call(ar.failed ? ar.cause : nil, ar.succeeded ? ar.result : nil) }))
          return self
        end
        raise ArgumentError, "Invalid argument handler=#{handler} when calling lookup6(name,handler)"
      end
      raise ArgumentError, "Invalid argument name=#{name} when calling lookup6(name,handler)"
    end
    #  Try to resolve all A (ipv4) records for the given name.
    # @param [String] name the name to resolve
    # @param [Proc] handler the {@link io.vertx.core.Handler} to notify with the {@link io.vertx.core.AsyncResult}. The handler will get notified with a {@link java.util.List} that contains all the resolved {@link java.net.Inet4Address}es. If none was found an empty {@link java.util.List} will be used. If an error accours it will get failed.
    # @return [self]
    def resolve_a(name,&handler)
      if name.class == String
        if handler.class == Proc
          (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:resolveA,Java::java.lang.String.java_class,Java::IoVertxCore::Handler.java_class))).invoke(@j_del,name,(Proc.new { |ar| handler.call(ar.failed ? ar.cause : nil, ar.succeeded ? ar.result.to_a.map { |elt| elt } : nil) }))
          return self
        end
        raise ArgumentError, "Invalid argument handler=#{handler} when calling resolve_a(name,handler)"
      end
      raise ArgumentError, "Invalid argument name=#{name} when calling resolve_a(name,handler)"
    end
    #  Try to resolve all AAAA (ipv6) records for the given name.
    # @param [String] name the name to resolve
    # @param [Proc] handler the {@link io.vertx.core.Handler} to notify with the {@link io.vertx.core.AsyncResult}. The handler will get notified with a {@link java.util.List} that contains all the resolved {@link java.net.Inet6Address}es. If none was found an empty {@link java.util.List} will be used. If an error accours it will get failed.
    # @return [self]
    def resolve_aaaa(name,&handler)
      if name.class == String
        if handler.class == Proc
          (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:resolveAAAA,Java::java.lang.String.java_class,Java::IoVertxCore::Handler.java_class))).invoke(@j_del,name,(Proc.new { |ar| handler.call(ar.failed ? ar.cause : nil, ar.succeeded ? ar.result.to_a.map { |elt| elt } : nil) }))
          return self
        end
        raise ArgumentError, "Invalid argument handler=#{handler} when calling resolve_aaaa(name,handler)"
      end
      raise ArgumentError, "Invalid argument name=#{name} when calling resolve_aaaa(name,handler)"
    end
    #  Try to resolve the CNAME record for the given name.
    # @param [String] name the name to resolve the CNAME for
    # @param [Proc] handler the {@link Handler} to notify with the {@link AsyncResult}. The handler will get notified with the resolved {@link String} if a record was found. If none was found it will get notified with {@code null}. If an error accours it will get failed.
    # @return [self]
    def resolve_cname(name,&handler)
      if name.class == String
        if handler.class == Proc
          (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:resolveCNAME,Java::java.lang.String.java_class,Java::IoVertxCore::Handler.java_class))).invoke(@j_del,name,(Proc.new { |ar| handler.call(ar.failed ? ar.cause : nil, ar.succeeded ? ar.result.to_a.map { |elt| elt } : nil) }))
          return self
        end
        raise ArgumentError, "Invalid argument handler=#{handler} when calling resolve_cname(name,handler)"
      end
      raise ArgumentError, "Invalid argument name=#{name} when calling resolve_cname(name,handler)"
    end
    #  Try to resolve the MX records for the given name.
    # @param [String] name the name for which the MX records should be resolved
    # @param [Proc] handler the {@link io.vertx.core.Handler} to notify with the {@link io.vertx.core.AsyncResult}. The handler will get notified with a List that contains all resolved {@link MxRecord}s, sorted by their {@link MxRecord#priority()}. If non was found it will get notified with an empty {@link java.util.List}. If an error accours it will get failed.
    # @return [self]
    def resolve_mx(name,&handler)
      if name.class == String
        if handler.class == Proc
          (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:resolveMX,Java::java.lang.String.java_class,Java::IoVertxCore::Handler.java_class))).invoke(@j_del,name,(Proc.new { |ar| handler.call(ar.failed ? ar.cause : nil, ar.succeeded ? ar.result.to_a.map { |elt| ::Vertx::MxRecord.new(elt) } : nil) }))
          return self
        end
        raise ArgumentError, "Invalid argument handler=#{handler} when calling resolve_mx(name,handler)"
      end
      raise ArgumentError, "Invalid argument name=#{name} when calling resolve_mx(name,handler)"
    end
    #  Try to resolve the TXT records for the given name.
    # @param [String] name the name for which the TXT records should be resolved
    # @param [Proc] handler the {@link Handler} to notify with the {@link AsyncResult}. The handler will get notified with a List that contains all resolved {@link String}s. If none was found it will get notified with an empty {@link java.util.List}. If an error accours it will get failed.
    # @return [self]
    def resolve_txt(name,&handler)
      if name.class == String
        if handler.class == Proc
          (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:resolveTXT,Java::java.lang.String.java_class,Java::IoVertxCore::Handler.java_class))).invoke(@j_del,name,(Proc.new { |ar| handler.call(ar.failed ? ar.cause : nil, ar.succeeded ? ar.result.to_a.map { |elt| elt } : nil) }))
          return self
        end
        raise ArgumentError, "Invalid argument handler=#{handler} when calling resolve_txt(name,handler)"
      end
      raise ArgumentError, "Invalid argument name=#{name} when calling resolve_txt(name,handler)"
    end
    #  Try to resolve the PTR record for the given name.
    # @param [String] name the name to resolve the PTR for
    # @param [Proc] handler the {@link Handler} to notify with the {@link AsyncResult}. The handler will get notified with the resolved {@link String} if a record was found. If none was found it will get notified with {@code null}. If an error accours it will get failed.
    # @return [self]
    def resolve_ptr(name,&handler)
      if name.class == String
        if handler.class == Proc
          (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:resolvePTR,Java::java.lang.String.java_class,Java::IoVertxCore::Handler.java_class))).invoke(@j_del,name,(Proc.new { |ar| handler.call(ar.failed ? ar.cause : nil, ar.succeeded ? ar.result : nil) }))
          return self
        end
        raise ArgumentError, "Invalid argument handler=#{handler} when calling resolve_ptr(name,handler)"
      end
      raise ArgumentError, "Invalid argument name=#{name} when calling resolve_ptr(name,handler)"
    end
    #  Try to resolve the NS records for the given name.
    # @param [String] name the name for which the NS records should be resolved
    # @param [Proc] handler the {@link Handler} to notify with the {@link AsyncResult}. The handler will get notified with a List that contains all resolved {@link String}s. If none was found it will get notified with an empty {@link java.util.List}. If an error accours it will get failed.
    # @return [self]
    def resolve_ns(name,&handler)
      if name.class == String
        if handler.class == Proc
          (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:resolveNS,Java::java.lang.String.java_class,Java::IoVertxCore::Handler.java_class))).invoke(@j_del,name,(Proc.new { |ar| handler.call(ar.failed ? ar.cause : nil, ar.succeeded ? ar.result.to_a.map { |elt| elt } : nil) }))
          return self
        end
        raise ArgumentError, "Invalid argument handler=#{handler} when calling resolve_ns(name,handler)"
      end
      raise ArgumentError, "Invalid argument name=#{name} when calling resolve_ns(name,handler)"
    end
    #  Try to resolve the SRV records for the given name.
    # @param [String] name the name for which the SRV records should be resolved
    # @param [Proc] handler the {@link Handler} to notify with the {@link AsyncResult}. The handler will get notified with a List that contains all resolved {@link SrvRecord}s. If none was found it will get notified with an empty {@link java.util.List}. If an error accours it will get failed.
    # @return [self]
    def resolve_srv(name,&handler)
      if name.class == String
        if handler.class == Proc
          (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:resolveSRV,Java::java.lang.String.java_class,Java::IoVertxCore::Handler.java_class))).invoke(@j_del,name,(Proc.new { |ar| handler.call(ar.failed ? ar.cause : nil, ar.succeeded ? ar.result.to_a.map { |elt| ::Vertx::SrvRecord.new(elt) } : nil) }))
          return self
        end
        raise ArgumentError, "Invalid argument handler=#{handler} when calling resolve_srv(name,handler)"
      end
      raise ArgumentError, "Invalid argument name=#{name} when calling resolve_srv(name,handler)"
    end
    #  Try to do a reverse lookup of an IP address. This is basically the same as doing trying to resolve a PTR record
    #  but allows you to just pass in the IP address and not a valid ptr query string.
    # @param [String] ipaddress the IP address to resolve the PTR for
    # @param [Proc] handler the {@link Handler} to notify with the {@link AsyncResult}. The handler will get notified with the resolved {@link String} if a record was found. If none was found it will get notified with {@code null}. If an error accours it will get failed.
    # @return [self]
    def reverse_lookup(ipaddress,&handler)
      if ipaddress.class == String
        if handler.class == Proc
          (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:reverseLookup,Java::java.lang.String.java_class,Java::IoVertxCore::Handler.java_class))).invoke(@j_del,ipaddress,(Proc.new { |ar| handler.call(ar.failed ? ar.cause : nil, ar.succeeded ? ar.result : nil) }))
          return self
        end
        raise ArgumentError, "Invalid argument handler=#{handler} when calling reverse_lookup(ipaddress,handler)"
      end
      raise ArgumentError, "Invalid argument ipaddress=#{ipaddress} when calling reverse_lookup(ipaddress,handler)"
    end
  end
end
