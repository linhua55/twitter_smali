package com.twitter.android.util;

import android.text.TextPaint;
import android.text.style.URLSpan;

/* compiled from: Twttr */
public class NoUnderlineURLSpan extends URLSpan {
    public void updateDrawState(TextPaint textPaint) {
        super.updateDrawState(textPaint);
        textPaint.setUnderlineText(false);
    }

    public NoUnderlineURLSpan(String str) {
        super(str);
    }
}
