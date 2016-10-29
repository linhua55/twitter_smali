package com.twitter.android.widget;

import android.annotation.TargetApi;
import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;

/* compiled from: Twttr */
public class RevealClipFrameLayout extends ClipCompatFrameLayout {
    public RevealClipFrameLayout(Context context) {
        this(context, null);
    }

    public RevealClipFrameLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public RevealClipFrameLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    @TargetApi(18)
    public void setClipX(int i) {
        int measuredWidth = getMeasuredWidth();
        Rect clipBounds = getClipBounds();
        if (clipBounds == null) {
            clipBounds = new Rect(0, 0, measuredWidth, getMeasuredHeight());
        }
        setClipBounds(new Rect(i / 2, clipBounds.top, measuredWidth - (i / 2), clipBounds.bottom));
    }

    @TargetApi(18)
    public void setClipY(int i) {
        int measuredHeight = getMeasuredHeight();
        Rect clipBounds = getClipBounds();
        if (clipBounds == null) {
            clipBounds = new Rect(0, 0, getMeasuredWidth(), measuredHeight);
        }
        setClipBounds(new Rect(clipBounds.left, i / 2, clipBounds.right, measuredHeight - (i / 2)));
    }
}
