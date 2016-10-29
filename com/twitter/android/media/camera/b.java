package com.twitter.android.media.camera;

import android.content.Context;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import com.twitter.media.ui.image.h;

/* compiled from: Twttr */
public abstract class b implements h {
    public final int a;
    protected final Context b;
    protected final m c;
    protected final c d;

    public abstract void a();

    public abstract void a(int i);

    public abstract boolean a(KeyEvent keyEvent);

    public abstract boolean a(View view, MotionEvent motionEvent);

    public abstract void b();

    public abstract void c();

    protected b(Context context, m mVar, c cVar, int i) {
        this.b = context;
        this.c = mVar;
        this.d = cVar;
        this.a = i;
    }

    public void b(int i) {
    }

    public boolean d() {
        return false;
    }

    public void aG_() {
    }

    public void f() {
    }
}
