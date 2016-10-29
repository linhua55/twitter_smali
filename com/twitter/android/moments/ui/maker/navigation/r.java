package com.twitter.android.moments.ui.maker.navigation;

import android.view.View;
import android.view.View.OnClickListener;

/* compiled from: Twttr */
public class r implements OnClickListener {
    private final s a;
    private final t b;
    private boolean c;

    public static r a(View view, l lVar) {
        return new r(s.a(view), lVar);
    }

    public r(s sVar, t tVar) {
        this.c = false;
        this.b = tVar;
        this.a = sVar;
        this.a.a((OnClickListener) this);
        a();
    }

    public void onClick(View view) {
        if (this.c) {
            this.b.a();
        } else {
            this.b.a(NavigationKey.GRID);
        }
        this.c = !this.c;
        a();
    }

    private void a() {
        if (this.c) {
            c();
        } else {
            b();
        }
    }

    private void b() {
        this.a.a(2130839455, 2131364326);
        this.a.a();
    }

    private void c() {
        this.a.a(2130839454, 2131362565);
        this.a.b();
    }
}
