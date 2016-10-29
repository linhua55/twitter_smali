package com.twitter.ui.widget;

import android.animation.ObjectAnimator;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.support.v4.view.ViewCompat;
import android.util.AttributeSet;
import android.widget.ImageView;

/* compiled from: Twttr */
public class ClippedImageView extends ImageView {
    private final Rect a;
    private final Rect b;
    private final Rect c;
    private boolean d;
    private boolean e;
    private int f;
    private int g;
    private boolean h;
    private float i;

    public ClippedImageView(Context context) {
        this(context, null);
    }

    public ClippedImageView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public ClippedImageView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.a = new Rect();
        this.b = new Rect();
        this.c = new Rect();
        this.d = false;
        this.e = false;
        this.i = 1.0f;
    }

    public void setClippingBounds(Rect rect) {
        this.b.set(rect);
    }

    public void a(int i) {
        this.d = true;
        this.h = false;
        this.e = false;
        ObjectAnimator.ofFloat(this, "revealPercentage", new float[]{0.0f, 1.0f}).setDuration((long) i).start();
    }

    public void b(int i) {
        this.d = true;
        this.h = true;
        this.e = false;
        ObjectAnimator.ofFloat(this, "revealPercentage", new float[]{1.0f, 0.0f}).setDuration((long) i).start();
    }

    public void setRevealPercentage(float f) {
        this.i = f;
    }

    public float getRevealPercentage() {
        return this.i;
    }

    protected void onDraw(Canvas canvas) {
        if (this.d) {
            if (!this.e) {
                this.e = true;
                canvas.getClipBounds(this.a);
                if (this.h) {
                    this.c.set(this.a);
                } else {
                    this.c.set(this.b);
                }
                this.g = Math.abs(this.a.width() - this.b.width()) / 2;
                this.f = Math.abs(this.a.height() - this.b.height()) / 2;
            }
            if (this.i < 0.0f || this.i > 1.0f) {
                this.d = false;
                canvas.clipRect(this.c);
            } else {
                float f = this.h ? 1.0f - this.i : this.i;
                int round = Math.round(((float) this.g) * f);
                int round2 = Math.round(f * ((float) this.f));
                if (this.h) {
                    this.c.right = Math.max(this.c.right - round, this.b.right);
                    this.c.left = Math.min(round + this.c.left, this.b.left);
                    this.c.top = Math.min(this.c.top + round2, this.b.top);
                    this.c.bottom = Math.max(this.c.bottom - round2, this.b.bottom);
                } else {
                    this.c.right += round;
                    this.c.left -= round;
                    this.c.top -= round2;
                    this.c.bottom = round2 + this.c.bottom;
                }
                canvas.clipRect(this.c);
            }
        }
        super.onDraw(canvas);
        if (this.d) {
            ViewCompat.postInvalidateOnAnimation(this);
        }
    }
}
