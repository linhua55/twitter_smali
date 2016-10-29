package com.twitter.ui.widget;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Paint.FontMetrics;
import android.graphics.Paint.FontMetricsInt;
import android.graphics.Paint.Style;
import android.graphics.RectF;
import android.text.style.ReplacementSpan;

/* compiled from: Twttr */
public class s extends ReplacementSpan {
    private final int a;
    private final int b;
    private final float c;
    private final float d;
    private final float e;
    private final float f;
    private final float g;
    private final float h;

    public s(int i, int i2, float f, float f2, float f3, float f4, float f5, float f6) {
        this.b = i2;
        this.a = i;
        this.c = f;
        this.d = f2;
        this.e = f3;
        this.f = f4;
        this.g = f5;
        this.h = f6;
    }

    public int getSize(Paint paint, CharSequence charSequence, int i, int i2, FontMetricsInt fontMetricsInt) {
        String trim = charSequence.subSequence(i, i2).toString().trim();
        return (int) ((((paint.measureText(trim, 0, trim.length()) + (a(paint) * 2.0f)) + (this.d * 2.0f)) + this.g) + this.h);
    }

    public void draw(Canvas canvas, CharSequence charSequence, int i, int i2, float f, int i3, int i4, int i5, Paint paint) {
        String trim = charSequence.subSequence(i, i2).toString().trim();
        float a = a(paint);
        FontMetrics fontMetrics = paint.getFontMetrics();
        float f2 = this.g + f;
        float f3 = (((float) i3) - this.e) - a;
        RectF rectF = new RectF(f2, f3, ((paint.measureText(trim, 0, trim.length()) + (2.0f * this.d)) + (2.0f * a)) + f2, ((((fontMetrics.bottom - fontMetrics.top) + (2.0f * a)) + this.e) + this.f) + f3);
        paint.setColor(this.b);
        paint.setStyle(Style.FILL);
        canvas.drawRoundRect(rectF, this.c, this.c, paint);
        paint.setColor(this.a);
        canvas.drawText(trim, 0, trim.length(), (f2 + this.d) + a, (float) i4, paint);
    }

    private static float a(Paint paint) {
        float strokeWidth = paint.getStrokeWidth();
        return strokeWidth != 0.0f ? strokeWidth : 1.0f;
    }
}
