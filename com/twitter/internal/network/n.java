package com.twitter.internal.network;

import com.twitter.internal.network.HttpOperation.RequestMethod;
import java.net.HttpURLConnection;
import java.net.URI;

/* compiled from: Twttr */
public class n extends m {
    protected /* synthetic */ HttpOperation$Protocol k(Object obj) {
        return d((HttpURLConnection) obj);
    }

    public n(l lVar, URI uri, RequestMethod requestMethod, i iVar) {
        super(lVar, uri, requestMethod, iVar);
    }

    protected void c(HttpOperation$Protocol httpOperation$Protocol) {
        if (httpOperation$Protocol == HttpOperation$Protocol.SPDY_3_1) {
            a("X-Android-Transports", "spdy/3.1,http/1.1");
        } else {
            a("X-Android-Transports", "http/1.1");
        }
    }

    protected boolean a(HttpOperation$Protocol httpOperation$Protocol) {
        return httpOperation$Protocol == HttpOperation$Protocol.HTTP_1_1 || httpOperation$Protocol == HttpOperation$Protocol.SPDY_3_1;
    }

    protected HttpOperation$Protocol d(HttpURLConnection httpURLConnection) {
        String a = a(httpURLConnection, "OkHttp-Selected-Protocol", 0);
        if (a != null) {
            return HttpOperation$Protocol.a(a);
        }
        return super.d(httpURLConnection);
    }

    protected String d() {
        return "OkHttp";
    }
}
