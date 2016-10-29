package com.twitter.internal.android.widget;

import android.graphics.drawable.Drawable;
import android.graphics.drawable.TransitionDrawable;
import android.view.View;

/* compiled from: Twttr */
final class s implements Runnable {
    final /* synthetic */ HorizontalListView a;

    s(HorizontalListView horizontalListView) {
        this.a = horizontalListView;
    }

    public void run() {
        if (HorizontalListView.a(this.a) == 0) {
            HorizontalListView.a(this.a, 1);
            View childAt = this.a.getChildAt(HorizontalListView.b(this.a) - HorizontalListView.c(this.a));
            if (childAt != null && !childAt.hasFocusable()) {
                if (!this.a.e) {
                    childAt.setPressed(true);
                    this.a.setPressed(true);
                    HorizontalListView.d(this.a);
                    this.a.refreshDrawableState();
                    if (HorizontalListView.e(this.a) != null) {
                        Drawable current = HorizontalListView.e(this.a).getCurrent();
                        if (current != null && (current instanceof TransitionDrawable)) {
                            ((TransitionDrawable) current).resetTransition();
                        }
                    }
                }
                HorizontalListView.a(this.a, 2);
            }
        }
    }
}
