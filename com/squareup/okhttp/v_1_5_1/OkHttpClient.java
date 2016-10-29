package com.squareup.okhttp.v_1_5_1;

import com.squareup.okhttp.v_1_5_1.internal.Util;
import com.squareup.okhttp.v_1_5_1.internal.http.HttpAuthenticator;
import com.squareup.okhttp.v_1_5_1.internal.http.HttpURLConnectionImpl;
import com.squareup.okhttp.v_1_5_1.internal.http.HttpsURLConnectionImpl;
import com.squareup.okhttp.v_1_5_1.internal.http.Origin;
import com.squareup.okhttp.v_1_5_1.internal.http.ResponseCacheAdapter;
import com.squareup.okhttp.v_1_5_1.internal.okio.ByteString;
import com.squareup.okhttp.v_1_5_1.internal.tls.OkHostnameVerifier;
import java.net.CookieHandler;
import java.net.HttpURLConnection;
import java.net.Proxy;
import java.net.ProxySelector;
import java.net.ResponseCache;
import java.net.URL;
import java.net.URLStreamHandler;
import java.net.URLStreamHandlerFactory;
import java.security.GeneralSecurityException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLSocketFactory;

/* compiled from: Twttr */
public final class OkHttpClient implements Cloneable, URLStreamHandlerFactory {
    private OkAuthenticator authenticator;
    private final Map<Address, Address> connectLocks;
    private int connectTimeout;
    private ConnectionPool connectionPool;
    private CookieHandler cookieHandler;
    private boolean followProtocolRedirects;
    private HostnameVerifier hostnameVerifier;
    private volatile Map<Origin, Origin> originAliases;
    private List<Protocol> protocols;
    private Proxy proxy;
    private ProxySelector proxySelector;
    private int readTimeout;
    private OkResponseCache responseCache;
    private final RouteDatabase routeDatabase;
    private SSLSocketFactory sslSocketFactory;

    public OkHttpClient() {
        this.followProtocolRedirects = true;
        this.connectLocks = new HashMap(64);
        this.routeDatabase = new RouteDatabase();
        this.originAliases = Collections.EMPTY_MAP;
    }

    public synchronized Object getConnectLock(Address address) {
        Object obj;
        obj = (Address) this.connectLocks.get(address);
        if (obj == null) {
            this.connectLocks.put(address, address);
            Address address2 = address;
        }
        return obj;
    }

    public synchronized void resetConnectLock(Address address) {
        this.connectLocks.remove(address);
    }

    public void setConnectTimeout(long j, TimeUnit timeUnit) {
        if (j < 0) {
            throw new IllegalArgumentException("timeout < 0");
        } else if (timeUnit == null) {
            throw new IllegalArgumentException("unit == null");
        } else {
            long toMillis = timeUnit.toMillis(j);
            if (toMillis > 2147483647L) {
                throw new IllegalArgumentException("Timeout too large.");
            }
            this.connectTimeout = (int) toMillis;
        }
    }

    public int getConnectTimeout() {
        return this.connectTimeout;
    }

    public void setReadTimeout(long j, TimeUnit timeUnit) {
        if (j < 0) {
            throw new IllegalArgumentException("timeout < 0");
        } else if (timeUnit == null) {
            throw new IllegalArgumentException("unit == null");
        } else {
            long toMillis = timeUnit.toMillis(j);
            if (toMillis > 2147483647L) {
                throw new IllegalArgumentException("Timeout too large.");
            }
            this.readTimeout = (int) toMillis;
        }
    }

    public int getReadTimeout() {
        return this.readTimeout;
    }

    public OkHttpClient setProxy(Proxy proxy) {
        this.proxy = proxy;
        return this;
    }

    public Proxy getProxy() {
        return this.proxy;
    }

    public OkHttpClient setProxySelector(ProxySelector proxySelector) {
        this.proxySelector = proxySelector;
        return this;
    }

    public ProxySelector getProxySelector() {
        return this.proxySelector;
    }

    public OkHttpClient setCookieHandler(CookieHandler cookieHandler) {
        this.cookieHandler = cookieHandler;
        return this;
    }

    public CookieHandler getCookieHandler() {
        return this.cookieHandler;
    }

    public OkHttpClient setResponseCache(ResponseCache responseCache) {
        return setOkResponseCache(toOkResponseCache(responseCache));
    }

    public ResponseCache getResponseCache() {
        return this.responseCache instanceof ResponseCacheAdapter ? ((ResponseCacheAdapter) this.responseCache).getDelegate() : null;
    }

    public OkHttpClient setOkResponseCache(OkResponseCache okResponseCache) {
        this.responseCache = okResponseCache;
        return this;
    }

    public OkResponseCache getOkResponseCache() {
        return this.responseCache;
    }

    public OkHttpClient setSslSocketFactory(SSLSocketFactory sSLSocketFactory) {
        this.sslSocketFactory = sSLSocketFactory;
        return this;
    }

    public SSLSocketFactory getSslSocketFactory() {
        return this.sslSocketFactory;
    }

    public OkHttpClient setHostnameVerifier(HostnameVerifier hostnameVerifier) {
        this.hostnameVerifier = hostnameVerifier;
        return this;
    }

