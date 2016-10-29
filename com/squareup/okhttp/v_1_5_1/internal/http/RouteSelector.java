package com.squareup.okhttp.v_1_5_1.internal.http;

import com.squareup.okhttp.v_1_5_1.Address;
import com.squareup.okhttp.v_1_5_1.Connection;
import com.squareup.okhttp.v_1_5_1.ConnectionPool;
import com.squareup.okhttp.v_1_5_1.Route;
import com.squareup.okhttp.v_1_5_1.RouteDatabase;
import com.squareup.okhttp.v_1_5_1.internal.Dns;
import java.io.IOException;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.Proxy;
import java.net.Proxy.Type;
import java.net.ProxySelector;
import java.net.SocketAddress;
import java.net.URI;
import java.net.UnknownHostException;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import javax.net.ssl.SSLHandshakeException;
import javax.net.ssl.SSLProtocolException;

/* compiled from: Twttr */
public final class RouteSelector {
    private static final int TLS_MODE_COMPATIBLE = 0;
    private static final int TLS_MODE_MODERN = 1;
    private static final int TLS_MODE_NULL = -1;
    private final Address address;
    private final Dns dns;
    private boolean hasNextProxy;
    private InetSocketAddress lastInetSocketAddress;
    private Proxy lastProxy;
    private int nextSocketAddressIndex;
    private int nextTlsMode;
    private final ConnectionPool pool;
    private final List<Route> postponedRoutes;
    private final ProxySelector proxySelector;
    private Iterator<Proxy> proxySelectorProxies;
    private final RouteDatabase routeDatabase;
    private InetAddress[] socketAddresses;
    private int socketPort;
    private final URI uri;
    private Proxy userSpecifiedProxy;

    public RouteSelector(Address address, URI uri, ProxySelector proxySelector, ConnectionPool connectionPool, Dns dns, RouteDatabase routeDatabase) {
        this.nextTlsMode = TLS_MODE_NULL;
        this.address = address;
        this.uri = uri;
        this.proxySelector = proxySelector;
        this.pool = connectionPool;
        this.dns = dns;
        this.routeDatabase = routeDatabase;
        this.postponedRoutes = new LinkedList();
        resetNextProxy(uri, address.getProxy());
    }

    public Address getAddress() {
        return this.address;
    }

