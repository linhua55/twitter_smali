package com.twitter.android.moments.ui.fullscreen;

import afv;
import android.view.View;
import android.view.ViewGroup;
import com.twitter.moments.core.ui.widget.sectionpager.d;

/* compiled from: Twttr */
public class ey implements d {
    private final fl a;
    private ViewGroup b;

    ey(afv afv, fl flVar, dm dmVar) {
        this.a = flVar;
        this.b = afv.a();
        afv.a(new ez(this, dmVar));
        this.a.a(afv.b());
    }

    public void d() {
        this.a.a();
    }

    public void c() {
        this.a.b();
    }

    public void a() {
        this.a.c();
        this.b = null;
    }

    public View e() {
        return this.b;
    }
}
