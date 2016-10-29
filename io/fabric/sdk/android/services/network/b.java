package io.fabric.sdk.android.services.network;

import io.fabric.sdk.android.e;
import io.fabric.sdk.android.s;
import java.util.Locale;
import java.util.Map;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLSocketFactory;
import tv.periscope.android.library.p;

/* compiled from: Twttr */
public class b implements j {
    private final s a;
    private l b;
    private SSLSocketFactory c;
    private boolean d;

    public b() {
        this(new e());
    }

    public b(s sVar) {
        this.a = sVar;
    }

    public void a(l lVar) {
        if (this.b != lVar) {
            this.b = lVar;
            a();
        }
    }

    private synchronized void a() {
        this.d = false;
        this.c = null;
    }

    public HttpRequest a(HttpMethod httpMethod, String str, Map<String, String> map) {
        HttpRequest a;
        switch (c.a[httpMethod.ordinal()]) {
            case p.View_android_focusable /*1*/:
                a = HttpRequest.a((CharSequence) str, (Map) map, true);
                break;
            case p.View_paddingStart /*2*/:
                a = HttpRequest.b((CharSequence) str, (Map) map, true);
                break;
            case p.View_paddingEnd /*3*/:
                a = HttpRequest.d((CharSequence) str);
                break;
            case p.View_theme /*4*/:
                a = HttpRequest.e((CharSequence) str);
                break;
            default:
                throw new IllegalArgumentException("Unsupported HTTP method!");
        }
        if (a(str) && this.b != null) {
            SSLSocketFactory b = b();
            if (b != null) {
                ((HttpsURLConnection) a.a()).setSSLSocketFactory(b);
            }
        }
        return a;
    }

    private boolean a(String str) {
        return str != null && str.toLowerCase(Locale.US).startsWith("https");
    }

    private synchronized SSLSocketFactory b() {
        if (this.c == null && !this.d) {
            this.c = c();
        }
        return this.c;
    }

    private synchronized SSLSocketFactory c() {
        SSLSocketFactory a;
        this.d = true;
        try {
            a = k.a(this.b);
            this.a.a("Fabric", "Custom SSL pinning enabled");
        } catch (Throwable e) {
            this.a.e("Fabric", "Exception while validating pinned certs", e);
            a = null;
        }
        return a;
    }
}
