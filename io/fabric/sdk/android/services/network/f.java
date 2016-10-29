package io.fabric.sdk.android.services.network;

import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.Proxy;
import java.net.URL;

/* compiled from: Twttr */
public interface f {
    public static final f a;

    HttpURLConnection a(URL url) throws IOException;

    HttpURLConnection a(URL url, Proxy proxy) throws IOException;

    static {
        a = new g();
    }
}
