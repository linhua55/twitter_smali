package com.twitter.library.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.Typeface;
import android.text.TextPaint;
import android.text.TextUtils;
import android.text.TextUtils.TruncateAt;
import android.util.AttributeSet;
import android.view.View;
import android.view.View.MeasureSpec;
import com.google.android.exoplayer.C;
import com.google.android.exoplayer.text.Cue;
import com.google.android.exoplayer.util.Util;
import com.google.android.exoplayer.util.extensions.Buffer;
import com.twitter.util.aj;
import com.twitter.util.object.e;
import defpackage.bdd;

/* compiled from: Twttr */
public class TightTextView extends View {
    private static final int[] a;
    private final TextPaint b;
    private final Rect c;
    private final Rect d;
    private final int e;
    private final int f;
    private String g;
    private String h;
    private int i;
    private int j;
    private int k;

    static {
        a = new int[]{0, 1, 3, 2};
    }

    public TightTextView(Context context) {
        this(context, null, 0);
    }

    public TightTextView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public TightTextView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.b = new TextPaint(1);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, bdd.TightTextView, i, 0);
        setTextSize(obtainStyledAttributes.getDimensionPixelSize(bdd.TightTextView_text_size, 0));
        setTextColor(obtainStyledAttributes.getColor(bdd.TightTextView_text_color, 0));
        setFontStyle(obtainStyledAttributes.getInt(bdd.TightTextView_text_face, 0));
        this.e = obtainStyledAttributes.getInt(bdd.TightTextView_vertical_alignment, 1);
        this.f = obtainStyledAttributes.getInt(bdd.TightTextView_horizontal_alignment, 1);
        this.g = e.b(obtainStyledAttributes.getString(bdd.TightTextView_text));
        this.h = this.g;
        Rect rect = new Rect();
        this.b.getTextBounds(this.g, 0, this.g.length(), rect);
        this.c = rect;
        this.d = new Rect();
        obtainStyledAttributes.recycle();
    }

    public void setTextSize(int i) {
        if (this.i != i) {
            this.i = i;
            this.b.setTextSize((float) i);
        }
    }

    public void setTextColor(int i) {
        if (this.j != i) {
            this.j = i;
            this.b.setColor(i);
        }
    }

    public void setFontStyle(int i) {
        if (this.k != i) {
            this.k = i;
            this.b.setTypeface(Typeface.create(this.b.getTypeface(), a[i]));
        }
    }

    public void setText(String str) {
        if (str == null) {
            str = TtmlNode.ANONYMOUS_REGION_ID;
        }
        if (!this.g.equals(str)) {
            this.g = str;
            this.h = str;
            this.b.getTextBounds(str, 0, str.length(), this.c);
            requestLayout();
        }
    }

    protected void onMeasure(int i, int i2) {
        int size;
        int mode = MeasureSpec.getMode(i);
        if (mode == 0 || getLayoutParams().width == -2) {
            this.d.set(this.c);
        } else {
            size = (MeasureSpec.getSize(i) - getPaddingLeft()) - getPaddingRight();
            if (this.c.width() <= size || !aj.b(this.g)) {
                this.d.set(this.c);
            } else {
                this.h = TextUtils.ellipsize(this.g, this.b, (float) size, TruncateAt.END).toString();
                this.b.getTextBounds(this.h, 0, this.h.length(), this.d);
            }
        }
        if (mode == C.ENCODING_PCM_32BIT) {
            size = MeasureSpec.getSize(i);
        } else {
            size = (this.d.width() + getPaddingLeft()) + getPaddingRight();
            if (mode == Cue.TYPE_UNSET) {
                size = Math.min(size, MeasureSpec.getSize(i));
            }
        }
        int mode2 = MeasureSpec.getMode(i2);
        if (mode2 == C.ENCODING_PCM_32BIT) {
            mode = MeasureSpec.getSize(i2);
        } else {
            mode = (this.d.height() + getPaddingTop()) + getPaddingBottom();
            if (mode2 == Cue.TYPE_UNSET) {
                mode = Math.min(mode, MeasureSpec.getSize(i2));
            }
        }
        setMeasuredDimension(size, mode);
    }

    protected final void onDraw(Canvas canvas) {
        int paddingLeft;
        int paddingTop;
        switch (this.f) {
            case Util.TYPE_DASH /*0*/:
                paddingLeft = getPaddingLeft() - this.d.left;
                break;
            case Buffer.FLAG_DECODE_ONLY /*2*/:
                paddingLeft = (getWidth() - getPaddingRight()) - this.d.right;
                break;
            default:
                paddingLeft = getPaddingLeft();
                paddingLeft += ((((getWidth() - paddingLeft) - getPaddingRight()) - this.d.left) - this.d.right) / 2;
                break;
        }
        switch (this.e) {
            case Util.TYPE_DASH /*0*/:
                paddingTop = getPaddingTop() - this.d.top;
                break;
            case Buffer.FLAG_DECODE_ONLY /*2*/:
                paddingTop = (getHeight() - getPaddingBottom()) - this.d.bottom;
                break;
            default:
                paddingTop = getPaddingTop();
                paddingTop += ((((getHeight() - paddingTop) - getPaddingBottom()) - this.d.top) - this.d.bottom) / 2;
                break;
        }
        canvas.drawText(this.h, (float) paddingLeft, (float) paddingTop, this.b);
    }
}
