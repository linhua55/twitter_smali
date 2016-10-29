package com.twitter.android.widget;

import android.content.Context;
import android.graphics.Canvas;
import android.util.AttributeSet;
import android.widget.FrameLayout;

/* compiled from: Twttr */
public class ObservableFrameLayout extends FrameLayout {
    private df a;
    private boolean b;
    private de c;

    public ObservableFrameLayout(Context context) {
        super(context);
    }

    public ObservableFrameLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public ObservableFrameLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    public void setWindowAttachmentListener(df dfVar) {
        this.a = dfVar;
    }

    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.b = true;
        if (this.a != null) {
            this.a.a();
        }
    }

    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.b = false;
        if (this.a != null) {
            this.a.b();
        }
    }

    protected void dispatchDraw(Canvas canvas) {
        if (this.c != null) {
            this.c.a();
        }
        super.dispatchDraw(canvas);
    }

    public void setOnDrawListener(de deVar) {
        this.c = deVar;
    }
}
