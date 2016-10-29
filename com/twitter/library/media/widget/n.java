package com.twitter.library.media.widget;

import android.animation.PropertyValuesHolder;
import android.animation.ValueAnimator;
import android.graphics.Matrix;
import android.graphics.RectF;
import com.twitter.util.math.b;

/* compiled from: Twttr */
class n extends l {
    private int a;
    private float b;
    private float c;
    private float d;

    n(CroppableImageView croppableImageView, int i) {
        super(croppableImageView);
        this.a = 0;
        this.b = 1.0f;
        this.c = 0.0f;
        this.d = 0.0f;
        RectF activeRect = croppableImageView.getActiveRect();
        Matrix matrix = new Matrix();
        float centerX = activeRect.centerX();
        float centerY = activeRect.centerY();
        matrix.postRotate((float) i, centerX, centerY);
        RectF imageRect = croppableImageView.getImageRect();
        matrix.mapRect(imageRect);
        float max = Math.max(1.0f, b.a(imageRect, activeRect, false));
        matrix.postScale(max, max, centerX, centerY);
        imageRect.set(croppableImageView.getImageRect());
        matrix.mapRect(imageRect);
        float a = b.a(0.0f, imageRect.right, imageRect.left, activeRect.right, activeRect.left);
        float a2 = b.a(0.0f, imageRect.bottom, imageRect.top, activeRect.bottom, activeRect.top);
        PropertyValuesHolder ofInt = PropertyValuesHolder.ofInt("rot", new int[]{0, i});
        PropertyValuesHolder ofFloat = PropertyValuesHolder.ofFloat("scale", new float[]{1.0f, max});
        PropertyValuesHolder ofFloat2 = PropertyValuesHolder.ofFloat("x", new float[]{0.0f, a});
        PropertyValuesHolder ofFloat3 = PropertyValuesHolder.ofFloat("y", new float[]{0.0f, a2});
        super.a(ValueAnimator.ofPropertyValuesHolder(new PropertyValuesHolder[]{ofInt, ofFloat, ofFloat2, ofFloat3}));
    }

    public void onAnimationUpdate(ValueAnimator valueAnimator) {
        CroppableImageView b = b();
        if (b != null) {
            int intValue = ((Integer) valueAnimator.getAnimatedValue("rot")).intValue();
            float floatValue = ((Float) valueAnimator.getAnimatedValue("scale")).floatValue();
            float floatValue2 = ((Float) valueAnimator.getAnimatedValue("x")).floatValue();
            float floatValue3 = ((Float) valueAnimator.getAnimatedValue("y")).floatValue();
            int i = intValue - this.a;
            float f = floatValue / this.b;
            float f2 = floatValue2 - this.c;
            float f3 = floatValue3 - this.d;
            RectF activeRect = b.getActiveRect();
            b.a(activeRect.centerX() + this.c, activeRect.centerY() + this.d, f2, f3, f, i);
            this.a = intValue;
            this.b = floatValue;
            this.c = floatValue2;
            this.d = floatValue3;
        }
    }
}
