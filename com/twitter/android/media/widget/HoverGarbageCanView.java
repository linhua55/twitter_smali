package com.twitter.android.media.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.support.v7.widget.helper.ItemTouchHelper.Callback;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup.MarginLayoutParams;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import android.view.animation.AnimationSet;
import android.view.animation.Interpolator;
import android.view.animation.OvershootInterpolator;
import android.view.animation.RotateAnimation;
import android.view.animation.ScaleAnimation;
import android.widget.FrameLayout;
import com.google.android.exoplayer.chunk.FormatEvaluator.AdaptiveEvaluator;
import com.twitter.android.media.camera.aa;
import com.twitter.android.mx;

/* compiled from: Twttr */
public class HoverGarbageCanView extends FrameLayout {
    private final View a;
    private final View b;
    private final View c;
    private final View d;
    private final View e;
    private final int f;
    private final float g;
    private final int h;
    private int i;

    public HoverGarbageCanView(Context context) {
        this(context, null, 0);
    }

    public HoverGarbageCanView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public HoverGarbageCanView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.i = 0;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, mx.HoverGarbageCanView, i, 0);
        Drawable drawable = 0;
        try {
            this.f = obtainStyledAttributes.getDimensionPixelSize(2, 0) / 2;
            Drawable drawable2 = obtainStyledAttributes.getDrawable(3);
            drawable = obtainStyledAttributes.getDrawable(4);
            float f = obtainStyledAttributes.getFloat(0, 1.0f);
            this.g = obtainStyledAttributes.getFloat(1, 1.0f);
            this.h = obtainStyledAttributes.getInt(5, 0);
            inflate(context, 2130968628, this);
            if (drawable2 != null) {
                this.e = findViewById(2131951953);
                this.e.setBackgroundDrawable(drawable2);
            } else {
                this.e = null;
            }
            this.d = findViewById(2131951954);
            this.d.setBackgroundDrawable(drawable);
            this.a = findViewById(2131951955);
            this.b = this.a.findViewById(2131951956);
            a((MarginLayoutParams) this.b.getLayoutParams(), f);
            this.c = this.a.findViewById(2131951957);
            a((MarginLayoutParams) this.c.getLayoutParams(), f);
        } finally {
            obtainStyledAttributes.recycle();
        }
    }

    public boolean a(View view, Rect rect) {
        boolean z;
        boolean z2 = false;
        int i = 1;
        int i2 = rect.left;
        int i3 = i2;
        i2 = rect.top;
        int i4 = rect.right;
        int i5 = rect.bottom;
        for (View view2 = this; view2 != view; view2 = (View) view2.getParent()) {
            int left = view2.getLeft();
            i3 -= left;
            i4 -= left;
            left = view2.getTop();
            i2 -= left;
            i5 -= left;
        }
        if (this.h == 1) {
            z = i3 <= getWidth() && i4 >= 0 && i2 <= getHeight() && i5 >= 0;
        } else {
            if (i2 < this.a.getBottom()) {
                z2 = true;
            }
            z = z2;
        }
        if (z) {
            i = 2;
        }
        a(i);
        return z;
    }

    public void a() {
        a(0);
    }

    public int getGarbageCanState() {
        return this.i;
    }

    public void b() {
        this.i = 0;
        this.a.setVisibility(4);
        this.d.setAlpha(0.0f);
        this.d.setVisibility(8);
        if (this.e != null) {
            this.e.setVisibility(4);
        }
    }

    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        if (this.a.getVisibility() != 8 && getResources().getConfiguration().orientation != 1) {
            int i5 = aa.a(getContext()) < 180 ? -this.f : this.f;
            this.a.layout(this.a.getLeft() + i5, this.a.getTop(), i5 + this.a.getRight(), this.a.getBottom());
        }
    }

    private void a(int i) {
        if (this.i != i) {
            Animation alphaAnimation;
            Animation scaleAnimation;
            Animation animation;
            int i2;
            Animation animation2;
            this.a.setVisibility(0);
            if (this.e != null) {
                this.e.setVisibility(0);
            }
            Animation animation3 = null;
            Animation rotateAnimation;
            Animation alphaAnimation2;
            if (i == 2) {
                Interpolator overshootInterpolator = new OvershootInterpolator(4.0f);
                rotateAnimation = new RotateAnimation(0.0f, -10.0f, 1, 0.0f, 1, 1.0f);
                rotateAnimation.setInterpolator(overshootInterpolator);
                Animation rotateAnimation2 = new RotateAnimation(0.0f, 10.0f, 0.0f, 0.0f);
                rotateAnimation2.setInterpolator(overshootInterpolator);
                alphaAnimation2 = new AlphaAnimation(0.0f, AdaptiveEvaluator.DEFAULT_BANDWIDTH_FRACTION);
                alphaAnimation = this.e == null ? null : new AlphaAnimation(1.0f, 0.0f);
                if (this.g != 1.0f) {
                    scaleAnimation = new ScaleAnimation(1.0f, this.g, 1.0f, this.g, 1, 0.5f, 1, 0.5f);
                } else {
                    scaleAnimation = null;
                }
                this.d.setVisibility(0);
                animation3 = scaleAnimation;
                animation = rotateAnimation;
                scaleAnimation = alphaAnimation2;
                i2 = Callback.DEFAULT_DRAG_ANIMATION_DURATION;
                animation2 = rotateAnimation2;
            } else if (this.i == 2) {
                rotateAnimation = new RotateAnimation(-10.0f, 0.0f, 1, 0.0f, 1, 1.0f);
                alphaAnimation2 = new RotateAnimation(10.0f, 0.0f, 0.0f, 0.0f);
                if (i == 0) {
                    animation2 = new AnimationSet(true);
                    animation2.addAnimation(rotateAnimation);
                    animation2.addAnimation(new AlphaAnimation(1.0f, 0.0f));
                    scaleAnimation = new AnimationSet(true);
                    scaleAnimation.addAnimation(alphaAnimation2);
                    scaleAnimation.addAnimation(new AlphaAnimation(1.0f, 0.0f));
                    if (this.e == null) {
                        rotateAnimation = null;
                    } else {
                        rotateAnimation = new AlphaAnimation(1.0f, 0.0f);
                    }
                    alphaAnimation = rotateAnimation;
                    rotateAnimation = scaleAnimation;
                    scaleAnimation = animation2;
                } else {
                    if (this.e == null) {
                        alphaAnimation = null;
                    } else {
                        alphaAnimation = new AlphaAnimation(0.0f, 1.0f);
                    }
                    if (this.g != 1.0f) {
                        animation3 = new ScaleAnimation(this.g, 1.0f, this.g, 1.0f, 1, 0.5f, 1, 0.5f);
                        scaleAnimation = rotateAnimation;
                        rotateAnimation = alphaAnimation2;
                    } else {
                        scaleAnimation = rotateAnimation;
                        rotateAnimation = alphaAnimation2;
                    }
                }
                animation2 = rotateAnimation;
                i2 = 200;
                Animation alphaAnimation3 = new AlphaAnimation(AdaptiveEvaluator.DEFAULT_BANDWIDTH_FRACTION, 0.0f);
                animation = scaleAnimation;
                scaleAnimation = alphaAnimation3;
            } else {
                if (i == 0) {
                    animation2 = new AlphaAnimation(1.0f, 0.0f);
                    scaleAnimation = new AlphaAnimation(1.0f, 0.0f);
                    rotateAnimation = this.e == null ? null : new AlphaAnimation(1.0f, 0.0f);
                } else {
                    animation2 = new AlphaAnimation(0.0f, 1.0f);
                    scaleAnimation = new AlphaAnimation(0.0f, 1.0f);
                    rotateAnimation = this.e == null ? null : new AlphaAnimation(0.0f, 1.0f);
                    clearAnimation();
                }
                alphaAnimation = rotateAnimation;
                i2 = Callback.DEFAULT_DRAG_ANIMATION_DURATION;
                animation = animation2;
                animation2 = scaleAnimation;
                scaleAnimation = null;
            }
            this.i = i;
            animation.setFillAfter(true);
            animation.setDuration((long) i2);
            if (i != 2) {
                animation.setAnimationListener(new at(this));
            }
            this.b.startAnimation(animation);
            animation2.setFillAfter(true);
            animation2.setDuration((long) i2);
            this.c.startAnimation(animation2);
            if (animation3 != null) {
                animation3.setDuration((long) i2);
                animation3.setFillAfter(true);
                startAnimation(animation3);
            }
            if (scaleAnimation != null) {
                scaleAnimation.setDuration((long) i2);
                scaleAnimation.setFillAfter(true);
                this.d.setAlpha(AdaptiveEvaluator.DEFAULT_BANDWIDTH_FRACTION);
                this.d.startAnimation(scaleAnimation);
            }
            if (alphaAnimation != null) {
                alphaAnimation.setDuration((long) i2);
                alphaAnimation.setFillAfter(true);
                this.e.setAlpha(1.0f);
                this.e.startAnimation(alphaAnimation);
            }
        }
    }

    private static void a(MarginLayoutParams marginLayoutParams, float f) {
        marginLayoutParams.height = Math.round(((float) marginLayoutParams.height) * f);
        marginLayoutParams.width = Math.round(((float) marginLayoutParams.width) * f);
        marginLayoutParams.leftMargin = Math.round(((float) marginLayoutParams.leftMargin) * f);
        marginLayoutParams.topMargin = Math.round(((float) marginLayoutParams.topMargin) * f);
        marginLayoutParams.rightMargin = Math.round(((float) marginLayoutParams.rightMargin) * f);
        marginLayoutParams.bottomMargin = Math.round(((float) marginLayoutParams.bottomMargin) * f);
    }
}
