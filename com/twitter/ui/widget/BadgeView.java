package com.twitter.ui.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.text.Layout.Alignment;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.text.TextUtils.TruncateAt;
import android.util.AttributeSet;
import android.view.View;
import android.view.View.MeasureSpec;
import com.twitter.util.aj;
import com.twitter.util.ak;
import com.twitter.util.ui.i;
import com.twitter.util.ui.r;
import defpackage.crv;
import defpackage.cse;

/* compiled from: Twttr */
public class BadgeView extends View {
    private static final Rect a;
    private final boolean b;
    private final Rect c;
    private final TextPaint d;
    private int e;
    private float f;
    private int g;
    private ColorStateList h;
    private Drawable i;
    private StaticLayout j;
    private String k;
    private boolean l;
    private boolean m;
    private int n;
    private int o;

    static {
        a = new Rect();
    }

    public BadgeView(Context context) {
        this(context, null);
    }

    public BadgeView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, crv.badgeViewStyle);
    }

    public BadgeView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.b = ak.f();
        this.c = new Rect();
        this.d = new TextPaint(1);
        this.l = false;
        this.m = true;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, cse.BadgeView, i, 0);
        a(context, obtainStyledAttributes);
        obtainStyledAttributes.recycle();
    }

    public BadgeView(Context context, int i) {
        super(context, null);
        this.b = ak.f();
        this.c = new Rect();
        this.d = new TextPaint(1);
        this.l = false;
        this.m = true;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(i, cse.BadgeView);
        a(context, obtainStyledAttributes);
        obtainStyledAttributes.recycle();
    }

    private void a(Context context, TypedArray typedArray) {
        this.f = typedArray.getFloat(cse.BadgeView_android_lineSpacingMultiplier, 1.0f);
        this.e = typedArray.getDimensionPixelSize(cse.BadgeView_android_lineSpacingExtra, 0);
        this.g = typedArray.getDimensionPixelOffset(cse.BadgeView_badgeSpacing, 0);
        this.h = typedArray.getColorStateList(cse.BadgeView_contentColor);
        this.m = typedArray.getBoolean(cse.BadgeView_showBadge, true);
        int dimensionPixelSize = typedArray.getDimensionPixelSize(cse.BadgeView_android_textSize, 0);
        if (dimensionPixelSize != 0) {
            setContentSize((float) dimensionPixelSize);
        }
        this.d.setTypeface(ax.a(context).a);
    }

    protected void drawableStateChanged() {
        super.drawableStateChanged();
        if (this.h != null) {
            this.d.setColor(this.h.getColorForState(getDrawableState(), 0));
        }
    }

    public void setShowBadge(boolean z) {
        this.m = z;
    }

    public void setAlignEnd(boolean z) {
        this.l = z;
    }

    public void setContentSize(float f) {
        this.d.setTextSize(f);
        b();
        requestLayout();
        invalidate();
    }

    public void a(int i, String str) {
        this.i = null;
        b();
        this.k = str;
        if (aj.a(str)) {
            setVisibility(8);
            return;
        }
        if (i > 0) {
            this.i = getResources().getDrawable(i);
        }
        setVisibility(0);
        invalidate();
        requestLayout();
    }

    protected void onMeasure(int i, int i2) {
        if (this.k != null) {
            int size = MeasureSpec.getSize(i);
            if (this.i != null) {
                this.i.setBounds(0, 0, this.i.getIntrinsicWidth(), this.i.getIntrinsicHeight());
            }
            if (this.j == null && size > 0) {
                int intrinsicWidth = this.i != null ? (size - this.g) - this.i.getIntrinsicWidth() : size;
                TextPaint textPaint = this.d;
                this.j = new StaticLayout(this.k, 0, this.k.length(), textPaint, r.a(this.k, textPaint), Alignment.ALIGN_NORMAL, this.f, (float) this.e, false, TruncateAt.END, intrinsicWidth);
                this.d.getTextBounds(this.k, 0, this.k.length(), this.c);
                this.n = i.b(this.c);
                this.o = i.a(this.j, this.c);
            }
            setMeasuredDimension(size, ((this.i != null ? Math.max(this.i.getBounds().height(), this.n) : this.n) + getPaddingTop()) + getPaddingBottom());
            return;
        }
        setMeasuredDimension(0, 0);
    }

    protected void onDraw(Canvas canvas) {
        int i = 0;
        if (this.j != null && this.j.getLineCount() > 0) {
            boolean z;
            Rect bounds;
            int width;
            if (this.i != null) {
                z = this.m;
                bounds = this.i.getBounds();
            } else {
                bounds = a;
                z = false;
            }
            if (!a()) {
                width = getWidth() - bounds.width();
                i = (int) this.j.getLineWidth(0);
                int width2 = z ? width - (i + this.g) : getWidth() - i;
                i = width;
                width = width2;
            } else if (z) {
                width = bounds.width() + this.g;
            } else {
                width = 0;
            }
            int paddingTop = getPaddingTop() + (((getHeight() - getPaddingTop()) - getPaddingBottom()) / 2);
            int height = paddingTop - (bounds.height() / 2);
            float f = (float) (paddingTop - ((this.n / 2) + this.o));
            if (z) {
                canvas.save();
                canvas.translate((float) i, (float) height);
                this.i.draw(canvas);
                canvas.restore();
            }
            canvas.save();
            canvas.translate((float) width, f);
            this.j.draw(canvas);
            canvas.restore();
        }
    }

    private boolean a() {
        if (this.b) {
            return this.l;
        }
        return !this.l;
    }

    private void b() {
        this.j = null;
    }
}
