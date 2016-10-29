package com.twitter.android.widget;

import android.graphics.PointF;
import android.view.WindowManager.LayoutParams;
import crg;
import crj;
import java.util.ArrayDeque;
import java.util.Queue;

/* compiled from: Twttr */
public class AnimatableParams extends LayoutParams {
    private final PointF a;
    private final PointF b;
    private final PointF c;
    private final PointF d;
    private final PointF e;
    private final Queue<Object> f;
    private final PointF g;
    private final crg h;

    public AnimatableParams() {
        this.a = new PointF();
        this.b = new PointF();
        this.c = new PointF();
        this.d = new PointF();
        this.e = new PointF();
        this.f = new ArrayDeque();
        this.g = new PointF();
        this.h = new crj();
    }
}
