package com.twitter.android.nativecards.pollcompose;

import android.graphics.LinearGradient;
import android.graphics.Shader;
import android.graphics.Shader.TileMode;
import android.graphics.drawable.ShapeDrawable.ShaderFactory;
import android.view.ViewGroup;

/* compiled from: Twttr */
class n extends ShaderFactory {
    private final ViewGroup a;
    private final int b;

    n(ViewGroup viewGroup, int i) {
        this.a = viewGroup;
        this.b = i;
    }

    public Shader resize(int i, int i2) {
        float measuredHeight = ((float) this.a.getMeasuredHeight()) / ((float) this.b);
        float[] fArr = new float[]{0.0f, ((((float) i2) - ((float) this.a.getMeasuredHeight())) - measuredHeight) / ((float) i2), 1.0f};
        return new LinearGradient(0.0f, 0.0f, 0.0f, (float) i2, m.b, fArr, TileMode.CLAMP);
    }
}
