package com.twitter.android.widget;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.support.v4.view.ViewCompat;
import android.util.AttributeSet;
import android.view.View;
import android.view.animation.AnimationUtils;
import android.view.animation.Interpolator;

/* compiled from: Twttr */
public class SwipeProgressBarView extends View {
    private static final Interpolator a;
    private final Paint b;
    private final RectF c;
    private float d;
    private long e;
    private long f;
    private boolean g;
    private int h;
    private int i;
    private int j;
    private int k;
    private int l;
    private final Rect m;

    static {
        a = i.a();
    }

    public SwipeProgressBarView(Context context) {
        super(context);
        this.b = new Paint();
        this.c = new RectF();
        this.m = new Rect();
        a(context);
    }

    public SwipeProgressBarView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.b = new Paint();
        this.c = new RectF();
        this.m = new Rect();
        a(context);
    }

    public SwipeProgressBarView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.b = new Paint();
        this.c = new RectF();
        this.m = new Rect();
        a(context);
    }

    private void a(Context context) {
        this.i = -1291845632;
        this.j = RtlSpacingHelper.UNDEFINED;
        this.k = 1291845632;
        this.l = 436207616;
        this.h = context.getResources().getDimensionPixelSize(2131690497);
    }

    public void a(int i, int i2, int i3, int i4) {
        this.i = i;
        this.j = i2;
        this.k = i3;
        this.l = i4;
    }

    public void setColorScheme(int[] iArr) {
        if (iArr.length == 4) {
            a(iArr[0], iArr[1], iArr[2], iArr[3]);
        }
    }

    public void a() {
        if (!this.g) {
            this.d = 0.0f;
            this.e = AnimationUtils.currentAnimationTimeMillis();
            this.g = true;
            postInvalidate();
        }
    }

    public void b() {
        if (this.g) {
            this.d = 0.0f;
            this.f = AnimationUtils.currentAnimationTimeMillis();
            this.g = false;
            postInvalidate();
        }
    }

    protected void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        this.m.right = getMeasuredWidth();
        if (this.m.bottom == 0 && this.m.top == 0) {
            this.m.bottom = this.h;
        }
    }

    protected void onDraw(Canvas canvas) {
        int width = this.m.width();
        int height = this.m.height();
        int i = width / 2;
        int i2 = height / 2;
        int save = canvas.save();
        canvas.clipRect(this.m);
        if (this.g || this.f > 0) {
            Canvas canvas2;
            int i3;
            long currentAnimationTimeMillis = AnimationUtils.currentAnimationTimeMillis();
            long j = (currentAnimationTimeMillis - this.e) / 2000;
            float f = ((float) ((currentAnimationTimeMillis - this.e) % 2000)) / 20.0f;
            Object obj;
            if (this.g) {
                obj = null;
            } else {
                if (currentAnimationTimeMillis - this.f >= 1000) {
                    this.f = 0;
                    return;
                }
                float f2 = (float) (width / 2);
                float interpolation = a.getInterpolation((((float) ((currentAnimationTimeMillis - this.f) % 1000)) / 10.0f) / 100.0f) * f2;
                this.c.set(((float) i) - interpolation, 0.0f, interpolation + ((float) i), (float) height);
                canvas.saveLayerAlpha(this.c, 0, 0);
                obj = 1;
            }
            if (j == 0) {
                canvas.drawColor(this.i);
            } else if (f >= 0.0f && f < 25.0f) {
                canvas.drawColor(this.l);
            } else if (f >= 25.0f && f < 50.0f) {
                canvas.drawColor(this.i);
            } else if (f < 50.0f || f >= 75.0f) {
                canvas.drawColor(this.k);
            } else {
                canvas.drawColor(this.j);
            }
            if (f >= 0.0f && f <= 25.0f) {
                canvas2 = canvas;
                a(canvas2, (float) i, (float) i2, this.i, ((25.0f + f) * 2.0f) / 100.0f);
            }
            if (f >= 0.0f && f <= 50.0f) {
                canvas2 = canvas;
                a(canvas2, (float) i, (float) i2, this.j, (2.0f * f) / 100.0f);
            }
            if (f >= 25.0f && f <= 75.0f) {
                canvas2 = canvas;
                a(canvas2, (float) i, (float) i2, this.k, ((f - 25.0f) * 2.0f) / 100.0f);
            }
            if (f >= 50.0f && f <= 100.0f) {
                canvas2 = canvas;
                a(canvas2, (float) i, (float) i2, this.l, ((f - 50.0f) * 2.0f) / 100.0f);
            }
            if (f >= 75.0f && f <= 100.0f) {
                canvas2 = canvas;
                a(canvas2, (float) i, (float) i2, this.i, ((f - 75.0f) * 2.0f) / 100.0f);
            }
            if (this.d <= 0.0f || r9 == null) {
                i3 = save;
            } else {
                canvas.restoreToCount(save);
                i3 = canvas.save();
                canvas.clipRect(this.m);
                a(canvas, i, i2);
            }
            ViewCompat.postInvalidateOnAnimation(this);
            save = i3;
        } else if (this.d > 0.0f && ((double) this.d) <= 1.0d) {
            a(canvas, i, i2);
        }
        canvas.restoreToCount(save);
    }

    private void a(Canvas canvas, int i, int i2) {
        this.b.setColor(this.i);
        canvas.drawCircle((float) i, (float) i2, ((float) i) * this.d, this.b);
    }

    private void a(Canvas canvas, float f, float f2, int i, float f3) {
        this.b.setColor(i);
        canvas.save();
        canvas.translate(f, f2);
        float interpolation = a.getInterpolation(f3);
        canvas.scale(interpolation, interpolation);
        canvas.drawCircle(0.0f, 0.0f, f, this.b);
        canvas.restore();
    }

    public void setProgressTop(int i) {
        this.m.top = i;
        this.m.bottom = this.h + i;
        invalidate();
    }
}
