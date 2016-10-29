package com.twitter.android.commerce.util;

import android.graphics.Camera;
import android.graphics.Matrix;
import android.view.View;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.view.animation.Animation;
import android.view.animation.Transformation;

/* compiled from: Twttr */
public class f extends Animation {
    private Camera a;
    private View b;
    private View c;
    private final float d;
    private final float e;
    private boolean f;
    private boolean g;

    public f(View view, View view2, int i, int i2) {
        this.f = true;
        this.b = view;
        this.c = view2;
        this.d = (float) i;
        this.e = (float) i2;
        setDuration(500);
        setFillAfter(true);
        setInterpolator(new AccelerateDecelerateInterpolator());
    }

    public void a() {
        this.f = false;
        View view = this.c;
        this.c = this.b;
        this.b = view;
    }

    public void initialize(int i, int i2, int i3, int i4) {
        super.initialize(i, i2, i3, i4);
        this.a = new Camera();
    }

    protected void applyTransformation(float f, Transformation transformation) {
        double d = 3.141592653589793d * ((double) f);
        float f2 = (float) ((180.0d * d) / 3.141592653589793d);
        if (f >= 0.5f) {
            f2 -= 180.0f;
            if (!this.g) {
                this.b.setVisibility(8);
                this.c.setVisibility(0);
                this.g = true;
            }
        }
        if (this.f) {
            f2 = -f2;
        }
        Matrix matrix = transformation.getMatrix();
        this.a.save();
        this.a.translate(0.0f, 0.0f, (float) (Math.sin(d) * 150.0d));
        this.a.rotateY(f2);
        this.a.getMatrix(matrix);
        this.a.restore();
        matrix.preTranslate(-this.d, -this.e);
        matrix.postTranslate(this.d, this.e);
    }
}
