package com.squareup.okhttp;

import com.squareup.okhttp.internal.huc.HttpURLConnectionImpl;
import com.squareup.okhttp.internal.huc.HttpsURLConnectionImpl;
import java.net.HttpURLConnection;
import java.net.Proxy;
import java.net.URL;
import java.net.URLConnection;
import java.net.URLStreamHandler;
import java.net.URLStreamHandlerFactory;

/* compiled from: Twttr */
public final class OkUrlFactory implements Cloneable, URLStreamHandlerFactory {
    private final OkHttpClient client;

    /* compiled from: Twttr */
    /* renamed from: com.squareup.okhttp.OkUrlFactory.1 */
    class AnonymousClass1 extends URLStreamHandler {
        final /* synthetic */ String val$protocol;

        AnonymousClass1(String str) {
            this.val$protocol = str;
        }

        protected URLConnection openConnection(URL url) {
            return OkUrlFactory.this.open(url);
        }

        protected URLConnection openConnection(URL url, Proxy proxy) {
            return OkUrlFactory.this.open(url, proxy);
        }

        protected int getDefaultPort() {
            if (this.val$protocol.equals("http")) {
                return 80;
            }
            if (this.val$protocol.equals("https")) {
                return 443;
            }
            throw new AssertionError();
        }
    }

    public OkUrlFactory(OkHttpClient okHttpClient) {
        this.client = okHttpClient;
    }

    public OkHttpClient client() {
        return this.client;
    }

    public OkUrlFactory clone() {
        return new OkUrlFactory(this.client.clone());
    }

    public HttpURLConnection open(URL url) {
        return open(url, this.client.getProxy());
    }

    HttpURLConnection open(URL url, Proxy proxy) {
        String protocol = url.getProtocol();
        OkHttpClient copyWithDefaults = this.client.copyWithDefaults();
        copyWithDefaults.setProxy(proxy);
        if (protocol.equals("http")) {
            return new HttpURLConnectionImpl(url, copyWithDefaults);
        }
        if (protocol.equals("https")) {
            return new HttpsURLConnectionImpl(url, copyWithDefaults);
        }
        throw new IllegalArgumentException("Unexpected protocol: " + protocol);
    }

    public URLStreamHandler createURLStreamHandler(String str) {
        if (str.equals("http") || str.equals("https")) {
            return new AnonymousClass1(str);
        }
        return null;
    }
}
