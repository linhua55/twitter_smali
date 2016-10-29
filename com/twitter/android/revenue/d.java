package com.twitter.android.revenue;

import android.content.Context;
import android.database.Cursor;
import android.os.Handler;
import android.os.Looper;
import android.support.annotation.VisibleForTesting;
import aov;
import bbl;
import bbn;
import com.twitter.library.provider.di;
import com.twitter.util.aj;
import com.twitter.util.al;
import com.twitter.util.collection.CollectionUtils;
import com.twitter.util.collection.MutableList;
import com.twitter.util.collection.MutableMap;
import com.twitter.util.collection.MutableSet;
import ctd;
import cto;
import cuj;
import cvi;
import defpackage.aow;
import java.util.List;
import java.util.Map;
import java.util.PriorityQueue;
import java.util.Set;
import java.util.concurrent.TimeUnit;

/* compiled from: Twttr */
public class d implements aov<Cursor> {
    private static final String e;
    @VisibleForTesting
    volatile boolean a;
    @VisibleForTesting
    final Map<String, a> b;
    @VisibleForTesting
    final Map<String, PriorityQueue<a>> c;
    final Set<a> d;
    private final c f;
    private final Handler g;
    private final j h;
    private final float i;
    private long j;
    private int k;

    static {
        e = null;
    }

    public d(Context context, long j) {
        this(new j(di.a(context, j)));
    }

    @VisibleForTesting
    d(j jVar) {
        this.a = true;
        this.g = new Handler(Looper.getMainLooper());
        this.f = new c();
        this.b = MutableMap.a();
        this.c = MutableMap.a();
        this.d = MutableSet.a();
        this.h = jVar;
        this.i = (float) TimeUnit.SECONDS.toMillis(com.twitter.config.d.a("ad_formats_stale_ads_deduping_timeout", 120));
    }

    public a a(String str) {
        return (a) this.b.get(str);
    }

    public void a(int i) {
        this.k = i;
    }

    public int a() {
        return Math.max(this.k - this.b.size(), 0);
    }

    public long b() {
        return this.j;
    }

    public String b(String str) {
        a a = a(str, true);
        return a != null ? a.f() : null;
    }

    public a c(String str) {
        return a(str, false);
    }

    private a a(String str, boolean z) {
        a aVar = (a) this.b.get(str);
        if (this.d.contains(aVar)) {
            return aVar;
        }
        a aVar2;
        boolean d = aVar != null ? aVar.d() : false;
        PriorityQueue priorityQueue = (PriorityQueue) this.c.get(str);
        PriorityQueue priorityQueue2 = (PriorityQueue) this.c.get(e);
        if (aVar != null && !d) {
            aVar2 = aVar;
        } else if (!CollectionUtils.b(priorityQueue)) {
            aVar2 = z ? (a) priorityQueue.peek() : (a) priorityQueue.poll();
        } else if (!CollectionUtils.b(priorityQueue2)) {
            aVar2 = z ? (a) priorityQueue2.peek() : (a) priorityQueue2.poll();
        } else if (aVar != null) {
            aVar2 = aVar;
        } else {
            bbn.a(new bbl(new Exception("unable_to_fill_ad_slot")).a("unable_to_fill_ad_slot", str).a("ad_slots_total_count", Integer.valueOf(this.k)).a("assigned_ad_slots_count", Integer.valueOf(this.b.size())));
            return null;
        }
        if (!z) {
            if (d && !aVar2.equals(aVar)) {
                this.h.a(aVar.a());
            }
            aVar2.a(str);
            aVar2.a(al.b());
            this.d.add(aVar2);
            this.b.put(str, aVar2);
            this.h.a(aVar2);
        }
        return aVar2;
    }

    public void a(Cursor cursor) {
        if (cursor != null) {
            a(b(cursor));
        }
    }

    @VisibleForTesting
    void a(List<a> list) {
        if (this.a && !CollectionUtils.b(list)) {
            long j = -1;
            for (a aVar : list) {
                j = Math.max(j, aVar.c);
            }
            a(b(a((List) list, j), j), j);
            this.a = false;
        }
    }

    @VisibleForTesting
    List<a> a(List<a> list, long j) {
        List<a> a = MutableList.a(list.size());
        for (a aVar : list) {
            if (aVar.c == j || aj.b(aVar.b()) || aj.b(aVar.d)) {
                a.add(aVar);
            }
        }
        this.h.b(j);
        return a;
    }

    private Iterable<a> b(List<a> list, long j) {
        g gVar = new g(j);
        cuj a = ctd.a(gVar);
        List c = cto.c(cto.a(cto.a(list, a), new f(cto.a(list, gVar), this.i)));
        this.h.a(c, j);
        Iterable a2 = MutableSet.a(list);
        a2.addAll(list);
        a2.removeAll(c);
        return a2;
    }

    private void a(Iterable<a> iterable, long j) {
        this.c.clear();
        this.b.clear();
        for (a aVar : iterable) {
            if (aVar.b() != null) {
                this.b.put(aVar.b(), aVar);
            } else if (aVar.c == j) {
                if (!this.c.containsKey(aVar.d)) {
                    this.c.put(aVar.d, new PriorityQueue());
                }
                ((PriorityQueue) this.c.get(aVar.d)).add(aVar);
            }
        }
    }

    @VisibleForTesting
    List<a> b(Cursor cursor) {
        List<a> a = MutableList.a(cursor.getCount());
        if (cursor.moveToFirst()) {
            do {
                a a2 = this.f.a(cursor);
                if (a2 != null) {
                    a.add(a2);
                }
            } while (cursor.moveToNext());
        }
        return a;
    }

    public void c() {
        this.a = true;
        this.j = al.b();
    }

    public void a(di diVar, aow aow) {
        if (this.a) {
            Cursor a = this.h.a(diVar, aow);
            if (a != null) {
                try {
                    this.g.post(new e(this, b(a)));
                } finally {
                    cvi.a(a);
                }
            }
        }
    }

    public void d(String str) {
        a aVar = (a) this.b.remove(str);
        if (aVar != null) {
            this.h.a(aVar.a());
        }
    }

    public void e(String str) {
        a aVar = (a) this.b.get(str);
        if (aVar != null) {
            this.d.remove(aVar);
            aVar.a(al.b());
            this.h.a(aVar);
        }
    }
}
