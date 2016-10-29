package com.twitter.library.view;

import android.graphics.Canvas;
import android.graphics.Paint.FontMetrics;
import android.text.Layout.Alignment;
import android.text.SpannableStringBuilder;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.text.TextUtils;

/* compiled from: Twttr */
public class x {
    public static StaticLayout a(CharSequence charSequence, TextPaint textPaint, int i, Alignment alignment, float f, float f2, boolean z, int i2, CharSequence charSequence2) {
        StaticLayout staticLayout = new StaticLayout(charSequence, textPaint, i, alignment, f, f2, z);
        if (i2 <= 0 || staticLayout.getLineCount() <= i2) {
            return staticLayout;
        }
        float f3;
        int lastIndexOf;
        int i3 = i2 - 1;
        float width = (float) staticLayout.getWidth();
        if (TextUtils.isEmpty(charSequence2)) {
            f3 = 0.0f;
        } else {
            float[] fArr = new float[1];
            textPaint.breakText(charSequence2, 0, charSequence2.length(), true, width, fArr);
            f3 = fArr[0];
        }
        if (f3 > 0.0f) {
            float lineMax = staticLayout.getLineMax(i3);
            int paragraphDirection = staticLayout.getParagraphDirection(i3);
            if (lineMax + f3 >= width) {
                int offsetForHorizontal = 1 == paragraphDirection ? staticLayout.getOffsetForHorizontal(i3, width - f3) : staticLayout.getOffsetForHorizontal(i3, f3);
                int lineStart = staticLayout.getLineStart(i3);
                lastIndexOf = TextUtils.lastIndexOf(charSequence, ' ', lineStart, Math.max(lineStart, offsetForHorizontal - 1));
                if (lastIndexOf <= lineStart) {
                    lastIndexOf = lineStart;
                }
            } else if (1 == paragraphDirection) {
                lastIndexOf = staticLayout.getOffsetForHorizontal(i3, lineMax);
            } else {
                lastIndexOf = staticLayout.getOffsetForHorizontal(i3, Math.max(0.0f, width - lineMax));
            }
        } else {
            lastIndexOf = staticLayout.getLineEnd(i3);
        }
        CharSequence subSequence = charSequence.subSequence(0, lastIndexOf);
        if (!TextUtils.isEmpty(charSequence2)) {
            subSequence = new SpannableStringBuilder(subSequence).append(charSequence2);
        }
        return new StaticLayout(subSequence, textPaint, i, alignment, f, f2, z);
    }

    public static int a(StaticLayout staticLayout, TextPaint textPaint, int i) {
        if (staticLayout != null) {
            if (staticLayout.getLineCount() <= 0 || staticLayout.getLineCount() >= i || i <= 0) {
                return 0;
            }
            return (staticLayout.getHeight() / staticLayout.getLineCount()) * (i - staticLayout.getLineCount());
        } else if (i <= 0) {
            return 0;
        } else {
            FontMetrics fontMetrics = textPaint.getFontMetrics();
            return (Math.round(fontMetrics.descent) - Math.round(fontMetrics.ascent)) * i;
        }
    }

    public static void a(StaticLayout staticLayout, Canvas canvas) {
        try {
            staticLayout.draw(canvas);
        } catch (Exception e) {
        }
    }
}
