package com.twitter.android.av;

import android.graphics.Rect;

/* compiled from: Twttr */
public class ac extends ab {
    double a() {
        return 0.5d;
    }

    protected float a(Rect rect, Rect rect2) {
        return (float) (rect2.centerY() - rect.top);
    }

    protected int b() {
        return 1;
    }
}
