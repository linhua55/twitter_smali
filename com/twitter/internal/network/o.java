package com.twitter.internal.network;

import bbn;
import com.squareup.okhttp.v_1_5_1.HttpResponseCache;
import com.squareup.okhttp.v_1_5_1.OkHttpClient;
import com.twitter.internal.network.HttpOperation.RequestMethod;
import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.URI;
import java.net.URL;
import java.util.concurrent.TimeUnit;

/* compiled from: Twttr */
public class o extends l {
    protected final OkHttpClient b;
    private final HttpResponseCache c;

    public o(f fVar) {
        Object httpResponseCache;
        super(fVar);
        this.b = new OkHttpClient();
        this.b.setProxy(b());
        try {
            httpResponseCache = new HttpResponseCache(fVar.e(), (long) fVar.d());
        } catch (Throwable e) {
            bbn.a(e);
            httpResponseCache = null;
        }
        this.b.setOkResponseCache(httpResponseCache);
        this.c = httpResponseCache;
    }

    public HttpURLConnection a(URL url) throws IOException {
        this.b.setConnectTimeout((long) this.a.c(), TimeUnit.MILLISECONDS);
        this.b.setReadTimeout((long) this.a.b(), TimeUnit.MILLISECONDS);
        return this.b.open(url);
    }

    public HttpOperation a(RequestMethod requestMethod, URI uri, i iVar) {
        return new n(this, uri, requestMethod, iVar);
    }

    public void a() {
        super.a();
        if (this.c != null) {
            try {
                this.b.setResponseCache(null);
                this.c.close();
            } catch (Throwable e) {
                bbn.a(e);
            }
        }
    }
}
