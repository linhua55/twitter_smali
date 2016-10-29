package com.twitter.library.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.support.annotation.DrawableRes;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.widget.ImageView;
import android.widget.ImageView.ScaleType;
import com.google.android.exoplayer.util.Util;
import com.google.android.exoplayer.util.extensions.Buffer;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.flags.ModuleDescriptor;
import com.twitter.library.util.ao;
import com.twitter.ui.widget.TextLayoutView;
import com.twitter.ui.widget.ax;
import com.twitter.util.ak;
import com.twitter.util.ui.r;
import defpackage.bdd;
import defpackage.cec;

/* compiled from: Twttr */
public class InlineActionView extends ViewGroup implements cec {
    private static final int[] a;
    private final ImageView b;
    private final TextLayoutView c;
    private final Drawable d;
    private final int e;
    private final int f;
    private final int g;
    private final int h;
    private final Rect i;
    private final boolean j;
    private final p k;
    private final p l;
    private final int m;
    private final int n;
    private boolean o;
    private boolean p;
    private String q;
    private o r;
    private float s;
    private int t;

    static {
        a = new int[]{16842912};
    }

    public InlineActionView(Context context) {
        this(context, null);
    }

    public InlineActionView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public InlineActionView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.i = new Rect();
        this.o = false;
        this.p = false;
        this.q = null;
        this.s = ao.a(ao.a);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, bdd.InlineActionView, i, 0);
        this.d = obtainStyledAttributes.getDrawable(bdd.InlineActionView_inlineActionDrawable);
        this.m = obtainStyledAttributes.getDimensionPixelSize(bdd.InlineActionView_iconPaddingNormal, 0);
        this.n = obtainStyledAttributes.getDimensionPixelSize(bdd.InlineActionView_iconPaddingBadgeMode, 0);
        int dimensionPixelSize = obtainStyledAttributes.getDimensionPixelSize(bdd.InlineActionView_inlineActionLabelMargin, 0);
        this.f = obtainStyledAttributes.getDimensionPixelSize(bdd.InlineActionView_badgeSidePadding, 0);
        this.h = obtainStyledAttributes.getDimensionPixelSize(bdd.InlineActionView_badgeMaskWidth, 0);
        this.g = dimensionPixelSize;
        this.j = obtainStyledAttributes.getBoolean(bdd.InlineActionView_showLabel, true);
        if (this.j) {
            this.k = p.a(context, obtainStyledAttributes.getResourceId(bdd.InlineActionView_labelTextStyle, 0));
            this.l = p.a(context, obtainStyledAttributes.getResourceId(bdd.InlineActionView_badgeTextStyle, 0));
        } else {
            this.k = null;
            this.l = null;
        }
        obtainStyledAttributes.recycle();
        this.c = new TextLayoutView(getContext());
        this.c.setDuplicateParentStateEnabled(true);
        this.c.a(true);
        this.c.a(ax.a(context).a);
        addView(this.c);
        a(this.k);
        setLabel(this.q);
        e();
        this.b = new ImageView(getContext());
        this.b.setDuplicateParentStateEnabled(true);
        this.b.setScaleType(ScaleType.CENTER);
        a(this.m);
        this.e = this.d.getIntrinsicHeight() / 4;
        this.b.setImageDrawable(this.d);
        addView(this.b);
    }

    public void setState(int i) {
        boolean z;
        boolean z2;
        boolean z3 = true;
        int i2 = 0;
        switch (i) {
            case ModuleDescriptor.MODULE_VERSION /*1*/:
                z = true;
                z2 = true;
                break;
            case Buffer.FLAG_DECODE_ONLY /*2*/:
                z = false;
                z2 = true;
                z3 = false;
                break;
            case Util.TYPE_OTHER /*3*/:
                z = false;
                z2 = false;
                break;
            default:
                z = false;
                z2 = true;
                break;
        }
        if (!z2) {
            i2 = 8;
        }
        setVisibility(i2);
        setToggleOn(z);
        setEnabled(z3);
        setLabel(this.q);
    }

    public void setLabel(String str) {
        if (d()) {
            this.c.setTextWithVisibility(a(str));
        } else {
            this.c.setVisibility(8);
        }
        this.q = str;
    }

    protected void onMeasure(int i, int i2) {
        int measuredWidth;
        int measuredHeight;
        measureChildren(i, i2);
        if (this.o || this.c.getVisibility() == 8) {
            measuredWidth = this.b.getMeasuredWidth();
            measuredHeight = this.b.getMeasuredHeight();
        } else {
            measuredWidth = this.g + (this.b.getMeasuredWidth() + this.c.getMeasuredWidth());
            measuredHeight = Math.max(this.b.getMeasuredHeight(), this.c.getMeasuredHeight());
        }
        setMeasuredDimension(resolveSize(measuredWidth, i), resolveSize(measuredHeight, i2));
    }

    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int width = getWidth();
        int height = getHeight();
        if (ak.f()) {
            width -= this.b.getMeasuredWidth();
        } else {
            width = 0;
        }
        a(this.b, width, r.b(height, this.b.getMeasuredHeight()));
        if (this.c.getVisibility() == 8) {
            return;
        }
        if (this.o) {
            b();
        } else {
            c();
        }
    }

    public int[] onCreateDrawableState(int i) {
        int[] onCreateDrawableState = super.onCreateDrawableState(i + 1);
        if (this.p) {
            mergeDrawableStates(onCreateDrawableState, a);
        }
        return onCreateDrawableState;
    }

    public void setShowBadge(boolean z) {
        if (this.o != z) {
            this.o = z;
            if (z) {
                a(this.l);
                a(this.n);
            } else {
                a(this.k);
                a(this.m);
            }
            setLabel(this.q);
            e();
            requestLayout();
            invalidate();
        }
    }

    public void setBylineSize(float f) {
        if (this.j && this.s != f) {
            this.s = f;
            if (!this.o) {
                a(this.k);
                requestLayout();
            }
        }
    }

    public void a() {
        this.b.setImageDrawable(this.d);
    }

    public ImageView getIconView() {
        return this.b;
    }

    public View getTextView() {
        return this.c;
    }

    private void setToggleOn(boolean z) {
        if (this.p != z) {
            this.p = z;
            refreshDrawableState();
        }
    }

    private void a(int i, int i2, int i3, int i4) {
        TextLayoutView textLayoutView = this.c;
        Rect rect = this.i;
        rect.set(textLayoutView.getLeft(), textLayoutView.getTop(), textLayoutView.getRight(), textLayoutView.getBottom());
        if (rect.intersect(i, i2, i3, i4)) {
            rect.offset(-textLayoutView.getLeft(), -textLayoutView.getTop());
            this.r.a(rect.left, rect.top, rect.right, rect.bottom);
            return;
        }
        this.r.a(0, 0, 0, 0);
    }

    private void b() {
        int measuredWidth = this.c.getMeasuredWidth();
        int measuredHeight = this.c.getMeasuredHeight();
        int left = (this.b.getLeft() + this.b.getRight()) / 2;
        int top = (this.b.getTop() + this.b.getBottom()) / 2;
        if (ak.f()) {
            measuredWidth = Math.max(this.f, (left - this.e) - measuredWidth);
        } else {
            measuredWidth = Math.min(this.e + left, (getWidth() - measuredWidth) - this.f);
        }
        a(this.c, measuredWidth, Math.max(0, (top - this.e) - measuredHeight));
        measuredWidth = this.h / 2;
        measuredHeight = this.d.getIntrinsicHeight() / 2;
        a(left - measuredWidth, top - measuredHeight, measuredWidth + left, measuredHeight + top);
    }

    private void c() {
        int left;
        if (ak.f()) {
            left = (this.b.getLeft() - this.c.getMeasuredWidth()) + this.t;
        } else {
            left = this.b.getRight() - this.t;
        }
        a(this.c, left, r.b(getHeight(), this.c.getMeasuredHeight()));
    }

    private void a(p pVar) {
        if (this.j) {
            setupTextBackground(pVar.a);
            setupTextSize(pVar.b);
            this.c.setPadding(pVar.c, pVar.d, pVar.c, pVar.d);
            this.c.a(pVar.e);
        }
    }

    private void a(int i) {
        this.t = i - this.g;
        this.b.setLayoutParams(new LayoutParams((i * 2) + this.d.getIntrinsicWidth(), (i * 2) + this.d.getIntrinsicHeight()));
    }

    private void setupTextSize(float f) {
        if (this.o) {
            this.c.a(f);
        } else {
            this.c.a(Math.min(f, this.s));
        }
    }

    private void setupTextBackground(@DrawableRes int i) {
        if (this.o) {
            Drawable drawable = getResources().getDrawable(i);
            if (this.r == null) {
                this.r = new o(drawable);
            } else {
                this.r.a(drawable);
            }
            this.c.setBackground(this.r);
            return;
        }
        this.c.setBackgroundResource(i);
    }

    private String a(String str) {
        if (this.o && str != null && str.length() == 1) {
            return " " + str + " ";
        }
        return str;
    }

    private boolean d() {
        return this.j;
    }

    private static void a(View view, int i, int i2) {
        view.layout(i, i2, view.getMeasuredWidth() + i, view.getMeasuredHeight() + i2);
    }

    private void e() {
        if (!this.o || VERSION.SDK_INT >= 18) {
            this.c.setLayerType(0, null);
        } else {
            this.c.setLayerType(1, null);
        }
    }
}
