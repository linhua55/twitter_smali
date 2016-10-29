package com.twitter.library.network;

import android.content.Context;
import com.twitter.app.common.util.f;
import com.twitter.config.AppConfig;
import com.twitter.internal.android.service.d;
import com.twitter.internal.network.HttpOperation;
import com.twitter.internal.network.HttpOperation.RequestMethod;
import com.twitter.internal.network.c;
import com.twitter.internal.network.g;
import com.twitter.internal.network.h;
import com.twitter.internal.network.i;
import com.twitter.library.util.aq;
import com.twitter.util.aj;
import com.twitter.util.n;
import com.twitter.util.z;
import defpackage.cfb;
import java.io.UnsupportedEncodingException;
import java.net.URI;
import java.net.URISyntaxException;
import java.util.List;
import java.util.Map;
import org.apache.http.HttpEntity;
import org.apache.http.entity.StringEntity;
import org.apache.http.message.BasicNameValuePair;

/* compiled from: Twttr */
public final class j {
    private static Map<String, String> a;
    private static g b;
    private static g c;
    private static boolean d;
    private final Context e;
    private URI f;
    private RequestMethod g;
    private boolean h;
    private boolean i;
    private boolean j;
    private HttpEntity k;
    private i l;
    private a m;
    private c n;
    private d o;
    private int p;
    private boolean q;
    private boolean r;
    private z<Double> s;

    static {
        a = null;
        d = false;
    }

    public j(Context context, URI uri) {
        boolean z = true;
        this.g = RequestMethod.GET;
        this.i = true;
        this.j = true;
        this.k = null;
        this.l = null;
        this.m = null;
        this.q = true;
        this.r = false;
        this.e = context.getApplicationContext();
        this.f = uri;
        if (d) {
            if (f.a().b()) {
                z = false;
            }
            this.h = z;
            return;
        }
        this.h = false;
    }

    public j(Context context, CharSequence charSequence) {
        this(context, n.a(charSequence.toString()));
    }

    public j a(RequestMethod requestMethod) {
        this.g = requestMethod;
        return this;
    }

    public j a(a aVar) {
        this.m = aVar;
        return this;
    }

    public j b(a aVar) {
        if (!(aVar == null || aVar.a() == null)) {
            this.m = aVar;
        }
        return this;
    }

    public j a(String str) {
        if (AppConfig.m().a()) {
            a(str, "Cannot force polling without a reason");
        }
        this.h = true;
        return this;
    }

    public j b(String str) {
        if (AppConfig.m().a()) {
            a(str, "Cannot force non-polling without a reason");
        }
        this.h = false;
        return this;
    }

    static void a(String str, String str2) {
        if (aj.a((CharSequence) str)) {
            throw new IllegalArgumentException(str2);
        }
    }

    public j a(HttpEntity httpEntity) {
        this.k = httpEntity;
        return this;
    }

    public j a(List<BasicNameValuePair> list) {
        if (!(list == null || list.isEmpty())) {
            try {
                String a = aq.a((List) list);
                if (a != null) {
                    this.k = new StringEntity(a, "UTF-8");
                    ((StringEntity) this.k).setContentType("application/x-www-form-urlencoded");
                }
            } catch (UnsupportedEncodingException e) {
            }
        }
        return this;
    }

    public j a(i iVar) {
        this.l = iVar;
        return this;
    }

    public j a(d dVar) {
        this.o = dVar;
        return this;
    }

    public j a(long j) {
        return a(j, new d(false, null));
    }

    public j a(long j, c cVar) {
        this.n = new i(j, cVar, this.e);
        return this;
    }

    public j a(int i) {
        this.p = i;
        return this;
    }

    public j a(boolean z) {
        this.q = z;
        return this;
    }

    public j a(z<Double> zVar) {
        this.s = zVar;
        return this;
    }

    public j b(boolean z) {
        this.r = z;
        return this;
    }

    public HttpOperation a() {
        HttpOperation d = d();
        d.a(this.s);
        if (this.i) {
            an a = an.a(this.e);
            if (this.h) {
                a.c(d);
            } else {
                a.b(d);
            }
        }
        if (this.j) {
            d.a("cache-control", "no-store");
        }
        if (this.k != null) {
            if (this.g.a()) {
                d.a(this.k);
            } else {
                throw new IllegalArgumentException("The RequestMethod " + this.g + " does not allow a request entity.");
            }
        }
        if (cfb.a()) {
            d.a(new h());
        }
        if (f()) {
            d.a(new aa(this.m));
        }
        d.a(new com.twitter.library.network.narc.d(this.o));
        if (AppConfig.m().p()) {
            d.a(this.q);
        }
        if (this.n != null) {
            d.a(this.n);
        } else {
            d.a(new i(this.e));
        }
        d.b(this.r);
        return d;
    }

    public static void a(Map<String, String> map) {
        a = map;
    }

    private HttpOperation d() {
        g e = e();
        try {
            this.f = a(this.f);
            HttpOperation a = e.a(this.g, this.f).a(this.g, this.f, this.l);
            if (this.p <= 0) {
                return a;
            }
            a.a(this.p);
            return a;
        } catch (Exception e2) {
            cfb.a("HttpOperation", "[" + this.f + "] Failed to rewrite host", e2);
            return e.a(this.g, this.f, this.l).a(e2);
        }
    }

    private static synchronized g e() {
        g gVar;
        synchronized (j.class) {
            if (b == null) {
                throw new IllegalStateException("A default HttpOperationClientFactory must be set before building a HttpOperation");
            }
            gVar = b;
        }
        return gVar;
    }

    public static synchronized g b() {
        g gVar;
        synchronized (j.class) {
            gVar = c;
        }
        return gVar;
    }

    private URI a(URI uri) throws URISyntaxException {
        if (a == null) {
            return uri;
        }
        String str = (String) a.get(uri.getHost());
        if (str != null) {
            return n.a(uri, str);
        }
        return uri;
    }

    private boolean f() {
        return this.m != null;
    }

    public static synchronized void a(g gVar) {
        synchronized (j.class) {
            b(b);
            b = gVar;
            if (cfb.a()) {
                String str = null;
                if (gVar != null) {
                    str = gVar.getClass().getName();
                }
                cfb.b("HttpOperation", "Default HttpOperationClientFactory set to " + str);
            }
        }
    }

    public static synchronized void c(boolean z) {
        synchronized (j.class) {
            d = z;
        }
    }

    public static synchronized boolean c() {
        boolean z;
        synchronized (j.class) {
            z = d;
        }
        return z;
    }

    private static synchronized void b(g gVar) {
        synchronized (j.class) {
            if (gVar != null) {
                new k(gVar).execute(new Void[0]);
            }
        }
    }

    public j d(boolean z) {
        this.i = z;
        return this;
    }

    public j e(boolean z) {
        this.j = z;
        return this;
    }
}
