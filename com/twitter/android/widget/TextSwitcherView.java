package com.twitter.android.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.TextSwitcher;

/* compiled from: Twttr */
public class TextSwitcherView extends TextSwitcher {
    private Runnable a;

    public TextSwitcherView(Context context) {
        super(context);
    }

    public TextSwitcherView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public void a(Runnable runnable, long j) {
        a();
        this.a = runnable;
        postDelayed(this.a, j);
    }

    public void a() {
        if (this.a != null) {
            removeCallbacks(this.a);
        }
        this.a = null;
    }

    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        a();
    }
}
