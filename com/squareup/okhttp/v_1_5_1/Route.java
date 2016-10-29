package com.squareup.okhttp.v_1_5_1;

import java.net.InetSocketAddress;
import java.net.Proxy;

/* compiled from: Twttr */
public class Route {
    final Address address;
    final InetSocketAddress inetSocketAddress;
    final boolean modernTls;
    final Proxy proxy;

    public Route(Address address, Proxy proxy, InetSocketAddress inetSocketAddress, boolean z) {
        if (address == null) {
            throw new NullPointerException("address == null");
        } else if (proxy == null) {
            throw new NullPointerException("proxy == null");
        } else if (inetSocketAddress == null) {
            throw new NullPointerException("inetSocketAddress == null");
        } else {
            this.address = address;
            this.proxy = proxy;
            this.inetSocketAddress = inetSocketAddress;
            this.modernTls = z;
        }
    }

    public Address getAddress() {
        return this.address;
    }

    public Proxy getProxy() {
        return this.proxy;
    }

    public InetSocketAddress getSocketAddress() {
        return this.inetSocketAddress;
    }

    public boolean isModernTls() {
        return this.modernTls;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof Route)) {
            return false;
        }
        Route route = (Route) obj;
        if (this.address.equals(route.address) && this.proxy.equals(route.proxy) && this.inetSocketAddress.equals(route.inetSocketAddress) && this.modernTls == route.modernTls) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        int hashCode = this.inetSocketAddress.hashCode() + ((((this.address.hashCode() + 527) * 31) + this.proxy.hashCode()) * 31);
        return (this.modernTls ? hashCode * 31 : 0) + hashCode;
    }
}
