package com.google.android.gms.measurement.internal;

import android.content.SharedPreferences.Editor;
import android.support.annotation.WorkerThread;
import com.google.android.gms.common.internal.bm;

public final class bp {
    final /* synthetic */ bn a;
    private final String b;
    private final boolean c;
    private boolean d;
    private boolean e;

    public bp(bn bnVar, String str, boolean z) {
        this.a = bnVar;
        bm.a(str);
        this.b = str;
        this.c = z;
    }

    @WorkerThread
    private void b() {
        if (!this.d) {
            this.d = true;
            this.e = this.a.o.getBoolean(this.b, this.c);
        }
    }

    @WorkerThread
    public void a(boolean z) {
        Editor edit = this.a.o.edit();
        edit.putBoolean(this.b, z);
        edit.apply();
        this.e = z;
    }

    @WorkerThread
    public boolean a() {
        b();
        return this.e;
    }
}
