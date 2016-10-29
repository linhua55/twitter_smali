package com.twitter.android.events;

import android.view.View;
import android.widget.AbsListView;

/* compiled from: Twttr */
public class d {
    private int a;
    private int b;
    private int c;
    private int d;
    private int e;
    private int f;

    public d() {
        this.a = 0;
        this.b = -1;
        this.c = 0;
        this.d = 0;
        this.e = -1;
        this.f = 0;
    }

    protected void a(AbsListView absListView, int i, boolean z, int i2) {
        int i3 = 0;
        View childAt = absListView.getChildAt(0);
        if (childAt != null) {
            if (this.e != -1) {
                if (this.e < i) {
                    i3 = (-(this.d + this.f)) + childAt.getTop();
                } else if (i < this.e) {
                    i3 = (childAt.getHeight() + childAt.getTop()) - this.f;
                } else {
                    i3 = childAt.getTop() - this.f;
                }
            }
            this.c = i3;
            this.e = i;
            this.f = childAt.getTop();
            this.d = childAt.getHeight();
        }
        this.b = i2;
    }

    protected void a(int i) {
        this.a = i;
    }

    protected int a() {
        return this.c;
    }

    protected int b() {
        return this.e;
    }

    protected int c() {
        return this.f;
    }

    protected void d() {
        this.c = 0;
    }

    protected int e() {
        return this.a;
    }

    protected int f() {
        return this.b;
    }

    protected void b(int i) {
        this.a = i;
    }
}
