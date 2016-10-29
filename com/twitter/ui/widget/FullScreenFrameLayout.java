package com.twitter.ui.widget;

import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.widget.FrameLayout;

/* compiled from: Twttr */
public class FullScreenFrameLayout extends FrameLayout {
    private e a;

    public FullScreenFrameLayout(Context context) {
        super(context);
    }

    public FullScreenFrameLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public FullScreenFrameLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    public void setFitSystemWindowListener(e eVar) {
        this.a = eVar;
    }

    protected boolean fitSystemWindows(Rect rect) {
        boolean fitSystemWindows = super.fitSystemWindows(rect);
        if (this.a != null) {
            this.a.a(rect.left, rect.top, rect.right, rect.bottom);
        }
        return fitSystemWindows;
    }
}
