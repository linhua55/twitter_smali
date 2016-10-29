package com.google.android.gms.measurement.internal;

import android.content.SharedPreferences.Editor;
import android.support.annotation.WorkerThread;
import com.google.android.gms.common.internal.bm;

public final class bq {
    final /* synthetic */ bn a;
    private final String b;
    private final long c;
    private boolean d;
    private long e;

    public bq(bn bnVar, String str, long j) {
        this.a = bnVar;
        bm.a(str);
        this.b = str;
        this.c = j;
    }

    @WorkerThread
    private void b() {
        if (!this.d) {
            this.d = true;
            this.e = this.a.o.getLong(this.b, this.c);
        }
    }

    @WorkerThread
    public long a() {
        b();
        return this.e;
    }

    @WorkerThread
    public void a(long j) {
        Editor edit = this.a.o.edit();
        edit.putLong(this.b, j);
        edit.apply();
        this.e = j;
    }
}
