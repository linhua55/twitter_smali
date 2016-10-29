package com.twitter.android.composer;

import android.text.Spannable;

/* compiled from: Twttr */
public class bu {
    private final Spannable a;

    private bu(Spannable spannable) {
        this.a = spannable;
    }

    public int a() {
        return this.a.getSpanStart(this);
    }

    public int b() {
        return this.a.getSpanEnd(this);
    }
}
