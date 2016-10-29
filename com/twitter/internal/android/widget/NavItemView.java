package com.twitter.internal.android.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint.FontMetricsInt;
import android.graphics.Point;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.text.Layout.Alignment;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.text.TextUtils.TruncateAt;
import android.util.AttributeSet;
import android.view.View;
import android.view.View.MeasureSpec;
import com.twitter.ui.widget.ax;
import com.twitter.util.ui.r;
import defpackage.bct;
import defpackage.bdd;
import defpackage.bde;

/* compiled from: Twttr */
public class NavItemView extends View implements e {
    private static final TextPaint a;
    private final float b;
    private final Point c;
    private final Rect d;
    private final ax e;
    private final int f;
    private final int g;
    private final int h;
    private final a i;
    private StaticLayout j;
    private CharSequence k;
    private ColorStateList l;
    private int m;
    private int n;
    private int o;
    private final int p;
    private final int q;
    private Drawable r;

    static {
        a = new TextPaint(1);
    }

    public NavItemView(Context context) {
        this(context, null, bct.navItemStyle);
    }

    public NavItemView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, bct.navItemStyle);
    }

    public NavItemView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.c = new Point();
        this.d = new Rect();
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, bdd.NavItemView, i, 0);
        this.l = obtainStyledAttributes.getColorStateList(bdd.NavItemView_textColor);
        if (this.l != null) {
            a();
        }
        this.b = obtainStyledAttributes.getDimension(bdd.NavItemView_textSize, 18.0f);
        this.e = ax.a(context);
        this.h = obtainStyledAttributes.getInt(bdd.NavItemView_displayMode, 1);
        this.f = obtainStyledAttributes.getInt(bdd.NavItemView_textStyle, 0);
        this.g = obtainStyledAttributes.getInt(bdd.NavItemView_selectedTextStyle, 1);
        this.i = new a(this, context, obtainStyledAttributes.getResourceId(bdd.NavItemView_badgeIndicatorStyle, 0));
        this.p = bde.a(context);
        this.q = obtainStyledAttributes.getColor(bdd.NavItemView_unselectedIconTint, this.p);
        obtainStyledAttributes.recycle();
    }

    private void a() {
        int colorForState = this.l.getColorForState(getDrawableState(), 0);
        if (colorForState != this.m) {
            this.m = colorForState;
        }
    }

    public void setBadgeMode(int i) {
        this.i.setBadgeMode(i);
    }

    public void setText(CharSequence charSequence) {
        int i = 1;
        if (charSequence == null) {
            if (this.k == null) {
                i = 0;
            }
            this.k = null;
        } else if (charSequence.equals(this.k)) {
            i = 0;
        } else {
            this.k = charSequence;
        }
        if (i != 0) {
            if (charSequence != null) {
                int paddingLeft;
                TextPaint b = b();
                int a = r.a(charSequence, b);
                if (MeasureSpec.getMode(this.n) == 0) {
                    paddingLeft = (getPaddingLeft() + getPaddingRight()) + a;
                } else {
                    paddingLeft = (MeasureSpec.getSize(this.n) - getPaddingLeft()) - getPaddingRight();
                }
                this.j = new StaticLayout(charSequence, 0, charSequence.length(), b, a, Alignment.ALIGN_NORMAL, 1.0f, 0.0f, false, TruncateAt.END, paddingLeft);
            } else {
                this.j = null;
            }
            requestLayout();
            invalidate();
        }
    }

    private TextPaint b() {
        TextPaint textPaint = a;
        if (isSelected()) {
            textPaint.setTypeface(this.e.a(this.g));
        } else {
            textPaint.setTypeface(this.e.a(this.f));
        }
        textPaint.setTextSize(this.b);
        textPaint.setColor(this.m);
        return textPaint;
    }

    public void setBadgeNumber(int i) {
        this.i.setBadgeNumber(i);
    }

    protected boolean verifyDrawable(Drawable drawable) {
        return this.i.a(drawable) || super.verifyDrawable(drawable);
    }

    protected void drawableStateChanged() {
        super.drawableStateChanged();
        a();
        this.i.b();
    }

    protected void onMeasure(int i, int i2) {
        StaticLayout staticLayout = this.j;
        Drawable drawable = this.r;
        if (drawable != null && this.h == 2) {
            setMeasuredDimension(getDefaultSize(drawable.getIntrinsicWidth(), i), getDefaultSize(drawable.getIntrinsicHeight(), i2));
        } else if (staticLayout != null) {
            setMeasuredDimension(getDefaultSize((getPaddingLeft() + getPaddingRight()) + staticLayout.getWidth(), i), getDefaultSize(staticLayout.getHeight() + (getPaddingTop() + getPaddingBottom()), i2));
        } else {
            super.onMeasure(i, i2);
        }
        this.n = i;
    }

    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int i5;
        Rect rect = null;
        int paddingLeft;
        int a;
        if (this.r == null || this.h != 2) {
            StaticLayout staticLayout = this.j;
            if (staticLayout != null) {
                TextPaint b = b();
                paddingLeft = getPaddingLeft();
                a = r.a(((i3 - i) - paddingLeft) - getPaddingRight(), staticLayout.getWidth()) + paddingLeft;
                int paddingTop = getPaddingTop();
                int height = staticLayout.getHeight();
                int a2 = r.a(((i4 - i2) - paddingTop) - getPaddingBottom(), height) + paddingTop;
                this.c.set(a, a2);
                FontMetricsInt fontMetricsInt = b.getFontMetricsInt();
                i5 = a2 + ((fontMetricsInt.bottom - fontMetricsInt.top) - fontMetricsInt.descent);
                this.d.set(a, a2 - paddingTop, (staticLayout.getWidth() + a) + paddingLeft, a2 + height);
                rect = this.d;
            } else {
                i5 = getPaddingTop();
            }
        } else {
            int intrinsicHeight = this.r.getIntrinsicHeight();
            int intrinsicWidth = this.r.getIntrinsicWidth();
            paddingLeft = r.a(i3 - i, intrinsicWidth);
            a = r.a(i4 - i2, intrinsicHeight);
            i5 = a + intrinsicHeight;
            this.r.setBounds(paddingLeft, a, intrinsicWidth + paddingLeft, i5);
            rect = this.r.getBounds();
        }
        this.i.a(z, i, i2, i3, i4, rect, i5);
    }

    protected void onDraw(Canvas canvas) {
        if (this.r != null && this.h == 2) {
            bde.a(this.r, isSelected() ? this.p : this.q).draw(canvas);
        } else if (this.j != null) {
            b();
            int save = canvas.save(1);
            canvas.translate((float) this.c.x, (float) this.c.y);
            this.j.draw(canvas);
            canvas.restoreToCount(save);
        }
        this.i.a(canvas);
    }

    public void setIconResource(int i) {
        if (this.h == 2 && i != this.o) {
            Context context = getContext();
            this.o = i;
            this.r = context.getResources().getDrawable(i);
            requestLayout();
            invalidate();
        }
    }

    public void setTextColor(int i) {
        if (this.m != i && i != 0) {
            this.l = ColorStateList.valueOf(i);
            a();
        }
    }
}
