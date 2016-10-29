package com.twitter.ui.widget;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RadialGradient;
import android.graphics.Shader.TileMode;
import android.graphics.drawable.shapes.OvalShape;

/* compiled from: Twttr */
class c extends OvalShape {
    final /* synthetic */ CircleImageView a;
    private final RadialGradient b;
    private final int c;
    private final Paint d;
    private final int e;

    c(CircleImageView circleImageView, int i, int i2) {
        this.a = circleImageView;
        this.d = new Paint();
        this.c = i;
        this.e = i2;
        this.b = new RadialGradient((float) (this.e / 2), (float) (this.e / 2), (float) this.c, new int[]{1023410176, 0}, null, TileMode.CLAMP);
        this.d.setShader(this.b);
    }

    public void draw(Canvas canvas, Paint paint) {
        int width = this.a.getWidth();
        int height = this.a.getHeight();
        canvas.drawCircle((float) (width / 2), (float) (height / 2), (float) ((this.e / 2) + this.c), this.d);
        canvas.drawCircle((float) (width / 2), (float) (height / 2), (float) (this.e / 2), paint);
    }
}
