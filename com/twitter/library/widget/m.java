package com.twitter.library.widget;

import android.graphics.Bitmap;
import android.view.View;
import cra;
import defpackage.ceb;

/* compiled from: Twttr */
class m implements cra {
    final /* synthetic */ InlineActionBar a;
    private final InlineActionView b;
    private final ceb c;
    private final boolean d;
    private final long e;
    private int f;
    private int g;

    private m(InlineActionBar inlineActionBar, ceb ceb, boolean z) {
        this.a = inlineActionBar;
        this.c = ceb;
        this.b = InlineActionBar.c(ceb);
        this.d = z;
        this.e = inlineActionBar.m.H;
    }

    public void a(Bitmap bitmap) {
        b(bitmap);
    }

    public void a() {
        this.f = this.b.getTextView().getVisibility();
        this.g = this.b.getIconView().getVisibility();
        if (this.f == 0) {
            this.b.getTextView().setVisibility(4);
        }
        if (this.g == 0) {
            this.b.getIconView().setVisibility(4);
        }
    }

    public void b() {
        d();
        if (this.d && this.a.t != null && e()) {
            this.a.t.a(this.c.a());
        }
    }

    public void c() {
        d();
    }

    private void d() {
        b(null);
        this.b.a();
        if (this.f == 0) {
            this.b.getTextView().setVisibility(this.f);
        }
        if (this.g == 0) {
            this.b.getIconView().setVisibility(this.g);
        }
    }

    private void b(Bitmap bitmap) {
        this.a.e = bitmap;
        ((View) this.a.getParent()).invalidate();
    }

    private boolean e() {
        return this.a.m != null && this.a.m.H == this.e;
    }
}
