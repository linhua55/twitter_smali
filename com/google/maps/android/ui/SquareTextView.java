package com.google.maps.android.ui;

import android.content.Context;
import android.graphics.Canvas;
import android.util.AttributeSet;
import android.widget.TextView;

/* compiled from: Twttr */
public class SquareTextView extends TextView {
    private int a;
    private int b;

    public SquareTextView(Context context) {
        super(context);
        this.a = 0;
        this.b = 0;
    }

    public SquareTextView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.a = 0;
        this.b = 0;
    }

    public SquareTextView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.a = 0;
        this.b = 0;
    }

    protected void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        int measuredWidth = getMeasuredWidth();
        int measuredHeight = getMeasuredHeight();
        int max = Math.max(measuredWidth, measuredHeight);
        if (measuredWidth > measuredHeight) {
            this.a = measuredWidth - measuredHeight;
            this.b = 0;
        } else {
            this.a = 0;
            this.b = measuredHeight - measuredWidth;
        }
        setMeasuredDimension(max, max);
    }

    public void draw(Canvas canvas) {
        canvas.translate((float) (this.b / 2), (float) (this.a / 2));
        super.draw(canvas);
    }
}
