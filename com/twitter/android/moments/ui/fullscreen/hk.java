package com.twitter.android.moments.ui.fullscreen;

import ahk;
import com.twitter.android.card.a;
import com.twitter.model.moments.x;

/* compiled from: Twttr */
public class hk implements fe {
    private final ahk a;
    private final a b;
    private final x c;

    public hk(ahk ahk, a aVar, x xVar) {
        this.a = ahk;
        this.b = aVar;
        this.c = xVar;
    }

    public void a() {
        if (this.c != null) {
            this.a.a(this.c, new hl(this));
        }
    }

    public void b() {
    }
}
