package com.twitter.library.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint.FontMetrics;
import android.support.annotation.ColorInt;
import android.text.Layout.Alignment;
import android.text.Spanned;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.MeasureSpec;
import com.google.android.exoplayer.C;
import com.google.android.exoplayer.text.Cue;
import com.twitter.library.view.x;
import com.twitter.ui.view.p;
import com.twitter.ui.widget.ax;
import com.twitter.util.a;
import com.twitter.util.aj;
import defpackage.bdd;

/* compiled from: Twttr */
public class TextContentView extends View {
    private final TextPaint a;
    private final ColorStateList b;
    private final ColorStateList c;
    private final float d;
    private final int e;
    private CharSequence f;
    private StaticLayout g;
    @ColorInt
    private int h;
    @ColorInt
    private int i;
    private boolean j;
    private CharSequence k;
    private int l;
    private int m;
    private p n;

    public TextContentView(Context context) {
        this(context, null, 0);
    }

    public TextContentView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public TextContentView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f = TtmlNode.ANONYMOUS_REGION_ID;
        this.l = -1;
        this.m = -1;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, bdd.TextContentView, i, 0);
        try {
            this.a = new TextPaint(1);
            this.a.setTypeface(ax.a(getContext()).a);
            this.d = obtainStyledAttributes.getFloat(bdd.TextContentView_android_lineSpacingMultiplier, 1.0f);
            this.e = obtainStyledAttributes.getDimensionPixelSize(bdd.TextContentView_android_lineSpacingExtra, 0);
            this.b = obtainStyledAttributes.getColorStateList(bdd.TextContentView_contentColor);
            this.c = obtainStyledAttributes.getColorStateList(bdd.TextContentView_linkColor);
            a();
            setMaxLines(obtainStyledAttributes.getInt(bdd.TextContentView_android_maxLines, -1));
            setMinLines(obtainStyledAttributes.getInt(bdd.TextContentView_android_minLines, -1));
        } finally {
            obtainStyledAttributes.recycle();
        }
    }

    protected void onMeasure(int i, int i2) {
        int a = a(i);
        if (a < 0) {
            setMeasuredDimension(16777216, 16777216);
            return;
        }
        if (this.g == null) {
            Alignment a2 = a.a(this.j);
            if (this.l > 0) {
                this.g = x.a(this.f, this.a, a, a2, this.d, (float) this.e, false, this.l, this.k);
            } else {
                this.g = new StaticLayout(this.f, this.a, a, a2, this.d, (float) this.e, false);
            }
            if (this.f instanceof Spanned) {
                this.n = new p(this, this.g);
            }
        }
        setMeasuredDimension(this.g.getWidth(), x.a(this.g, this.a, this.m) + this.g.getHeight());
    }

    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        x.a(this.g, canvas);
    }

    protected void drawableStateChanged() {
        super.drawableStateChanged();
        a();
    }

    public boolean onTouchEvent(MotionEvent motionEvent) {
        return (this.n != null && this.n.a(motionEvent)) || super.onTouchEvent(motionEvent);
    }

    protected int a(int i) {
        int mode = MeasureSpec.getMode(i);
        int size = MeasureSpec.getSize(i);
        if (mode != C.ENCODING_PCM_32BIT) {
            if (mode == Cue.TYPE_UNSET) {
                size = Math.min(getSuggestedMinimumWidth(), size);
            } else {
                size = getResources().getDisplayMetrics().widthPixels;
            }
        }
        return (size - getPaddingLeft()) - getPaddingRight();
    }

    private void a() {
        int[] drawableState = getDrawableState();
        if (this.b != null) {
            this.h = this.b.getColorForState(drawableState, 0);
        }
        if (this.c != null) {
            this.i = this.c.getColorForState(drawableState, 0);
        }
        this.a.setColor(this.h);
        this.a.linkColor = this.i;
    }

    public void a(CharSequence charSequence, boolean z) {
        b(charSequence, z);
        if (TextUtils.isEmpty(charSequence) && this.m == -1) {
            setVisibility(8);
        } else {
            setVisibility(0);
        }
    }

    public void b(CharSequence charSequence, boolean z) {
        this.f = charSequence;
        this.j = z;
        b();
    }

    public void setMaxLines(int i) {
        if (this.l != i) {
            this.l = i;
            b();
        }
    }

    public void setMinLines(int i) {
        if (this.m != i) {
            this.m = i;
            b();
        }
    }

    public void setContentSize(float f) {
        if (this.a.getTextSize() != f) {
            this.a.setTextSize(f);
            b();
        }
    }

    public void setTruncateText(CharSequence charSequence) {
        if (!aj.a(this.k, charSequence)) {
            this.k = charSequence;
            b();
        }
    }

    public FontMetrics getContentFontMetrics() {
        return this.a.getFontMetrics();
    }

    private void b() {
        this.g = null;
        this.n = null;
        requestLayout();
    }
}
