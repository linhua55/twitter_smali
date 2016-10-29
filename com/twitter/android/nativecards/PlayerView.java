package com.twitter.android.nativecards;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import com.twitter.android.mx;
import defpackage.bct;
import defpackage.bcw;

/* compiled from: Twttr */
public class PlayerView extends ViewGroup {
    private float a;
    private final ak b;
    private final al c;
    private final aj d;
    private final Drawable e;
    private final int f;
    private final int g;

    public PlayerView(Context context) {
        this(context, null);
    }

    public PlayerView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, bct.cardViewStyle);
    }

    public PlayerView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.a = 1.0f;
        this.b = new ak();
        this.c = new al();
        this.d = new aj();
        setWillNotDraw(false);
        TypedArray obtainStyledAttributes = context.getTheme().obtainStyledAttributes(attributeSet, mx.NativeCardPlayerView, i, 0);
        try {
            this.f = obtainStyledAttributes.getResourceId(1, bcw.player_overlay);
            this.g = 16842874;
            this.e = obtainStyledAttributes.getDrawable(0);
        } finally {
            obtainStyledAttributes.recycle();
        }
    }

    public void a() {
        this.c.a();
    }

    public void setAspectRatio(float f) {
        this.a = f;
        this.c.a(f);
        requestLayout();
    }

    public void a(Context context) {
        this.b.a(this, context, null, this.g);
        d();
    }

    protected void b() {
        this.b.a(this);
    }

    public void b(Context context) {
        this.d.a(context, this.f);
        d();
    }

    public void a(Context context, String str) {
        this.c.a((ViewGroup) this, context, str, new LayoutParams(-1, -2), this.e);
        d();
    }

    protected void c() {
        this.c.a((ViewGroup) this);
    }

    protected void d() {
        this.b.a();
    }

    public void drawableStateChanged() {
        super.drawableStateChanged();
        this.d.a(getDrawableState());
        postInvalidate();
    }

    public void onMeasure(int i, int i2) {
        int i3;
        int defaultSize = getDefaultSize(getSuggestedMinimumWidth(), i);
        if (this.a > 0.0f) {
            i3 = (int) (((float) defaultSize) / this.a);
        } else {
            i3 = defaultSize;
        }
        setMeasuredDimension(defaultSize, i3);
        measureChildren(i, i2);
    }

    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        this.c.a(z, i, i2, i3, i4);
        this.b.a(z, i, i2, i3, i4);
        this.d.a(z, i, i2, i3, i4);
    }

    protected void dispatchDraw(Canvas canvas) {
        super.dispatchDraw(canvas);
        this.d.a(canvas);
    }
}
