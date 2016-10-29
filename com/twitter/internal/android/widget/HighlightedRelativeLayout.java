package com.twitter.internal.android.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.RelativeLayout;

/* compiled from: Twttr */
public class HighlightedRelativeLayout extends RelativeLayout implements p {
    private boolean b;

    public HighlightedRelativeLayout(Context context) {
        super(context);
    }

    public HighlightedRelativeLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public HighlightedRelativeLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
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
