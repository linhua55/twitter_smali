package com.google.android.gms.internal;

import android.app.Activity;
import android.view.ViewTreeObserver.OnGlobalLayoutListener;
import android.view.ViewTreeObserver.OnScrollChangedListener;
import com.google.android.gms.ads.internal.ar;

@oi
public final class sf {
    private Activity a;
    private boolean b;
    private boolean c;
    private boolean d;
    private OnGlobalLayoutListener e;
    private OnScrollChangedListener f;

    public sf(Activity activity, OnGlobalLayoutListener onGlobalLayoutListener, OnScrollChangedListener onScrollChangedListener) {
        this.a = activity;
        this.e = onGlobalLayoutListener;
        this.f = onScrollChangedListener;
    }

    private void e() {
        if (this.a != null && !this.b) {
            if (this.e != null) {
                ar.e().a(this.a, this.e);
            }
            if (this.f != null) {
                ar.e().a(this.a, this.f);
            }
            this.b = true;
        }
    }

    private void f() {
        if (this.a != null && this.b) {
            if (this.e != null) {
                ar.g().a(this.a, this.e);
            }
            if (this.f != null) {
                ar.e().b(this.a, this.f);
            }
            this.b = false;
        }
    }

    public void a() {
        this.d = true;
        if (this.c) {
            e();
        }
    }

    public void a(Activity activity) {
        this.a = activity;
    }

    public void b() {
        this.d = false;
        f();
    }

    public void c() {
        this.c = true;
        if (this.d) {
            e();
        }
    }

    public void d() {
        this.c = false;
        f();
    }
}
