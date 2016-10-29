package com.twitter.android.av;

import android.animation.Animator;
import android.animation.Animator.AnimatorListener;
import android.animation.ObjectAnimator;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Paint.Cap;
import android.graphics.Paint.Join;
import android.graphics.Paint.Style;
import android.graphics.drawable.Drawable;
import android.os.SystemClock;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.Interpolator;
import aoa;
import com.google.android.exoplayer.util.NalUnitUtil;
import cwj;
import java.util.ArrayList;
import java.util.List;
import java.util.Random;

/* compiled from: Twttr */
public class AutoPlayEqualizerDrawable extends Drawable {
    final List<EqualizerBar> a;
    boolean b;
    private int c;
    private long d;
    private int e;
    private ColorFilter f;
    private float g;
    private int h;
    private int i;
    private float j;
    private final Paint k;
    private final int l;
    private final int m;
    private final Interpolator n;
    private final Runnable o;

    @aoa
    /* compiled from: Twttr */
    class EqualizerBar implements AnimatorListener {
        public int a;
        public float b;
        public float c;
        public int d;
        private final Random e;
        private final int f;
        private final float g;
        private ObjectAnimator h;
        private boolean i;

        EqualizerBar(int i, float f) {
            this.a = 1;
            this.b = 0.1f;
            this.c = 0.0f;
            this.d = -1;
            this.e = new Random();
            this.f = i;
            this.g = f;
        }

        @aoa
        public void setHeight(float f) {
            this.b = f;
        }

        @aoa
        public float getHeight() {
            return this.b;
        }

        @aoa
        public void setHeightOffset(float f) {
            this.c = f;
        }

        public void a(Canvas canvas, Paint paint) {
            if (this.c != 0.0f) {
                canvas.save();
                canvas.translate(0.0f, -this.c);
                canvas.drawLine(0.0f, 0.0f, 0.0f, -this.b, paint);
                canvas.restore();
                return;
            }
            canvas.drawLine(0.0f, 0.0f, 0.0f, -this.b, paint);
        }

        public void a() {
            if (this.h != null) {
                this.i = true;
                this.h.cancel();
            }
        }

        public void b() {
            float c;
            int nextFloat;
            if (this.a == 1) {
                this.a = 0;
                c = this.b + c();
                nextFloat = (int) (399.0f * ((this.e.nextFloat() * 0.5f) + 0.5f));
            } else {
                this.a = 1;
                c = this.b - c();
                nextFloat = (int) (666.0f * ((this.e.nextFloat() * 0.5f) + 0.5f));
            }
            c = (float) ((int) Math.max(1.0f, Math.min(((float) this.f) - this.g, c)));
            this.i = false;
            this.h = ObjectAnimator.ofFloat(this, "height", new float[]{this.b, c}).setDuration((long) nextFloat);
            this.h.addListener(this);
            this.h.start();
        }

        private float c() {
            return (((float) this.f) - this.g) * (0.33f + (0.66f * this.e.nextFloat()));
        }

        public void onAnimationStart(Animator animator) {
        }

        public void onAnimationEnd(Animator animator) {
            if (!this.i) {
                b();
            }
        }

        public void onAnimationCancel(Animator animator) {
        }

        public void onAnimationRepeat(Animator animator) {
        }
    }

    public AutoPlayEqualizerDrawable() {
        boolean z = true;
        this.a = new ArrayList();
        this.e = NalUnitUtil.EXTENDED_SAR;
        this.g = 0.0f;
        this.h = 0;
        this.i = 0;
        this.j = 0.0f;
        this.k = new Paint(1);
        this.l = -1;
        this.m = Color.argb(NalUnitUtil.EXTENDED_SAR, 187, 187, 187);
        this.n = new DecelerateInterpolator();
        this.o = new q(this);
        if (cwj.a()) {
            z = false;
        }
        this.b = z;
        a(0);
    }

    public void setBounds(int i, int i2, int i3, int i4) {
        int i5 = 0;
        int i6 = (getBounds() != null && i3 - i == getBounds().width() && i4 - i2 == getBounds().height()) ? 0 : 1;
        super.setBounds(i, i2, i3, i4);
        if (i6 != 0) {
            this.h = getBounds().width();
            this.i = getBounds().height();
            this.g = b(this.h);
            this.j = c(this.h);
            this.k.setStyle(Style.STROKE);
            this.k.setStrokeWidth(this.j);
            this.k.setStrokeCap(Cap.ROUND);
            this.k.setStrokeJoin(Join.ROUND);
            this.k.setColor(-1);
            this.a.clear();
            while (i5 < 4) {
                EqualizerBar equalizerBar = new EqualizerBar(this.i, this.j);
                equalizerBar.d = i5;
                this.a.add(equalizerBar);
                i5++;
            }
            b();
        }
    }

    private float b(int i) {
        return (((float) i) - c(i)) / 3.0f;
    }

    private float c(int i) {
        return ((float) (i / 4)) * 0.65f;
    }

    public void a(int i) {
        if (i != this.c) {
            this.c = i;
            b();
        }
    }

    private void b() {
        if (this.b) {
            if (this.c == 1) {
                this.d = SystemClock.elapsedRealtime();
            } else {
                for (EqualizerBar heightOffset : this.a) {
                    heightOffset.setHeightOffset(0.0f);
                }
            }
            if (this.c == 2) {
                for (EqualizerBar heightOffset2 : this.a) {
                    heightOffset2.a();
                    heightOffset2.b();
                }
            } else {
                for (EqualizerBar heightOffset22 : this.a) {
                    heightOffset22.a();
                }
            }
            scheduleSelf(this.o, SystemClock.uptimeMillis());
        }
    }

    public int a() {
        return this.c;
    }

    public void setAlpha(int i) {
        this.e = i;
    }

    public void setColorFilter(ColorFilter colorFilter) {
        this.f = colorFilter;
    }

    public int getOpacity() {
        return this.e;
    }

    public void draw(Canvas canvas) {
        this.k.setAlpha(this.e);
        this.k.setColorFilter(this.f);
        if (this.c == 1) {
            this.k.setColor(this.m);
            for (EqualizerBar equalizerBar : this.a) {
                equalizerBar.b = 0.1f;
                equalizerBar.c = a(equalizerBar.d, this.i);
            }
        } else {
            this.k.setColor(-1);
        }
        canvas.save();
        canvas.translate(this.j * 0.5f, ((float) this.i) - (this.j * 0.5f));
        for (EqualizerBar equalizerBar2 : this.a) {
            equalizerBar2.a(canvas, this.k);
            canvas.translate(this.g, 0.0f);
        }
        canvas.restore();
        if (this.c != 0 && this.b) {
            scheduleSelf(this.o, SystemClock.uptimeMillis());
        }
    }

    private float a(int i, int i2) {
        float abs = Math.abs(((((((float) (SystemClock.elapsedRealtime() - this.d)) % 999.0f) * 7.9800005f) / 999.0f) - 3.0f) - ((float) i));
        return abs < 1.5f ? ((1.0f - this.n.getInterpolation(abs / 1.5f)) * 0.33f) * ((float) i2) : 0.0f;
    }
}
