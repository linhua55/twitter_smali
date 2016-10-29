package com.twitter.library.view;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Paint.FontMetricsInt;
import android.graphics.drawable.Drawable;
import android.support.annotation.VisibleForTesting;
import android.text.style.ImageSpan;
import com.google.android.exoplayer.chunk.FormatEvaluator.AdaptiveEvaluator;

@VisibleForTesting
/* compiled from: Twttr */
public class j extends ImageSpan {
    j(Drawable drawable, int i) {
        super(drawable, i);
    }

    public int getSize(Paint paint, CharSequence charSequence, int i, int i2, FontMetricsInt fontMetricsInt) {
        int intrinsicWidth;
        FontMetricsInt fontMetricsInt2 = paint.getFontMetricsInt();
        Drawable drawable = getDrawable();
        int i3 = (int) (((float) (fontMetricsInt2.descent - fontMetricsInt2.ascent)) * AdaptiveEvaluator.DEFAULT_BANDWIDTH_FRACTION);
        if (i3 < drawable.getIntrinsicHeight()) {
            intrinsicWidth = (int) (((float) (drawable.getIntrinsicWidth() / drawable.getIntrinsicHeight())) * ((float) i3));
        } else if (drawable.getIntrinsicHeight() > 0) {
            intrinsicWidth = drawable.getIntrinsicWidth();
            i3 = drawable.getIntrinsicHeight();
        } else {
            intrinsicWidth = i3;
        }
        drawable.setBounds(0, 0, intrinsicWidth, i3);
        return intrinsicWidth;
    }

    public void draw(Canvas canvas, CharSequence charSequence, int i, int i2, float f, int i3, int i4, int i5, Paint paint) {
        canvas.save();
        Drawable drawable = getDrawable();
        FontMetricsInt fontMetricsInt = paint.getFontMetricsInt();
        int i6 = fontMetricsInt.descent - fontMetricsInt.ascent;
        if (drawable.getBounds().height() < i6) {
            canvas.translate(0.0f, ((float) (drawable.getBounds().height() - i6)) / 2.0f);
        }
        canvas.translate(0.0f, (float) (-(i5 - (fontMetricsInt.descent + i4))));
        super.draw(canvas, charSequence, i, i2, f, i3, i4, i5, paint);
        canvas.restore();
    }
}
