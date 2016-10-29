package com.squareup.okhttp.v_1_5_1;

import com.squareup.okhttp.v_1_5_1.internal.Util;
import java.net.Proxy;
import java.net.UnknownHostException;
import java.util.List;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLSocketFactory;

/* compiled from: Twttr */
public final class Address {
    final OkAuthenticator authenticator;
    final HostnameVerifier hostnameVerifier;
    final List<Protocol> protocols;
    final Proxy proxy;
    final SSLSocketFactory sslSocketFactory;
    final String uriHost;
    final int uriPort;

    public Address(String str, int i, SSLSocketFactory sSLSocketFactory, HostnameVerifier hostnameVerifier, OkAuthenticator okAuthenticator, Proxy proxy, List<Protocol> list) throws UnknownHostException {
        if (str == null) {
            throw new NullPointerException("uriHost == null");
        } else if (i <= 0) {
            throw new IllegalArgumentException("uriPort <= 0: " + i);
        } else if (okAuthenticator == null) {
            throw new IllegalArgumentException("authenticator == null");
        } else if (list == null) {
            throw new IllegalArgumentException("protocols == null");
        } else {
            this.proxy = proxy;
            this.uriHost = str;
            this.uriPort = i;
            this.sslSocketFactory = sSLSocketFactory;
            this.hostnameVerifier = hostnameVerifier;
            this.authenticator = okAuthenticator;
            this.protocols = Util.immutableList((List) list);
        }
    }

    public String getUriHost() {
        return this.uriHost;
    }

    public int getUriPort() {
        return this.uriPort;
    }

    public SSLSocketFactory getSslSocketFactory() {
        return this.sslSocketFactory;
    }

    public HostnameVerifier getHostnameVerifier() {
        return this.hostnameVerifier;
    }

    public OkAuthenticator getAuthenticator() {
        return this.authenticator;
    }

    public List<Protocol> getProtocols() {
        return this.protocols;
    }

    public Proxy getProxy() {
        return this.proxy;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof Address)) {
            return false;
        }
        Address address = (Address) obj;
        if (Util.equal(this.proxy, address.proxy) && this.uriHost.equals(address.uriHost) && this.uriPort == address.uriPort && Util.equal(this.sslSocketFactory, address.sslSocketFactory) && Util.equal(this.hostnameVerifier, address.hostnameVerifier) && Util.equal(this.authenticator, address.authenticator) && Util.equal(this.protocols, address.protocols)) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        int hashCode;
        int i = 0;
        int hashCode2 = ((this.sslSocketFactory != null ? this.sslSocketFactory.hashCode() : 0) + ((((this.uriHost.hashCode() + 527) * 31) + this.uriPort) * 31)) * 31;
        if (this.hostnameVerifier != null) {
            hashCode = this.hostnameVerifier.hashCode();
        } else {
            hashCode = 0;
        }
        hashCode2 = (hashCode + hashCode2) * 31;
        if (this.authenticator != null) {
            hashCode = this.authenticator.hashCode();
        } else {
            hashCode = 0;
        }
        hashCode = (hashCode + hashCode2) * 31;
        if (this.proxy != null) {
            i = this.proxy.hashCode();
        }
        return ((hashCode + i) * 31) + this.protocols.hashCode();
    }
}
