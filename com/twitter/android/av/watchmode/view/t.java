package com.twitter.android.av.watchmode.view;

import android.graphics.Point;
import android.os.Handler;
import android.support.v7.widget.RecyclerView;

/* compiled from: Twttr */
public class t {
    private final Handler a;
    private final RecyclerView b;

    public t(Handler handler, RecyclerView recyclerView) {
        this.a = handler;
        this.b = recyclerView;
    }

    public void a(int i) {
        this.a.post(new u(i, this.b));
    }

    public void a(Point point) {
        this.a.post(new u(point, this.b));
    }
}
