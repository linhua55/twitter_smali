package com.twitter.internal.android.widget;

import android.graphics.Rect;
import android.support.v7.widget.RecyclerView;
import android.support.v7.widget.RecyclerView.ItemDecoration;
import android.support.v7.widget.RecyclerView.State;
import android.view.View;

/* compiled from: Twttr */
public class aa extends ItemDecoration {
    private int a;
    private int b;
    private int c;
    private int d;

    public aa() {
        this(0);
    }

    public aa(int i) {
        this(i, i);
    }

    public aa(int i, int i2) {
        this(i, i, i2, i2);
    }

    public aa(int i, int i2, int i3, int i4) {
        a(i, i2, i3, i4);
    }

    public void a(int i, int i2, int i3, int i4) {
        this.a = i;
        this.b = i2;
        this.c = i3;
        this.d = i4;
    }

    public void getItemOffsets(Rect rect, View view, RecyclerView recyclerView, State state) {
        rect.set(this.a, this.c, this.b, this.d);
    }
}
