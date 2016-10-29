package com.twitter.android.widget;

import android.annotation.TargetApi;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.os.Build.VERSION;
import android.util.AttributeSet;
import android.widget.FrameLayout;
import com.twitter.util.object.ObjectUtils;

/* compiled from: Twttr */
public class ClipCompatFrameLayout extends FrameLayout {
    private Rect a;

    public ClipCompatFrameLayout(Context context) {
        this(context, null);
    }

    public ClipCompatFrameLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public ClipCompatFrameLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    @TargetApi(18)
    public void draw(Canvas canvas) {
        if (this.a != null) {
            canvas.clipRect(this.a);
        }
        super.draw(canvas);
    }

    @TargetApi(18)
    public Rect getClipBounds() {
        if (VERSION.SDK_INT >= 18) {
            return super.getClipBounds();
        }
        return this.a != null ? new Rect(this.a) : null;
    }

    @TargetApi(18)
    public void setClipBounds(Rect rect) {
        if (VERSION.SDK_INT >= 18) {
            super.setClipBounds(rect);
        } else if (!ObjectUtils.a((Object) rect, this.a)) {
            if (rect == null) {
                invalidate();
                this.a = null;
            } else if (this.a == null) {
                invalidate();
                this.a = new Rect(rect);
            } else {
                Rect rect2 = new Rect(this.a);
                rect2.union(rect);
                invalidate(rect2);
                this.a.set(rect);
            }
        }
    }
}
