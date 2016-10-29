package com.twitter.library.revenue;

import bbu;
import cni;
import com.twitter.internal.network.cache.LruCache;
import com.twitter.library.api.PromotedEvent;
import defpackage.cbp;

/* compiled from: Twttr */
public class QualifiedDwellTracker {
    private static final QualifiedDwellTracker a;
    private final LruCache<String, Status> b;

    /* compiled from: Twttr */
    enum Status {
        LONG_DWELL_RECEIVED,
        FULLY_VISIBLE_RECEIVED,
        RECORDED
    }

    static {
        a = new QualifiedDwellTracker();
    }

    private QualifiedDwellTracker() {
        this.b = new LruCache(31);
    }

    public static QualifiedDwellTracker a() {
        return a;
    }

    public boolean a(float f) {
        return Math.abs(1.0f - f) < 1.0E-5f;
    }

    public Status a(String str) {
        if (str != null) {
            return (Status) this.b.get(str);
        }
        return null;
    }

    public void a(cni cni) {
        a(cni, Status.LONG_DWELL_RECEIVED);
    }

    public void b(cni cni) {
        a(cni, Status.FULLY_VISIBLE_RECEIVED);
    }

    private void a(String str, Status status) {
        if (str != null) {
            this.b.put(str, status);
        }
    }

    private void a(cni cni, Status status) {
        Status a = a(cni.c);
        if (Status.RECORDED != a) {
            if ((Status.LONG_DWELL_RECEIVED == a && Status.FULLY_VISIBLE_RECEIVED == status) || (Status.FULLY_VISIBLE_RECEIVED == a && Status.LONG_DWELL_RECEIVED == status)) {
                bbu.a(cbp.a(PromotedEvent.at, cni).a());
                a(cni.c, Status.RECORDED);
            } else if (a == null) {
                a(cni.c, status);
            }
        }
    }
}
