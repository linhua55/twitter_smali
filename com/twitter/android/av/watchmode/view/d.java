package com.twitter.android.av.watchmode.view;

import android.view.View;

/* compiled from: Twttr */
public class d {
    private final View a;

    public d(View view) {
        this.a = view;
    }

    public void a() {
        com.twitter.util.d.b(this.a);
    }

    public void b() {
        com.twitter.util.d.a(this.a);
    }

    public void a(float f, int i) {
        if (i > 0) {
            com.twitter.util.d.b(this.a, f, i, null);
        } else {
            this.a.setAlpha(f);
        }
    }
}
