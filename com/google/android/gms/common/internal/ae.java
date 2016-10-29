package com.google.android.gms.common.internal;

import android.util.Log;

public abstract class ae<TListener> {
    private TListener a;
    private boolean b;
    final /* synthetic */ ab d;

    public ae(ab abVar, TListener tListener) {
        this.d = abVar;
        this.a = tListener;
        this.b = false;
    }

    protected abstract void a(TListener tListener);

    protected abstract void b();

    public void c() {
        synchronized (this) {
            Object obj = this.a;
            if (this.b) {
                Log.w("GmsClient", "Callback proxy " + this + " being reused. This is not safe.");
            }
        }
        if (obj != null) {
            try {
                a(obj);
            } catch (RuntimeException e) {
                b();
                throw e;
            }
        }
        b();
        synchronized (this) {
            this.b = true;
        }
        d();
    }

    public void d() {
        e();
        synchronized (this.d.s) {
            this.d.s.remove(this);
        }
    }

    public void e() {
        synchronized (this) {
            this.a = null;
        }
    }
}
