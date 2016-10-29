package com.twitter.library.av;

import android.content.Context;
import android.os.SystemClock;
import android.support.v4.view.accessibility.AccessibilityNodeInfoCompat;
import com.twitter.model.av.DynamicAdInfo;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;

/* compiled from: Twttr */
public class b implements n {
    private static int a;
    private final l b;
    private int c;
    private long d;
    private final HashMap<Long, Long> e;

    static {
        a = 12;
    }

    public b(Context context) {
        this(l.a(context));
    }

    public b(l lVar) {
        this.c = a;
        this.d = 30000;
        this.e = new HashMap(AccessibilityNodeInfoCompat.ACTION_NEXT_AT_MOVEMENT_GRANULARITY);
        this.b = lVar;
        this.b.a(this);
    }

    public void a() {
        this.b.b(this);
    }

    public void a(ab abVar, int i) {
        if (abVar.e()) {
            SystemClock.elapsedRealtime();
            List linkedList = new LinkedList();
            int a = abVar.a();
            a(this.b.a());
            a(i, abVar, this.e, linkedList);
            for (int i2 = 1; i2 <= this.c; i2++) {
                a(i + i2, abVar, this.e, linkedList);
                a(i - i2, abVar, this.e, linkedList);
            }
            abVar.a(a);
            c();
            this.b.a(linkedList);
        }
    }

    private void a(int i, ab abVar, Map<Long, Long> map, List<a> list) {
        if (i < abVar.f() && i >= 0) {
            abVar.a(i);
            long b = abVar.b();
            if (!a(b) && abVar.d()) {
                list.add(abVar.c());
                map.put(Long.valueOf(b), Long.valueOf(SystemClock.elapsedRealtime()));
            }
        }
    }

    private boolean a(long j) {
        Long l = (Long) this.e.get(Long.valueOf(j));
        return l != null && SystemClock.elapsedRealtime() - l.longValue() < this.d;
    }

    private void c() {
        Iterator it = this.e.entrySet().iterator();
        while (it.hasNext()) {
            if (SystemClock.elapsedRealtime() - ((Long) ((Entry) it.next()).getValue()).longValue() > this.d) {
                it.remove();
            }
        }
    }

    private void a(List<a> list) {
        for (a aVar : list) {
            this.e.remove(Long.valueOf(aVar.a));
        }
    }

    public void bj_() {
        this.e.clear();
    }

    public void a(String str, DynamicAdInfo dynamicAdInfo) {
    }
}
