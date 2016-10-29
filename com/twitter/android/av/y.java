package com.twitter.android.av;

import android.graphics.Rect;

/* compiled from: Twttr */
public class y extends ab {
    double a() {
        return 0.7d;
    }

    protected float a(Rect rect, Rect rect2) {
        return (float) (rect.bottom - rect2.centerY());
    }

    protected int b() {
        return 1;
    }
}
