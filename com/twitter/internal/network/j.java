package com.twitter.internal.network;

import java.net.InetSocketAddress;
import java.net.Proxy;
import java.net.Proxy.Type;
import org.apache.http.HttpHost;

/* compiled from: Twttr */
public final class j {
    public final HttpHost a;
    public final boolean b;

    public j(boolean z, String str, String str2) {
        boolean z2;
        int parseInt;
        String trim = str.trim();
        if (trim.length() == 0) {
            z2 = false;
        } else {
            z2 = z;
        }
        try {
            parseInt = Integer.parseInt(str2);
        } catch (NumberFormatException e) {
            parseInt = -1;
            z2 = false;
        }
        this.a = new HttpHost(trim, parseInt, "http");
        this.b = z2;
    }

    public Proxy a() {
        if (!this.b) {
            return Proxy.NO_PROXY;
        }
        return new Proxy(Type.HTTP, new InetSocketAddress(this.a.getHostName(), this.a.getPort()));
    }
}
