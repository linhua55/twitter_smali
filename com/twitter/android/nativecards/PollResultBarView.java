package com.twitter.android.nativecards;

import android.animation.ObjectAnimator;
import android.animation.TimeInterpolator;
import android.content.Context;
import android.content.res.Resources.Theme;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.util.AttributeSet;
import android.view.View;
import android.view.animation.AnimationUtils;
import com.twitter.android.mx;

/* compiled from: Twttr */
public class PollResultBarView extends View {
    private final float[] a;
    private final ObjectAnimator b;
    private Rect c;
    private final GradientDrawable d;
    private final float e;
    private int f;
    private int g;
    private boolean h;

    public PollResultBarView(Context context) {
        this(context, null, 0);
    }

    public PollResultBarView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public PollResultBarView(Context context, AttributeSet attributeSet, int i) {
        int i2;
        int i3;
        super(context, attributeSet, i);
        int i4 = 0;
        if (attributeSet != null) {
            Theme theme = context.getTheme();
            int[] iArr = mx.PollResultBarView;
            TypedArray obtainStyledAttributes = theme.obtainStyledAttributes(attributeSet, iArr, i, 0);
            i2 = 0;
            try {
                Drawable drawable = obtainStyledAttributes.getDrawable(0);
                this.e = obtainStyledAttributes.getDimension(1, 0.0f);
                iArr = obtainStyledAttributes.getResourceId(2, 17563649);
                i2 = obtainStyledAttributes.getInt(3, i4);
                i4 = obtainStyledAttributes.getInt(4, 0);
                if (drawable instanceof GradientDrawable) {
                    this.d = (GradientDrawable) drawable.mutate();
                } else {
                    this.d = null;
                }
                i3 = i4;
                i4 = i2;
                i2 = iArr;
            } finally {
                obtainStyledAttributes.recycle();
            }
        } else {
            this.e = 0.0f;
            this.d = null;
            i4 = 0;
            i2 = 17563649;
            i3 = 0;
        }
        this.a = new float[8];
        this.a[0] = this.e;
        this.a[1] = this.e;
        this.a[2] = 0.0f;
        this.a[3] = 0.0f;
        this.a[4] = 0.0f;
        this.a[5] = 0.0f;
        this.a[6] = this.e;
        this.a[7] = this.e;
        this.b = ObjectAnimator.ofInt(this, "percentage", new int[]{0, 100});
        this.b.setStartDelay((long) i4);
        this.b.setDuration((long) i3);
        TimeInterpolator loadInterpolator = AnimationUtils.loadInterpolator(context, i2);
        if (loadInterpolator != null) {
            this.b.setInterpolator(loadInterpolator);
        }
        setWillNotDraw(false);
    }

    public void a() {
        this.b.setIntValues(new int[]{this.g, this.f});
        this.b.start();
    }

    public void setPercentage(int i) {
        if (this.d != null) {
            if (this.h || i == 100) {
                this.d.setCornerRadius(this.e);
            } else {
                this.d.setCornerRadius(2.0f);
                this.d.setCornerRadii(this.a);
            }
        }
        this.g = i;
        setBarBounds(this.g);
        invalidate();
    }

    public void setGoalPercentage(int i) {
        this.f = i;
    }

    public void b() {
        setPercentage(this.f);
    }

    public void setBarColor(int i) {
        if (this.d != null) {
            this.d.setColor(i);
        }
    }

    public void setRoundAllCorners(boolean z) {
        this.h = z;
    }

    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        setBarBounds(this.g);
    }

    protected void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        setBarBounds(this.g);
    }

    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        this.d.draw(canvas);
    }

    private void setBarBounds(int i) {
        if (this.c == null) {
            this.c = new Rect();
        }
        this.c.left = 0;
        this.c.top = 0;
        this.c.right = (getWidth() * i) / 100;
        this.c.bottom = getHeight();
        this.d.setBounds(this.c);
    }
}