    public HostnameVerifier getHostnameVerifier() {
        return this.hostnameVerifier;
    }

    public OkHttpClient setAuthenticator(OkAuthenticator okAuthenticator) {
        this.authenticator = okAuthenticator;
        return this;
    }

    public OkAuthenticator getAuthenticator() {
        return this.authenticator;
    }

    public OkHttpClient setConnectionPool(ConnectionPool connectionPool) {
        this.connectionPool = connectionPool;
        return this;
    }

    public ConnectionPool getConnectionPool() {
        return this.connectionPool;
    }

    public OkHttpClient setFollowProtocolRedirects(boolean z) {
        this.followProtocolRedirects = z;
        return this;
    }

    public boolean getFollowProtocolRedirects() {
        return this.followProtocolRedirects;
    }

    public RouteDatabase getRoutesDatabase() {
        return this.routeDatabase;
    }

    @Deprecated
    public OkHttpClient setTransports(List<String> list) {
        List arrayList = new ArrayList(list.size());
        int size = list.size();
        int i = 0;
        while (i < size) {
            try {
                arrayList.add(Util.getProtocol(ByteString.encodeUtf8((String) list.get(i))));
                i++;
            } catch (Throwable e) {
                throw new IllegalArgumentException(e);
            }
        }
        return setProtocols(arrayList);
    }

    public OkHttpClient setProtocols(List<Protocol> list) {
        List immutableList = Util.immutableList(list);
        if (!immutableList.contains(Protocol.HTTP_11)) {
            throw new IllegalArgumentException("protocols doesn't contain http/1.1: " + immutableList);
        } else if (immutableList.contains(null)) {
            throw new IllegalArgumentException("protocols must not contain null");
        } else {
            this.protocols = Util.immutableList(immutableList);
            return this;
        }
    }

    @Deprecated
    public List<String> getTransports() {
        List<String> arrayList = new ArrayList(this.protocols.size());
        int size = this.protocols.size();
        for (int i = 0; i < size; i++) {
            arrayList.add(((Protocol) this.protocols.get(i)).name.utf8());
        }
        return arrayList;
    }

    public List<Protocol> getProtocols() {
        return this.protocols;
    }

    public OkHttpClient updateOriginAliases(Map<Origin, Origin> map) {
        this.originAliases = new HashMap(map);
        return this;
    }

    public Origin getAliasForOrigin(Origin origin) {
        return (Origin) this.originAliases.get(origin);
    }

    public HttpURLConnection open(URL url) {
        return open(url, this.proxy);
    }

    HttpURLConnection open(URL url, Proxy proxy) {
        String protocol = url.getProtocol();
        OkHttpClient copyWithDefaults = copyWithDefaults();
        copyWithDefaults.proxy = proxy;
        if (protocol.equals("http")) {
            return new HttpURLConnectionImpl(url, copyWithDefaults);
        }
        if (protocol.equals("https")) {
            return new HttpsURLConnectionImpl(url, copyWithDefaults);
        }
        throw new IllegalArgumentException("Unexpected protocol: " + protocol);
    }

    OkHttpClient copyWithDefaults() {
        OkHttpClient clone = clone();
        if (clone.proxySelector == null) {
            clone.proxySelector = ProxySelector.getDefault();
        }
        if (clone.cookieHandler == null) {
            clone.cookieHandler = CookieHandler.getDefault();
        }
        if (clone.responseCache == null) {
            clone.responseCache = toOkResponseCache(ResponseCache.getDefault());
        }
        if (clone.sslSocketFactory == null) {
            clone.sslSocketFactory = getDefaultSSLSocketFactory();
        }
        if (clone.hostnameVerifier == null) {
            clone.hostnameVerifier = OkHostnameVerifier.INSTANCE;
        }
        if (clone.authenticator == null) {
            clone.authenticator = HttpAuthenticator.SYSTEM_DEFAULT;
        }
        if (clone.connectionPool == null) {
            clone.connectionPool = ConnectionPool.getDefault();
        }
        if (clone.protocols == null) {
            clone.protocols = Util.HTTP2_SPDY3_AND_HTTP;
        }
        return clone;
    }

    private synchronized SSLSocketFactory getDefaultSSLSocketFactory() {
        if (this.sslSocketFactory == null) {
            try {
                SSLContext instance = SSLContext.getInstance("TLS");
                instance.init(null, null, null);
                this.sslSocketFactory = instance.getSocketFactory();
            } catch (GeneralSecurityException e) {
                throw new AssertionError();
            }
        }
        return this.sslSocketFactory;
    }

    public OkHttpClient clone() {
        try {
            return (OkHttpClient) super.clone();
        } catch (CloneNotSupportedException e) {
            throw new AssertionError();
        }
    }

    private OkResponseCache toOkResponseCache(ResponseCache responseCache) {
        return (responseCache == null || (responseCache instanceof OkResponseCache)) ? (OkResponseCache) responseCache : new ResponseCacheAdapter(responseCache);
    }

    public URLStreamHandler createURLStreamHandler(String str) {
        if (str.equals("http") || str.equals("https")) {
            return new 1(this, str);
        }
        return null;
    }
}
