package com.twitter.ui.widget;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Paint.Cap;
import android.graphics.Paint.Style;
import android.graphics.Path;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.support.v4.view.ViewCompat;
import android.util.AttributeSet;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.view.animation.LinearInterpolator;
import defpackage.crw;
import defpackage.cry;
import defpackage.cse;
import java.util.HashMap;
import java.util.Map;

/* compiled from: Twttr */
public class TwitterIndeterminateProgressSpinner extends View {
    private final Paint a;
    private final Path b;
    private final RectF c;
    private final Map<Integer, Animator> d;
    private Drawable e;
    private float f;
    private float g;
    private float h;
    private float i;
    private float j;
    private float k;
    private boolean l;

    public TwitterIndeterminateProgressSpinner(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.a = new Paint(1);
        this.b = new Path();
        this.c = new RectF();
        this.d = new HashMap(2);
        a(context, attributeSet, 0);
    }

    public TwitterIndeterminateProgressSpinner(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.a = new Paint(1);
        this.b = new Path();
        this.c = new RectF();
        this.d = new HashMap(2);
        a(context, attributeSet, i);
    }

    private void a(Context context, AttributeSet attributeSet, int i) {
        boolean z = false;
        if (attributeSet != null) {
            TypedArray obtainStyledAttributes = context.getTheme().obtainStyledAttributes(attributeSet, cse.TwitterIndeterminateProgressSpinner, i, 0);
            this.g = obtainStyledAttributes.getDimension(cse.TwitterIndeterminateProgressSpinner_logoSize, 0.0f);
            this.f = obtainStyledAttributes.getDimension(cse.TwitterIndeterminateProgressSpinner_ringSize, 0.0f);
            this.h = obtainStyledAttributes.getDimension(cse.TwitterIndeterminateProgressSpinner_ringThickness, 0.0f);
            z = obtainStyledAttributes.getBoolean(cse.TwitterIndeterminateProgressSpinner_whiteForeground, false);
            obtainStyledAttributes.recycle();
        }
        this.a.setColor(z ? -1 : getResources().getColor(crw.twitter_blue));
        this.a.setStyle(Style.STROKE);
        this.a.setStrokeCap(Cap.ROUND);
        this.a.setStrokeWidth(this.h);
        this.e = getResources().getDrawable(z ? cry.twitter_logo_white : cry.twitter_logo);
    }

    private void a() {
        if (!this.l) {
            this.l = true;
            if (this.d.isEmpty()) {
                ObjectAnimator ofFloat = ObjectAnimator.ofFloat(this, "sweepEnd", new float[]{0.0f, 360.0f});
                ObjectAnimator ofFloat2 = ObjectAnimator.ofFloat(this, "sweepStart", new float[]{0.0f, 360.0f});
                AnimatorSet animatorSet = new AnimatorSet();
                animatorSet.playSequentially(new Animator[]{ofFloat, ofFloat2});
                animatorSet.setDuration(1000);
                animatorSet.setInterpolator(new AccelerateDecelerateInterpolator());
                animatorSet.addListener(new aq(this));
                ofFloat = ObjectAnimator.ofFloat(this, "rotate", new float[]{0.0f, 360.0f});
                ofFloat.setDuration(3000);
                ofFloat.setInterpolator(new LinearInterpolator());
                ofFloat.setRepeatCount(-1);
                this.d.put(Integer.valueOf(2), animatorSet);
                this.d.put(Integer.valueOf(3), ofFloat);
            }
            for (Animator start : this.d.values()) {
                start.start();
            }
        }
    }

    private void b() {
        if (this.l) {
            this.l = false;
            for (Animator cancel : this.d.values()) {
                cancel.cancel();
            }
        }
    }

    protected void onMeasure(int i, int i2) {
        int ceil = (int) Math.ceil((double) (this.f + this.h));
        int size = MeasureSpec.getSize(i);
        int size2 = MeasureSpec.getSize(i2);
        switch (MeasureSpec.getMode(i)) {
            case Integer.MIN_VALUE:
                size = Math.min(ceil, size);
                break;
            case 1073741824:
                break;
            default:
                size = ceil;
                break;
        }
        switch (MeasureSpec.getMode(i2)) {
            case Integer.MIN_VALUE:
                ceil = Math.min(ceil, size2);
                break;
            case 1073741824:
                ceil = size2;
                break;
        }
        setMeasuredDimension(size, ceil);
    }

    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        this.c.set((((float) i) - this.f) / 2.0f, (((float) i2) - this.f) / 2.0f, (((float) i) + this.f) / 2.0f, (((float) i2) + this.f) / 2.0f);
        float intrinsicHeight = ((float) this.e.getIntrinsicHeight()) / ((float) this.e.getIntrinsicWidth());
        this.e.setBounds((int) ((((float) i) - this.g) / 2.0f), (int) ((((float) i2) - (this.g * intrinsicHeight)) / 2.0f), (int) ((((float) i) + this.g) / 2.0f), (int) (((intrinsicHeight * this.g) + ((float) i2)) / 2.0f));
    }

    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        this.e.draw(canvas);
        this.b.rewind();
        this.b.addArc(this.c, this.i + this.k, this.j - this.i);
        canvas.drawPath(this.b, this.a);
    }

    private float getSweepStart() {
        return this.i;
    }

    private void setSweepStart(float f) {
        this.i = f;
        this.j = 360.0f;
        ViewCompat.postInvalidateOnAnimation(this);
    }

    private float getSweepEnd() {
        return this.j;
    }

    private void setSweepEnd(float f) {
        this.i = 0.0f;
        this.j = f;
        ViewCompat.postInvalidateOnAnimation(this);
    }

    private float getRotate() {
        return this.k;
    }

    private void setRotate(float f) {
        this.k = f;
        ViewCompat.postInvalidateOnAnimation(this);
    }

    public void setVisibility(int i) {
        if (getVisibility() != i) {
            super.setVisibility(i);
            if (i == 8 || i == 4) {
                b();
            } else {
                a();
            }
        }
    }

    protected void onVisibilityChanged(View view, int i) {
        super.onVisibilityChanged(view, i);
        if (i == 8 || i == 4) {
            b();
        } else {
            a();
        }
    }

    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        a();
    }

    protected void onDetachedFromWindow() {
        b();
        super.onDetachedFromWindow();
    }
}
