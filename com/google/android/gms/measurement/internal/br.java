package com.google.android.gms.measurement.internal;

import android.content.SharedPreferences.Editor;
import android.support.annotation.WorkerThread;
import android.util.Pair;
import com.google.android.exoplayer.extractor.ts.PtsTimestampAdjuster;
import com.google.android.gms.common.internal.bm;

public final class br {
    final String a;
    final /* synthetic */ bn b;
    private final String c;
    private final String d;
    private final long e;

    private br(bn bnVar, String str, long j) {
        this.b = bnVar;
        bm.a(str);
        bm.b(j > 0);
        this.a = str + ":start";
        this.c = str + ":count";
        this.d = str + ":value";
        this.e = j;
    }

    @WorkerThread
    private void b() {
        this.b.f();
        long a = this.b.l().a();
        Editor edit = this.b.o.edit();
        edit.remove(this.c);
        edit.remove(this.d);
        edit.putLong(this.a, a);
        edit.apply();
    }

    @WorkerThread
    private long c() {
        this.b.f();
        long d = d();
        if (d != 0) {
            return Math.abs(d - this.b.l().a());
        }
        b();
        return 0;
    }

    @WorkerThread
    private long d() {
        return this.b.y().getLong(this.a, 0);
    }

    @WorkerThread
    public Pair<String, Long> a() {
        this.b.f();
        long c = c();
        if (c < this.e) {
            return null;
        }
        if (c > this.e * 2) {
            b();
            return null;
        }
        String string = this.b.y().getString(this.d, null);
        c = this.b.y().getLong(this.c, 0);
        b();
        return (string == null || c <= 0) ? bn.a : new Pair(string, Long.valueOf(c));
    }

    @WorkerThread
    public void a(String str) {
        a(str, 1);
    }

    @WorkerThread
    public void a(String str, long j) {
        this.b.f();
        if (d() == 0) {
            b();
        }
        if (str == null) {
            str = TtmlNode.ANONYMOUS_REGION_ID;
        }
        long j2 = this.b.o.getLong(this.c, 0);
        if (j2 <= 0) {
            Editor edit = this.b.o.edit();
            edit.putString(this.d, str);
            edit.putLong(this.c, j);
            edit.apply();
            return;
        }
        Object obj = (this.b.s.nextLong() & PtsTimestampAdjuster.DO_NOT_OFFSET) < (PtsTimestampAdjuster.DO_NOT_OFFSET / (j2 + j)) * j ? 1 : null;
        Editor edit2 = this.b.o.edit();
        if (obj != null) {
            edit2.putString(this.d, str);
        }
        edit2.putLong(this.c, j2 + j);
        edit2.apply();
    }
}
