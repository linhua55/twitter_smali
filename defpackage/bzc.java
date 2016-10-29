package defpackage;

import android.content.Context;
import android.net.Uri;
import android.os.Bundle;
import cmb;
import com.twitter.internal.network.HttpOperation.RequestMethod;
import com.twitter.library.client.az;
import com.twitter.library.client.bb;
import com.twitter.library.client.bc;
import com.twitter.library.client.bg;
import com.twitter.library.service.x;
import java.util.HashMap;
import java.util.Map.Entry;
import java.util.concurrent.atomic.AtomicInteger;

/* compiled from: Twttr */
/* renamed from: bzc */
class bzc implements byu, bb {
    private static final AtomicInteger a;
    private final Context b;
    private final Uri c;
    private final byv d;
    private final HashMap<Integer, x> e;

    static {
        a = new AtomicInteger(1);
    }

    bzc(Context context, byv byv) {
        this(context, byv, bze.a());
    }

    bzc(Context context, byv byv, String str) {
        this(context, byv, Uri.parse(str));
    }

    bzc(Context context, byv byv, Uri uri) {
        this.b = context.getApplicationContext();
        this.c = uri;
        this.d = byv;
        this.e = new HashMap();
    }

    public synchronized int a(long j, String str, byw byw) {
        return a(j, str, byw, RequestMethod.a);
    }

    public synchronized int b(long j, String str, byw byw) {
        return a(j, str, byw, RequestMethod.b);
    }

    public synchronized void a() {
        for (Entry value : this.e.entrySet()) {
            a((x) value.getValue());
        }
        this.e.clear();
    }

    private int a(long j, String str, byw byw, RequestMethod requestMethod) {
        int incrementAndGet = a.incrementAndGet();
        bzd a = a(this.b, j, byw, bzj.a(Uri.parse(str), this.c), requestMethod);
        this.e.put(Integer.valueOf(incrementAndGet), a);
        a(a, this.b, new bc(incrementAndGet, this));
        return incrementAndGet;
    }

    private void a(x xVar) {
        if (xVar != null) {
            xVar.cancel(false);
        }
    }

    protected bzd a(Context context, long j, byw byw, Uri uri, RequestMethod requestMethod) {
        return new bzd(context, j, byw, uri, requestMethod);
    }

    protected void a(bzd bzd, Context context, bc bcVar) {
        az.a(context).a(bzd, bcVar);
    }

    public synchronized void a(int i, x xVar) {
    }

    public synchronized void a(int i, Bundle bundle, x xVar) {
    }

    public synchronized void b(int i, x xVar) {
        this.e.remove(Integer.valueOf(i));
        bzd bzd = (bzd) xVar;
        if (bzd.a(bg.a().c())) {
            cmb e = bzd.e();
            if (!xVar.U() || e == null) {
                this.d.a(bzd.b(), i);
            } else {
                this.d.a(bzd.b(), i, e);
            }
        }
    }
}
