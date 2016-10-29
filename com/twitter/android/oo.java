package com.twitter.android;

import android.view.View;
import com.twitter.library.widget.SlidingPanel;
import com.twitter.library.widget.ae;

/* compiled from: Twttr */
class oo extends ae {
    private final SlidingPanel a;
    private final op b;

    oo(SlidingPanel slidingPanel, op opVar) {
        this.a = slidingPanel;
        this.b = opVar;
    }

    public void b(View view) {
        this.b.a(true);
        this.a.a(2);
    }

    public void c(View view) {
        this.b.a(false);
    }
}
