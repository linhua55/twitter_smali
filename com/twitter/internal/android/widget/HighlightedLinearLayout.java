package com.twitter.internal.android.widget;

import android.content.Context;
import android.widget.LinearLayout;

/* compiled from: Twttr */
public class HighlightedLinearLayout extends LinearLayout implements p {
    private boolean b;

    public HighlightedLinearLayout(Context context) {
        super(context);
    }

    public void setHighlighted(boolean z) {
        if (z != this.b) {
            this.b = z;
            refreshDrawableState();
            invalidate();
        }
    }

    protected int[] onCreateDrawableState(int i) {
        int[] onCreateDrawableState = super.onCreateDrawableState(a.length + i);
        if (this.b) {
            mergeDrawableStates(onCreateDrawableState, a);
        }
        return onCreateDrawableState;
    }
}
