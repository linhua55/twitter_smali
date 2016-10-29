package com.twitter.android.widget;

import android.graphics.Rect;
import com.twitter.model.core.e;

/* compiled from: Twttr */
class fs {
    public final int a;
    public Rect b;
    public final String c;
    public final e d;

    fs(int i, int i2, int i3, int i4, int i5, String str, e eVar) {
        this.b = new Rect(i, i2, i3 + 1, i4 + 1);
        if (this.b.isEmpty()) {
            this.b = new Rect(0, 0, 1, 1);
        }
        this.a = i5;
        this.c = str;
        this.d = eVar;
    }

    public boolean a(int i, int i2) {
        return this.b.contains(i, i2);
    }
}
