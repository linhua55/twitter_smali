package com.twitter.android.moments.ui;

import android.animation.Animator;
import android.animation.AnimatorInflater;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;
import com.twitter.android.mx;

/* compiled from: Twttr */
public class DoubleTapFavoriteHud extends View {
    private final Drawable a;
    private final Drawable b;
    private final Animator c;
    private int d;
    private float e;
    private boolean f;
    private boolean g;

    public DoubleTapFavoriteHud(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 2130772000);
    }

    public DoubleTapFavoriteHud(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, mx.DoubleTapFavoriteHud, i, 0);
        this.a = obtainStyledAttributes.getDrawable(0);
        this.b = obtainStyledAttributes.getDrawable(1);
        obtainStyledAttributes.recycle();
        this.c = AnimatorInflater.loadAnimator(context, 2131099648);
        this.c.setTarget(this);
    }

    public void a() {
        a(true);
    }

    public void b() {
        a(false);
    }

    private void a(boolean z) {
        this.f = z;
        if (this.g) {
            this.c.cancel();
        }
        this.g = true;
        this.c.start();
    }

    public void setDrawableAlpha(int i) {
        this.d = i;
        c();
    }

    public void setDrawableScale(float f) {
        this.e = f;
        c();
    }

    protected void onDraw(Canvas canvas) {
        if (this.g) {
            Drawable drawable = this.f ? this.a : this.b;
            int intrinsicWidth = (int) (((float) drawable.getIntrinsicWidth()) * this.e);
            int intrinsicHeight = (int) (((float) drawable.getIntrinsicHeight()) * this.e);
            int width = (getWidth() - intrinsicWidth) / 2;
            int height = (getHeight() - intrinsicHeight) / 2;
            drawable.setBounds(width, height, intrinsicWidth + width, intrinsicHeight + height);
            drawable.setAlpha(this.d);
            drawable.draw(canvas);
        }
    }

    private void c() {
        postInvalidateOnAnimation();
    }
}
