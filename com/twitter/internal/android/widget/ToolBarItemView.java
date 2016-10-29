package com.twitter.internal.android.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint.FontMetricsInt;
import android.graphics.Point;
import android.graphics.Typeface;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.support.annotation.DrawableRes;
import android.text.Layout.Alignment;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.util.AttributeSet;
import android.view.View;
import com.twitter.util.a;
import com.twitter.util.ui.r;
import defpackage.bct;
import defpackage.bdd;
import defpackage.bde;

/* compiled from: Twttr */
public class ToolBarItemView extends View implements e {
    private static final int[] c;
    private static final TextPaint d;
    protected Drawable a;
    protected int b;
    private final int e;
    private final Point f;
    private final int g;
    private float h;
    private Typeface i;
    private ColorStateList j;
    private StaticLayout k;
    private int l;
    private boolean m;
    private int n;
    private String o;
    private final a p;

    static {
        c = new int[]{bct.state_numbered};
        d = new TextPaint(1);
    }

    public ToolBarItemView(Context context) {
        this(context, null, bct.toolBarItemStyle);
    }

    public ToolBarItemView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, bct.toolBarItemStyle);
    }

    public ToolBarItemView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f = new Point();
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, bdd.ToolBarItemView, i, 0);
        this.e = (int) Math.ceil((double) (10.0f * context.getResources().getDisplayMetrics().density));
        this.p = new a(this, context, obtainStyledAttributes.getResourceId(bdd.ToolBarItemView_badgeIndicatorStyle, 0));
        setTextAppearance(obtainStyledAttributes);
        obtainStyledAttributes.recycle();
        this.g = bde.a(context);
    }

    private void a() {
        int colorForState = this.j.getColorForState(getDrawableState(), 0);
        if (colorForState != this.n) {
            setTextColor(colorForState);
        }
    }

    protected void onMeasure(int i, int i2) {
        int i3 = 0;
        if (this.a != null) {
            i3 = this.b != 0 ? Math.min(this.a.getIntrinsicWidth(), this.b) : this.a.getIntrinsicWidth();
        }
        if (b()) {
            if (this.a != null) {
                i3 += this.e;
            }
            i3 += this.k.getWidth();
        }
        this.l = i3;
        setMeasuredDimension(getDefaultSize(Math.max((i3 + getPaddingLeft()) + getPaddingRight(), getSuggestedMinimumWidth()), i), getDefaultSize(getSuggestedMinimumHeight(), i2));
    }

    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int i5 = i4 - i2;
        int a = r.a((i3 - i) - (getPaddingLeft() + getPaddingRight()), this.l) + getPaddingLeft();
        int i6 = 0;
        if (b()) {
            FontMetricsInt fontMetricsInt = d.getFontMetricsInt();
            this.f.set(a, r.a((fontMetricsInt.bottom - fontMetricsInt.top) - fontMetricsInt.descent, i5));
            a += this.k.getWidth() + this.e;
        }
        if (this.a != null) {
            int min = this.b != 0 ? Math.min(this.a.getIntrinsicHeight(), this.b) : this.a.getIntrinsicHeight();
            int min2 = this.b != 0 ? Math.min(this.a.getIntrinsicWidth(), this.b) : this.a.getIntrinsicWidth();
            i5 = r.a(i5, min);
            this.a.setBounds(a, i5, min2 + a, i5 + min);
            i6 = i5 + min;
        }
        this.p.a(z, i, i2, i3, i4, this.a != null ? this.a.getBounds() : null, i6);
    }

    protected boolean verifyDrawable(Drawable drawable) {
        return this.p.a(drawable) || drawable == this.a || super.verifyDrawable(drawable);
    }

    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (this.a != null) {
            this.a.draw(canvas);
        }
        if (b()) {
            int save = canvas.save(1);
            TextPaint textPaint = d;
            textPaint.setTextSize(this.h);
            textPaint.setColor(this.n);
            textPaint.setTypeface(this.i);
            canvas.translate((float) this.f.x, (float) this.f.y);
            this.k.draw(canvas);
            canvas.restoreToCount(save);
        }
        this.p.a(canvas);
    }

    protected int[] onCreateDrawableState(int i) {
        int[] onCreateDrawableState = super.onCreateDrawableState(c.length + i);
        if (this.p.a()) {
            mergeDrawableStates(onCreateDrawableState, c);
        }
        return onCreateDrawableState;
    }

    protected void drawableStateChanged() {
        super.drawableStateChanged();
        if (this.a != null && this.a.isStateful()) {
            this.a.setState(getDrawableState());
        }
        a();
    }

    public void setLabelResource(int i) {
        if (i != 0) {
            setLabel(getResources().getString(i));
        }
    }

    public void setLabel(CharSequence charSequence) {
        boolean z = false;
        if (charSequence == null) {
            if (this.k != null) {
                z = true;
            }
            this.k = null;
            this.o = null;
        } else {
            Object a = a.a(charSequence);
            if (this.k == null || !a.equals(this.o)) {
                d.setTextSize(this.h);
                d.setTypeface(this.i);
                d.setColor(this.g);
                this.k = new StaticLayout(a, d, r.a(a, d), Alignment.ALIGN_NORMAL, 1.0f, 0.0f, false);
                this.o = a;
                z = true;
            }
        }
        if (z) {
            requestLayout();
            invalidate();
        }
    }

    public void setImageResource(@DrawableRes int i) {
        if (i != 0) {
            a(getResources().getDrawable(i), true);
        }
    }

    public void a(Drawable drawable, boolean z) {
        if (this.a != drawable) {
            if (z) {
                drawable = bde.a(drawable, this.g);
            }
            this.a = drawable;
            requestLayout();
            invalidateDrawable(this.a);
        }
    }

    public void setImageBitmap(Bitmap bitmap) {
        a(new BitmapDrawable(bitmap), false);
    }

    public void setWithText(boolean z) {
        Object obj = z != this.m ? 1 : null;
        this.m = z;
        if (obj != null) {
            requestLayout();
            invalidate();
        }
    }

    public void setTextColor(int i) {
        Object obj = i != this.n ? 1 : null;
        this.n = i;
        if (obj != null) {
            invalidate();
        }
    }

    private boolean b() {
        return this.k != null && (this.m || this.a == null);
    }

    public void a(Context context, int i) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(i, bdd.ToolBarItemView);
        setTextAppearance(obtainStyledAttributes);
        obtainStyledAttributes.recycle();
    }

    private void setTextAppearance(TypedArray typedArray) {
        this.h = typedArray.getDimension(bdd.ToolBarItemView_textSize, 14.0f);
        this.j = typedArray.getColorStateList(bdd.ToolBarItemView_textColor);
        this.i = Typeface.DEFAULT_BOLD;
        if (this.j != null) {
            a();
        } else {
            this.n = -16777216;
        }
    }

    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.p.c();
    }

    public void setBadgeNumber(int i) {
        this.p.setBadgeNumber(i);
    }

    public void setBadgeMode(int i) {
        this.p.setBadgeMode(i);
    }

    public void setMaxIconSize(int i) {
        this.b = i;
    }
}
