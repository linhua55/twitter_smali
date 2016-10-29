package com.twitter.ui.widget;

import android.graphics.Rect;
import android.graphics.RectF;

/* compiled from: Twttr */
public class aj {
    final /* synthetic */ TouchableView a;
    private final long b;
    private final long c;
    private final int[] d;
    private Rect e;
    private RectF f;
    private Runnable g;
    private Runnable h;
    private final Runnable i;

    public aj(TouchableView touchableView, long j, long j2, Runnable runnable, int[] iArr) {
        this.a = touchableView;
        this.b = j;
        this.c = j2;
        this.i = runnable;
        this.d = iArr;
    }

    public void a(Rect rect) {
        this.e = rect;
    }

    public boolean a(int i, int i2) {
        return (this.e != null && this.e.contains(i, i2)) || (this.f != null && this.f.contains((float) i, (float) i2));
    }

    public void a() {
        TouchableView.a(this.a, this.b);
    }

    public boolean b() {
        return (this.a.b & this.c) != 0;
    }

    public boolean c() {
        return (this.a.b & this.b) != 0;
    }

    public Runnable d() {
        if (this.g == null) {
            this.g = new ak(this);
        }
        return this.g;
    }

    public Runnable e() {
        if (this.h == null) {
            this.h = new al(this);
        }
        return this.h;
    }

    public Runnable f() {
        return this.i;
    }

    public void a(boolean z) {
        if (b() != z) {
            if (z) {
                TouchableView.b(this.a, this.b ^ -1);
                TouchableView.a(this.a, this.c);
            } else {
                TouchableView.b(this.a, this.c ^ -1);
            }
            this.a.refreshDrawableState();
            this.a.invalidate();
        }
    }

    public void g() {
        this.i.run();
    }

    public void h() {
        if (this.g != null) {
            TouchableView.b(this.a, this.b ^ -1);
            this.a.removeCallbacks(this.g);
        }
    }

    public void i() {
        if (this.h != null) {
            this.a.removeCallbacks(this.h);
        }
    }

    public void a(int[] iArr) {
        TouchableView.mergeDrawableStates(iArr, this.d);
    }
}
