package com.twitter.android.moments.ui.fullscreen;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.twitter.model.moments.viewmodels.f;
import com.twitter.moments.core.ui.widget.sectionpager.d;
import com.twitter.util.z;

/* compiled from: Twttr */
public class fo implements d, z<f> {
    private final Context a;
    private final f b;
    private final fz c;
    private ViewGroup d;
    private d e;
    private boolean f;

    public fo(Context context, f fVar, fz fzVar) {
        this.a = context;
        this.b = fVar;
        this.c = fzVar;
        this.d = new FrameLayout(this.a);
        this.b.a(this);
    }

    public void d() {
        this.f = true;
        if (this.e != null) {
            this.e.d();
        }
    }

    public void c() {
        this.f = false;
        if (this.e != null) {
            this.e.c();
        }
    }

    public void a() {
        this.d = null;
        this.b.b(this);
        if (this.e != null) {
            this.e.a();
        }
    }

    public View e() {
        return this.d;
    }

    public void a(f fVar) {
        if (!fVar.b()) {
            this.e = this.c.a(this.b);
            if (this.d != null) {
                this.d.addView(this.e.e());
            }
            if (this.f) {
                this.e.d();
            }
        }
        fVar.b(this);
    }

    protected final d f() {
        return this.e;
    }
}
