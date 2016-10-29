package com.twitter.internal.android.widget;

import android.view.View;
import android.widget.ListAdapter;

/* compiled from: Twttr */
class w implements Runnable {
    public int a;
    final /* synthetic */ HorizontalListView b;
    private int c;

    w(HorizontalListView horizontalListView) {
        this.b = horizontalListView;
    }

    public void a() {
        this.c = HorizontalListView.f(this.b);
    }

    public boolean b() {
        return this.b.hasWindowFocus() && HorizontalListView.g(this.b) == this.c;
    }

    public void run() {
        if (!this.b.e) {
            ListAdapter listAdapter = this.b.c;
            int i = this.a;
            if (listAdapter != null && this.b.d > 0 && i != -1 && i < listAdapter.getCount() && b()) {
                View childAt = this.b.getChildAt(i - HorizontalListView.c(this.b));
                if (childAt != null) {
                    this.b.performItemClick(childAt, i, listAdapter.getItemId(i));
                }
            }
        }
    }
}
