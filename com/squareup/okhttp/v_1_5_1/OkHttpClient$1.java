package com.squareup.okhttp.v_1_5_1;

import java.net.Proxy;
import java.net.URL;
import java.net.URLConnection;
import java.net.URLStreamHandler;

/* compiled from: Twttr */
class OkHttpClient$1 extends URLStreamHandler {
    final /* synthetic */ OkHttpClient this$0;
    final /* synthetic */ String val$protocol;

    OkHttpClient$1(OkHttpClient okHttpClient, String str) {
        this.this$0 = okHttpClient;
        this.val$protocol = str;
    }

    protected URLConnection openConnection(URL url) {
        return this.this$0.open(url);
    }

    protected URLConnection openConnection(URL url, Proxy proxy) {
        return this.this$0.open(url, proxy);
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
