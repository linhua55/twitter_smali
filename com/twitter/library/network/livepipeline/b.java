package com.twitter.library.network.livepipeline;

import android.content.Context;
import android.os.Bundle;
import cfb;
import com.google.android.exoplayer.DefaultLoadControl;
import com.google.android.exoplayer.util.Util;
import com.google.android.exoplayer.util.extensions.Buffer;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.flags.ModuleDescriptor;
import com.twitter.internal.android.service.AsyncOperation;
import com.twitter.library.client.az;
import com.twitter.library.client.bg;
import com.twitter.library.network.livepipeline.ConnectionManager.Status;
import com.twitter.library.service.aa;
import com.twitter.model.livepipeline.a;
import com.twitter.platform.PlatformContext;
import com.twitter.platform.t;
import com.twitter.util.h;
import com.twitter.util.object.ObjectUtils;
import cym;
import cyw;
import dbd;
import java.lang.ref.WeakReference;
import java.util.Collections;
import java.util.Date;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map.Entry;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.TimeUnit;
import rx.an;
import rx.o;
import rx.subjects.e;

/* compiled from: Twttr */
class b implements ab {
    private static final long a;
    private static final long b;
    private static b c;
    private e<com.twitter.model.livepipeline.e> d;
    private ConnectionManager e;
    private final Set<String> f;
    private final ConcurrentHashMap<String, WeakReference<o<com.twitter.model.livepipeline.e>>> g;
    private final Context h;
    private String i;
    private Long j;
    private Long k;
    private Long l;
    private e<String> m;
    private e<String> n;
    private an o;
    private final t p;
    private final Set<String> q;

    static {
        a = TimeUnit.MINUTES.toMillis(2);
        b = TimeUnit.SECONDS.toMillis(10);
    }

    b(Context context) {
        this(context, null, null);
    }

    private b(Context context, ConnectionManager connectionManager, Long l) {
        if (!(connectionManager == null && l == null)) {
            h.d();
        }
        a(context, connectionManager);
        this.f = Collections.newSetFromMap(new ConcurrentHashMap(16, DefaultLoadControl.DEFAULT_HIGH_BUFFER_LOAD, 2));
        this.g = new ConcurrentHashMap(16, DefaultLoadControl.DEFAULT_HIGH_BUFFER_LOAD, 2);
        this.h = context.getApplicationContext();
        this.m = e.q();
        this.n = e.q();
        ab cVar = new c(this);
        this.m.i(a(Long.valueOf(l != null ? l.longValue() : 100).longValue())).a(new m(this, cVar), new n(this));
        this.n.i(a(Long.valueOf(l != null ? l.longValue() : 1000).longValue())).a(new o(this, cVar), new p(this));
        this.p = PlatformContext.f().a();
        bg.a().a(new q(this));
        this.q = new HashSet(4);
    }

    public static b a(Context context) {
        if (c == null) {
            c = new b(context);
        }
        return c;
    }

    public <T> T a(y yVar) {
        return ObjectUtils.a(b(yVar.a).a(a(yVar.c)));
    }

    public String a() {
        return this.i;
    }

    protected void a(boolean z) {
        this.e.b();
        if (z) {
            this.d.bs_();
            a(this.h, null);
            this.f.clear();
            this.g.clear();
        }
    }

    protected boolean a(AsyncOperation<Bundle, aa> asyncOperation) {
        if (this.f.isEmpty()) {
            cfb.b("LivePipeline", "Not reconnecting because there are no active subscriptions");
        } else if (asyncOperation.l().b() != null && ((aa) asyncOperation.l().b()).b()) {
            return true;
        } else {
            cfb.b("LivePipeline", "Not reconnecting because the previous connection terminated in an unexpected way");
        }
        return false;
    }

    protected boolean a(String str) {
        if (this.e.a() != Status.CONNECTED) {
            cfb.b("LivePipeline", "Abandoning resubscribe because live pipeline is disconnected");
        } else if (str.equals(a())) {
            return true;
        } else {
            cfb.b("LivePipeline", "Abandoning resubscribe because session expired");
        }
        return false;
    }

    protected void a(ae aeVar) {
        if (this.i != null) {
            az.a(this.h).a((ad) ObjectUtils.a(aeVar.a(this.h).a(bg.a().c()).q()));
        }
    }

    protected static cyw<o<String>, o<List<String>>> a(long j) {
        return new r(j);
    }

    private void a(Context context, ConnectionManager connectionManager) {
        this.d = e.q();
        this.d.d(new u(this)).a(a.class).l().c(new s(this));
        this.d.d(new e(this)).a(com.twitter.model.livepipeline.h.class).l().c(new d(this));
        if (connectionManager == null) {
            connectionManager = ConnectionManager.a(this.d, context);
        }
        this.e = connectionManager;
    }

    private o<com.twitter.model.livepipeline.e> b(String str) {
        o<com.twitter.model.livepipeline.e> oVar;
        synchronized (this.g) {
            WeakReference weakReference = (WeakReference) this.g.get(str);
            if (weakReference != null) {
                oVar = (o) weakReference.get();
            } else {
                oVar = null;
            }
            if (oVar == null) {
                oVar = this.d.d(new h(this, str)).b(new g(this, str)).a(new f(this, str)).k().q();
                this.g.put(str, new WeakReference(oVar));
            }
        }
        return oVar;
    }

    private boolean c(String str) {
        boolean z = true;
        synchronized (this) {
            if (this.e.a() == Status.DISCONNECTED) {
                Set hashSet = new HashSet(1);
                hashSet.add(str);
                a(hashSet);
                z = false;
            } else {
                cfb.b("LivePipeline", "Don't need to connect: " + this.e.a());
            }
        }
        return z;
    }

    private void a(Set<String> set) {
        this.e.a(set, new i(this), f());
    }

    private void c() {
        if (this.i != null && this.k != null) {
            cfb.b("LivePipeline", "Scheduling resubscribe after " + this.k + "ms at " + new Date(this.p.a()));
            o.b(this.i).b(this.k.longValue(), TimeUnit.MILLISECONDS).b(dbd.c()).a(new j(this), new k(this));
        }
    }

    private void d(String str) {
        if (this.i != null) {
            this.m.b_(str);
        } else {
            this.q.add(str);
        }
    }

    private void e(String str) {
        if (this.i != null) {
            this.n.b_(str);
        }
    }

    private void d() {
        for (String d : this.f) {
            d(d);
        }
        e();
    }

    private void e() {
        synchronized (this.g) {
            Iterator it = this.g.entrySet().iterator();
            while (it.hasNext()) {
                if (((WeakReference) ((Entry) it.next()).getValue()).get() == null) {
                    it.remove();
                }
            }
        }
    }

    private long f() {
        return this.j != null ? this.j.longValue() : a;
    }

    private static rx.t a(CallbackContext callbackContext) {
        switch (l.a[callbackContext.ordinal()]) {
            case ModuleDescriptor.MODULE_VERSION /*1*/:
                return cym.a();
            case Buffer.FLAG_DECODE_ONLY /*2*/:
                return dbd.a();
            case Util.TYPE_OTHER /*3*/:
                return dbd.d();
            default:
                return dbd.c();
        }
    }
}
