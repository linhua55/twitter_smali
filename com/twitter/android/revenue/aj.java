package com.twitter.android.revenue;

import android.content.Context;
import android.graphics.Rect;
import android.os.Handler;
import android.os.Looper;
import android.view.View;
import android.widget.AbsListView;
import cbo;
import cbs;
import com.twitter.android.vt;
import com.twitter.app.common.list.p;
import com.twitter.library.client.az;
import com.twitter.library.client.bg;
import com.twitter.library.revenue.QualifiedDwellTracker;
import com.twitter.model.core.Tweet;
import defpackage.cbp;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;

/* compiled from: Twttr */
public class aj implements p {
    private static final Map<String, String> a;
    private final cbo<cbp> b;
    private final Handler c;
    private final Map<Long, Runnable> d;
    private final Set<Long> e;
    private final Rect f;
    private final long g;
    private final float h;
    private final boolean i;
    private final boolean j;
    private final QualifiedDwellTracker k;

    static {
        a = new ViewDwellTimeMonitor$1();
    }

    public aj(cbo<cbp> cbo_cbp, float f, double d, boolean z, boolean z2) {
        this(cbo_cbp, new Handler(Looper.getMainLooper()), f, d, z, z2);
    }

    public aj(cbo<cbp> cbo_cbp, Handler handler, float f, double d, boolean z, boolean z2) {
        this.d = new HashMap();
        this.e = new HashSet();
        this.f = new Rect();
        this.k = QualifiedDwellTracker.a();
        this.b = cbo_cbp;
        this.c = handler;
        this.g = d > 0.0d ? (long) (1000.0d * d) : 10;
        if (!a(f)) {
            f = 0.5f;
        }
        this.h = f;
        this.i = z;
        this.j = z2;
    }

    private static boolean a(float f) {
        return f >= 0.0f && f <= 1.0f;
    }

    private boolean a(Tweet tweet) {
        return this.i && tweet.h();
    }

    public boolean a(AbsListView absListView, int i, int i2, int i3, boolean z) {
        this.e.clear();
        int min = Math.min(i2, absListView.getChildCount());
        for (int i4 = 0; i4 < min; i4++) {
            View childAt = absListView.getChildAt(i4);
            if (childAt.getTag() instanceof vt) {
                Tweet a = a((vt) childAt.getTag());
                if (!(a == null || !a.q() || a.f == null || a.t())) {
                    Rect rect = this.f;
                    if (childAt.getGlobalVisibleRect(rect)) {
                        float height = ((float) rect.height()) / ((float) childAt.getHeight());
                        boolean z2 = height >= this.h;
                        boolean a2 = a(a);
                        if (z2 && !a2 && !a.containsKey(a.f.c)) {
                            this.e.add(Long.valueOf(a.H));
                            if (!this.d.containsKey(Long.valueOf(a.H))) {
                                a(a.H, new ak(this, a));
                            }
                        } else if (!z2) {
                            a(a.H);
                        }
                        if (this.j && !a2 && this.k.a(height)) {
                            this.k.b(a.f);
                        }
                    }
                }
            }
        }
        c();
        return false;
    }

    public boolean a(AbsListView absListView, int i) {
        return false;
    }

    void a(long j, Runnable runnable) {
        this.d.put(Long.valueOf(j), runnable);
        this.c.postDelayed(runnable, this.g);
    }

    void a(long j) {
        Runnable runnable = (Runnable) this.d.remove(Long.valueOf(j));
        if (runnable != null) {
            this.c.removeCallbacks(runnable);
        }
    }

    private void c() {
        if (this.e.size() != this.d.size()) {
            Set<Long> hashSet = new HashSet();
            for (Long l : this.d.keySet()) {
                if (!this.e.contains(l)) {
                    hashSet.add(l);
                }
            }
            for (Long l2 : hashSet) {
                a(l2.longValue());
            }
        }
    }

    private Tweet a(vt vtVar) {
        return vtVar.d != null ? vtVar.d.getTweet() : null;
    }

    public void a() {
        for (Long longValue : new HashSet(this.d.keySet())) {
            a(longValue.longValue());
        }
        this.d.clear();
    }

    public static aj a(Context context, float f, double d, boolean z, boolean z2) {
        return new aj(new cbs(context, az.a(context), bg.a()), f, d, z, z2);
    }
}
