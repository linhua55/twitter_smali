package com.twitter.android;

import android.content.Context;
import android.support.v4.util.LruCache;
import com.twitter.library.client.az;
import com.twitter.library.service.x;
import com.twitter.library.service.z;
import com.twitter.model.drafts.d;
import vw;

/* compiled from: Twttr */
public class bp extends z {
    private static bp a;
    private final az b;
    private final LruCache<Long, bq> c;

    public static synchronized bp a(Context context) {
        bp bpVar;
        synchronized (bp.class) {
            if (a == null) {
                a = new bp(context);
            }
            bpVar = a;
        }
        return bpVar;
    }

    public bq a(long j) {
        bq bqVar = (bq) this.c.get(Long.valueOf(j));
        if (bqVar != null) {
            return bqVar;
        }
        bqVar = new bq();
        this.c.put(Long.valueOf(j), bqVar);
        return bqVar;
    }

    private bp(Context context) {
        this.c = new LruCache(100);
        this.b = az.a(context);
        this.b.a(a);
    }

    public void a(x xVar) {
        if (xVar instanceof vw) {
            d f = ((vw) xVar).f();
            if (f != null) {
                long j = f.e;
                if (j > 0) {
                    bq bqVar = (bq) this.c.get(Long.valueOf(j));
                    if (bqVar != null) {
                        bqVar.a = 0;
                        bqVar.b = 0;
                    }
                }
            }
        }
    }

    public static synchronized void a() {
        synchronized (bp.class) {
            if (a != null) {
                a.b.b(a);
                a = null;
            }
        }
    }
}
