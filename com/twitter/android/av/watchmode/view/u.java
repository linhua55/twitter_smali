package com.twitter.android.av.watchmode.view;

import android.graphics.Point;
import android.support.v7.widget.RecyclerView;

/* compiled from: Twttr */
public class u implements Runnable {
    private final int a;
    private final Point b;
    private final RecyclerView c;

    public u(int i, RecyclerView recyclerView) {
        this.a = i;
        this.b = null;
        this.c = recyclerView;
    }

    public u(Point point, RecyclerView recyclerView) {
        this.b = point;
        this.a = -1;
        this.c = recyclerView;
    }

    public void run() {
        if (this.b != null) {
            this.c.smoothScrollBy(this.b.x, this.b.y);
        } else {
            this.c.smoothScrollToPosition(this.a);
        }
    }
}
