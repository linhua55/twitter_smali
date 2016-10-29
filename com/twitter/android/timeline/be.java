package com.twitter.android.timeline;

import android.database.Cursor;
import cdc;
import chj;
import com.twitter.model.timeline.aa;
import com.twitter.util.object.ObjectUtils;
import defpackage.cgs;
import defpackage.cgt;

/* compiled from: Twttr */
public class be extends cgt<aw> implements cgs {
    private static final be a;
    private final Cursor b;

    static {
        a = new be(null, null);
    }

    public Cursor a() {
        return this.b;
    }

    public static be b() {
        return a;
    }

    public be(Cursor cursor, chj<aw> chj_com_twitter_android_timeline_aw) {
        super(cursor, chj_com_twitter_android_timeline_aw);
        this.b = cursor;
    }

    public int c() {
        if (this.b != null) {
            return this.b.getPosition();
        }
        return 0;
    }

    public aa d() {
        if (!am.a(this.b)) {
            return null;
        }
        for (int i = 0; i < aU_(); i++) {
            if (a(i, cdc.e, 0) == 14) {
                aw awVar = (aw) a(i);
                if (awVar instanceof bc) {
                    bc bcVar = (bc) ObjectUtils.a(awVar);
                    if (bcVar.a.c == 2) {
                        return bcVar.a;
                    }
                } else {
                    continue;
                }
            }
        }
        return null;
    }

    public aa e() {
        if (!am.a(this.b)) {
            return null;
        }
        for (int aU_ = aU_() - 1; aU_ >= 0; aU_--) {
            if (a(aU_, cdc.e, 0) == 14) {
                aw awVar = (aw) a(aU_);
                if (awVar instanceof bc) {
                    bc bcVar = (bc) ObjectUtils.a(awVar);
                    if (bcVar.a.c == 3) {
                        return bcVar.a;
                    }
                } else {
                    continue;
                }
            }
        }
        return null;
    }

    public boolean e_(int i) {
        return this.b != null && this.b.moveToPosition(i);
    }

    public long b(int i) {
        return a(i, 23, 0);
    }

    public long c(int i) {
        return a(i, 1, 0);
    }

    public long d(int i) {
        if (am.a(this.b)) {
            return a(i, cdc.b, -1);
        }
        return b(i);
    }

    public boolean e(int i) {
        return a(i, 17, 0) == 1;
    }

    public boolean f(int i) {
        return e_(i) && !this.b.isNull(28);
    }

    public int g(int i) {
        return a(i, 19, 0);
    }

    public boolean h(int i) {
        return a(i, 16, 0) != 0;
    }

    public long i(int i) {
        return a(i, cdc.F, 0);
    }

    public long j(int i) {
        return a(i, cdc.G, 0);
    }

    public long k(int i) {
        return a(i, cdc.c, -1);
    }

    public int l(int i) {
        return a(i, cdc.g, 0);
    }

    private long a(int i, int i2, long j) {
        if (this.b == null || !this.b.moveToPosition(i)) {
            return j;
        }
        return this.b.getLong(i2);
    }

    private int a(int i, int i2, int i3) {
        if (this.b == null || !this.b.moveToPosition(i)) {
            return i3;
        }
        return this.b.getInt(i2);
    }
}
