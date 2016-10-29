package com.squareup.okhttp.v_1_5_1;

import com.squareup.okhttp.v_1_5_1.internal.Util;
import com.squareup.okhttp.v_1_5_1.internal.http.Request;
import com.squareup.okhttp.v_1_5_1.internal.http.Request.Builder;
import java.io.IOException;
import java.net.URL;

/* compiled from: Twttr */
public final class TunnelRequest {
    final String host;
    final int port;
    final String proxyAuthorization;
    final String userAgent;

    public TunnelRequest(String str, int i, String str2, String str3) {
        if (str == null) {
            throw new NullPointerException("host == null");
        } else if (str2 == null) {
            throw new NullPointerException("userAgent == null");
        } else {
            this.host = str;
            this.port = i;
            this.userAgent = str2;
            this.proxyAuthorization = str3;
        }
    }

    String requestLine() {
        return "CONNECT " + this.host + ":" + this.port + " HTTP/1.1";
    }

    Request getRequest() throws IOException {
        Builder url = new Builder().url(new URL("https", this.host, this.port, "/"));
        url.header("Host", this.port == Util.getDefaultPort("https") ? this.host : this.host + ":" + this.port);
        url.header("User-Agent", this.userAgent);
        if (this.proxyAuthorization != null) {
            url.header("Proxy-Authorization", this.proxyAuthorization);
        }
        url.header("Proxy-Connection", "Keep-Alive");
        return url.build();
    }
}
