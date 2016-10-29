package com.twitter.internal.network;

import com.twitter.internal.network.HttpOperation.RequestMethod;
import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.Proxy;
import java.net.URI;
import java.net.URL;

/* compiled from: Twttr */
public class l extends e {
    public l(f fVar) {
        super(fVar);
    }

    public HttpOperation a(RequestMethod requestMethod, URI uri, i iVar) {
        return new m(this, uri, requestMethod, iVar);
    }

    public void a() {
    }

    public HttpURLConnection a(URL url) throws IOException {
        HttpURLConnection httpURLConnection = (HttpURLConnection) url.openConnection(b());
        httpURLConnection.setConnectTimeout(this.a.c());
        httpURLConnection.setReadTimeout(this.a.b());
        httpURLConnection.setDoInput(true);
        return httpURLConnection;
    }

    protected Proxy b() {
        if (this.a.a() == null) {
            return Proxy.NO_PROXY;
        }
        return this.a.a().a();
    }
}
