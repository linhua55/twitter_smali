package com.twitter.android.moments.ui.maker.navigation;

import android.view.View;
import rx.subjects.a;
import rx.w;

/* compiled from: Twttr */
public class f implements x {
    private final View a;
    private final a<Void> b;
    private final View c;

    public static x a(v vVar) {
        u uVar = vVar.a;
        return new f(uVar == null ? null : uVar.a(), vVar.b.a());
    }

    public f(View view, View view2) {
        this.c = view;
        this.a = view2;
        this.b = a.q();
    }

    public w<Void> a() {
        b();
        c();
        return this.b.b();
    }

    private void b() {
        if (this.c != null) {
            this.c.animate().alpha(0.0f).setListener(new g(this)).start();
        }
    }

    private void c() {
        this.a.animate().alpha(1.0f).setListener(new h(this)).start();
    }
}
