package com.twitter.internal.android.widget;

import android.content.Context;
import android.graphics.Paint;
import android.graphics.Typeface;
import android.text.TextPaint;
import android.text.style.StyleSpan;
import com.twitter.ui.widget.ax;

/* compiled from: Twttr */
public class TypefacesSpan extends StyleSpan {
    private final int a;
    private final ax b;

    public TypefacesSpan(Context context, int i) {
        int i2;
        if (ax.a(context).f) {
            i2 = 0;
        } else {
            i2 = i;
        }
        super(i2);
        this.a = i;
        this.b = ax.a(context);
    }

    public void updateDrawState(TextPaint textPaint) {
        if (this.b.f) {
            a(textPaint);
        } else {
            super.updateDrawState(textPaint);
        }
    }

    public void updateMeasureState(TextPaint textPaint) {
        if (this.b.f) {
            a(textPaint);
        } else {
            super.updateMeasureState(textPaint);
        }
    }

    private void a(Paint paint) {
        int i;
        Typeface typeface = paint.getTypeface();
        if (typeface == null) {
            i = 0;
        } else {
            i = typeface.getStyle();
        }
        paint.setTypeface(this.b.b(i | this.a));
    }
}
