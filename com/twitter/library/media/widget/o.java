package com.twitter.library.media.widget;

import android.animation.PropertyValuesHolder;
import android.animation.ValueAnimator;
import android.graphics.RectF;

/* compiled from: Twttr */
class o extends l {
    private float a;
    private float b;
    private float c;

    o(CroppableImageView croppableImageView, float f, float f2, float f3, float f4, float f5) {
        super(croppableImageView);
        this.a = f;
        this.b = f3;
        float width = croppableImageView.getActiveRect().width();
        float f6 = width * f5;
        this.c = width;
        PropertyValuesHolder ofFloat = PropertyValuesHolder.ofFloat("x", new float[]{f, f2});
        PropertyValuesHolder ofFloat2 = PropertyValuesHolder.ofFloat("y", new float[]{f3, f4});
        PropertyValuesHolder ofFloat3 = PropertyValuesHolder.ofFloat("width", new float[]{width, f6});
        super.a(ValueAnimator.ofPropertyValuesHolder(new PropertyValuesHolder[]{ofFloat, ofFloat2, ofFloat3}));
    }

    public void onAnimationUpdate(ValueAnimator valueAnimator) {
        CroppableImageView b = b();
        if (b != null) {
            float floatValue = ((Float) valueAnimator.getAnimatedValue("x")).floatValue();
            float floatValue2 = ((Float) valueAnimator.getAnimatedValue("y")).floatValue();
            float floatValue3 = ((Float) valueAnimator.getAnimatedValue("width")).floatValue();
            float f = floatValue - this.a;
            float f2 = floatValue2 - this.b;
            float f3 = floatValue3 / this.c;
            RectF activeRect = b.getActiveRect();
            b.a(activeRect.centerX(), activeRect.centerY(), f, f2, f3, 0);
            b.a(f, f2, f3);
            this.a = floatValue;
            this.b = floatValue2;
            this.c = floatValue3;
        }
    }
}
