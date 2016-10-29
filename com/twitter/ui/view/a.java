package com.twitter.ui.view;

import android.support.annotation.ColorInt;
import android.support.annotation.VisibleForTesting;
import android.text.TextPaint;
import android.text.style.ClickableSpan;
import android.view.View;

/* compiled from: Twttr */
public abstract class a extends ClickableSpan implements c {
    private final int a;
    private final boolean b;
    private final boolean c;
    @VisibleForTesting
    public final Integer d;
    private boolean e;

    protected a(@ColorInt int i) {
        this(i, null, true, false);
    }

    protected a(@ColorInt int i, @ColorInt int i2, boolean z) {
        this(i, Integer.valueOf(i2), true, z);
    }

    protected a(@ColorInt int i, @ColorInt Integer num, boolean z, boolean z2) {
        this.a = i;
        this.d = num;
        this.b = z;
        this.c = z2;
    }

    public void updateDrawState(TextPaint textPaint) {
        if (this.b) {
            textPaint.setColor(this.d != null ? this.d.intValue() : textPaint.linkColor);
        }
        if (!this.e || this.a == 0) {
            textPaint.bgColor = 0;
        } else {
            textPaint.bgColor = this.a;
        }
        if (this.c) {
            textPaint.setUnderlineText(true);
        }
    }

    public void a(boolean z) {
        this.e = z;
    }

    public boolean a() {
        return this.e;
    }

    public void a(View view) {
    }

    public boolean b() {
        return true;
    }
}
