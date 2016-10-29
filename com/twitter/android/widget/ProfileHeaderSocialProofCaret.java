package com.twitter.android.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Paint.Style;
import android.graphics.Path;
import android.util.AttributeSet;
import android.view.View;
import com.twitter.android.mx;

/* compiled from: Twttr */
public class ProfileHeaderSocialProofCaret extends View {
    private final Paint a;
    private final Paint b;
    private final Path c;
    private final Path d;
    private final int e;
    private final int f;
    private int g;
    private int h;
    private float i;
    private float j;
    private float k;

    public ProfileHeaderSocialProofCaret(Context context) {
        this(context, null);
    }

    public ProfileHeaderSocialProofCaret(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public ProfileHeaderSocialProofCaret(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f = getResources().getDimensionPixelSize(2131690415);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, mx.ProfileHeaderSocialProofCaret, i, 0);
        int color = obtainStyledAttributes.getColor(0, 0);
        int color2 = obtainStyledAttributes.getColor(1, 0);
        this.e = obtainStyledAttributes.getDimensionPixelSize(2, 1);
        this.a = new Paint(1);
        this.a.setStyle(Style.STROKE);
        this.a.setColor(color2);
        this.a.setStrokeWidth((float) this.e);
        this.b = new Paint(1);
        this.b.setStyle(Style.FILL);
        this.b.setColor(color);
        this.c = new Path();
        this.d = new Path();
        obtainStyledAttributes.recycle();
    }

    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        this.g = i;
        this.h = i2;
        float f = 2.1666667f * ((float) this.h);
        this.i = ((float) this.f) + f;
        this.j = (f / 2.0f) + ((float) this.f);
        this.k = (0.0f - ((float) this.h)) + (((float) this.e) / 2.0f);
    }

    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        canvas.save();
        canvas.translate(0.0f, (float) this.h);
        this.c.lineTo((float) this.f, 0.0f);
        this.c.lineTo(this.j, this.k);
        this.c.lineTo(this.i, 0.0f);
        this.c.lineTo((float) this.g, 0.0f);
        this.c.moveTo(0.0f, 0.0f);
        this.c.close();
        canvas.drawPath(this.c, this.a);
        canvas.restore();
        canvas.save();
        canvas.translate((float) this.f, (float) this.h);
        this.d.lineTo(this.j - ((float) this.f), this.k);
        this.d.lineTo(this.i - ((float) this.f), 0.0f);
        this.d.close();
        canvas.drawPath(this.d, this.b);
        canvas.restore();
    }
}