    public boolean hasNext() {
        return hasNextTlsMode() || hasNextInetSocketAddress() || hasNextProxy() || hasNextPostponed();
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public com.squareup.okhttp.v_1_5_1.Connection next(java.lang.String r6) throws java.io.IOException {
        /*
        r5 = this;
        r0 = 1;
    L_0x0001:
        r1 = r5.pool;
        r2 = r5.address;
        r1 = r1.get(r2);
        if (r1 == 0) goto L_0x0020;
    L_0x000b:
        r2 = "GET";
        r2 = r6.equals(r2);
        if (r2 != 0) goto L_0x001a;
    L_0x0014:
        r2 = r1.isReadable();
        if (r2 == 0) goto L_0x001c;
    L_0x001a:
        r0 = r1;
    L_0x001b:
        return r0;
    L_0x001c:
        r1.close();
        goto L_0x0001;
    L_0x0020:
        r1 = r5.hasNextTlsMode();
        if (r1 != 0) goto L_0x005e;
    L_0x0026:
        r1 = r5.hasNextInetSocketAddress();
        if (r1 != 0) goto L_0x0055;
    L_0x002c:
        r1 = r5.hasNextProxy();
        if (r1 != 0) goto L_0x004a;
    L_0x0032:
        r0 = r5.hasNextPostponed();
        if (r0 != 0) goto L_0x003e;
    L_0x0038:
        r0 = new java.util.NoSuchElementException;
        r0.<init>();
        throw r0;
    L_0x003e:
        r0 = new com.squareup.okhttp.v_1_5_1.Connection;
        r1 = r5.pool;
        r2 = r5.nextPostponed();
        r0.<init>(r1, r2);
        goto L_0x001b;
    L_0x004a:
        r1 = r5.nextProxy();
        r5.lastProxy = r1;
        r1 = r5.lastProxy;
        r5.resetNextInetSocketAddress(r1);
    L_0x0055:
        r1 = r5.nextInetSocketAddress();
        r5.lastInetSocketAddress = r1;
        r5.resetNextTlsMode();
    L_0x005e:
        r1 = r5.nextTlsMode();
        if (r1 != r0) goto L_0x0081;
    L_0x0064:
        r1 = new com.squareup.okhttp.v_1_5_1.Route;
        r2 = r5.address;
        r3 = r5.lastProxy;
        r4 = r5.lastInetSocketAddress;
        r1.<init>(r2, r3, r4, r0);
        r0 = r5.routeDatabase;
        r0 = r0.shouldPostpone(r1);
        if (r0 == 0) goto L_0x0083;
    L_0x0077:
        r0 = r5.postponedRoutes;
        r0.add(r1);
        r0 = r5.next(r6);
        goto L_0x001b;
    L_0x0081:
        r0 = 0;
        goto L_0x0064;
    L_0x0083:
        r0 = new com.squareup.okhttp.v_1_5_1.Connection;
        r2 = r5.pool;
        r0.<init>(r2, r1);
        goto L_0x001b;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.squareup.okhttp.v_1_5_1.internal.http.RouteSelector.next(java.lang.String):com.squareup.okhttp.v_1_5_1.Connection");
    }

    public void connectFailed(Connection connection, IOException iOException) {
        boolean z = true;
        if (connection.recycleCount() <= 0) {
            Route route = connection.getRoute();
            if (!(route.getProxy().type() == Type.DIRECT || this.proxySelector == null)) {
                this.proxySelector.connectFailed(this.uri, route.getProxy().address(), iOException);
            }
            this.routeDatabase.failed(route);
            if (hasNextTlsMode() && !(iOException instanceof SSLHandshakeException) && !(iOException instanceof SSLProtocolException)) {
                if (nextTlsMode() != TLS_MODE_MODERN) {
                    z = false;
                }
                this.routeDatabase.failed(new Route(this.address, this.lastProxy, this.lastInetSocketAddress, z));
            }
        }
    }

    private void resetNextProxy(URI uri, Proxy proxy) {
        this.hasNextProxy = true;
        if (proxy != null) {
            this.userSpecifiedProxy = proxy;
            return;
        }
        List select = this.proxySelector.select(uri);
        if (select != null) {
            this.proxySelectorProxies = select.iterator();
        }
    }

    private boolean hasNextProxy() {
        return this.hasNextProxy;
    }

    private Proxy nextProxy() {
        if (this.userSpecifiedProxy != null) {
            this.hasNextProxy = false;
            return this.userSpecifiedProxy;
        }
        if (this.proxySelectorProxies != null) {
            while (this.proxySelectorProxies.hasNext()) {
                Proxy proxy = (Proxy) this.proxySelectorProxies.next();
                if (proxy.type() != Type.DIRECT) {
                    return proxy;
                }
            }
        }
        this.hasNextProxy = false;
        return Proxy.NO_PROXY;
    }

    private void resetNextInetSocketAddress(Proxy proxy) throws UnknownHostException {
        String uriHost;
        this.socketAddresses = null;
        if (proxy.type() == Type.DIRECT) {
            uriHost = this.address.getUriHost();
            this.socketPort = this.address.getUriPort();
        } else {
            SocketAddress address = proxy.address();
            if (address instanceof InetSocketAddress) {
                InetSocketAddress inetSocketAddress = (InetSocketAddress) address;
                String hostName = inetSocketAddress.getHostName();
                this.socketPort = inetSocketAddress.getPort();
                uriHost = hostName;
            } else {
                throw new IllegalArgumentException("Proxy.address() is not an InetSocketAddress: " + address.getClass());
            }
        }
        this.socketAddresses = this.dns.getAllByName(uriHost);
        this.nextSocketAddressIndex = TLS_MODE_COMPATIBLE;
    }

    private boolean hasNextInetSocketAddress() {
        return this.socketAddresses != null;
    }

    private InetSocketAddress nextInetSocketAddress() throws UnknownHostException {
        InetAddress[] inetAddressArr = this.socketAddresses;
        int i = this.nextSocketAddressIndex;
        this.nextSocketAddressIndex = i + TLS_MODE_MODERN;
        InetSocketAddress inetSocketAddress = new InetSocketAddress(inetAddressArr[i], this.socketPort);
        if (this.nextSocketAddressIndex == this.socketAddresses.length) {
            this.socketAddresses = null;
            this.nextSocketAddressIndex = TLS_MODE_COMPATIBLE;
        }
        return inetSocketAddress;
    }

    private void resetNextTlsMode() {
        this.nextTlsMode = this.address.getSslSocketFactory() != null ? TLS_MODE_MODERN : TLS_MODE_COMPATIBLE;
    }

    private boolean hasNextTlsMode() {
        return this.nextTlsMode != TLS_MODE_NULL;
    }

    private int nextTlsMode() {
        if (this.nextTlsMode == TLS_MODE_MODERN) {
            this.nextTlsMode = TLS_MODE_COMPATIBLE;
            return TLS_MODE_MODERN;
        } else if (this.nextTlsMode == 0) {
            this.nextTlsMode = TLS_MODE_NULL;
            return TLS_MODE_COMPATIBLE;
        } else {
            throw new AssertionError();
        }
    }

    private boolean hasNextPostponed() {
        return !this.postponedRoutes.isEmpty();
    }

    private Route nextPostponed() {
        return (Route) this.postponedRoutes.remove(TLS_MODE_COMPATIBLE);
    }
}
