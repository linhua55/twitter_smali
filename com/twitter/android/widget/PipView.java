package com.twitter.android.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.util.AttributeSet;
import android.view.View;
import android.view.View.MeasureSpec;
import com.google.android.exoplayer.C;
import com.twitter.android.mx;

/* compiled from: Twttr */
public class PipView extends View {
    private final int a;
    private final int b;
    private final Paint c;
    private final int d;
    private final int e;
    private int f;
    private int g;

    public PipView(Context context) {
        super(context);
        this.a = 3;
        this.b = 2;
        this.d = -1;
        this.e = -16776961;
        this.f = 0;
        this.c = new Paint(1);
    }

    public PipView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 2130772058);
    }

    public PipView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, mx.PipView, i, 0);
        this.a = obtainStyledAttributes.getDimensionPixelSize(1, 3);
        this.b = obtainStyledAttributes.getDimensionPixelSize(2, 2);
        this.d = obtainStyledAttributes.getColor(3, -1);
        this.e = obtainStyledAttributes.getColor(4, -16776961);
        boolean z = obtainStyledAttributes.getBoolean(6, false);
        int color = obtainStyledAttributes.getColor(5, -7829368);
        this.f = obtainStyledAttributes.getInt(0, 0);
        obtainStyledAttributes.recycle();
        this.g = -1;
        this.c = new Paint(1);
        if (z) {
            this.c.setShadowLayer(1.0f, 0.0f, 1.0f, color);
        }
    }

    public void setPipCount(int i) {
        this.f = i;
        if (this.g >= i) {
            this.g = -1;
        }
        invalidate();
    }

    public int getPipCount() {
        return this.f;
    }

    public void setPipOnPosition(int i) {
        if (i <= this.f && i >= 0 && i != this.g) {
            this.g = i;
            invalidate();
        }
    }

    public int getPipOnPosition() {
        return this.g;
    }

    protected void onMeasure(int i, int i2) {
        int i3 = (this.a + this.b) * 2;
        super.onMeasure(MeasureSpec.makeMeasureSpec(((this.f * i3) + getPaddingLeft()) + getPaddingRight(), C.ENCODING_PCM_32BIT), MeasureSpec.makeMeasureSpec((i3 + getPaddingTop()) + getPaddingBottom(), C.ENCODING_PCM_32BIT));
    }

    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        int paddingLeft = getPaddingLeft();
        int i = this.a;
        int i2 = i + this.b;
        int i3 = this.g;
        int paddingTop = getPaddingTop() + i2;
        Paint paint = this.c;
        paint.setColor(this.d);
        for (int i4 = 0; i4 < this.f; i4++) {
            if (i4 != i3) {
                canvas.drawCircle((float) ((((i4 * 2) + 1) * i2) + paddingLeft), (float) paddingTop, (float) i, paint);
            }
        }
        if (i3 != -1) {
            paint.setColor(this.e);
            canvas.drawCircle((float) ((((i3 * 2) + 1) * i2) + paddingLeft), (float) paddingTop, (float) i, paint);
        }
    }
}
