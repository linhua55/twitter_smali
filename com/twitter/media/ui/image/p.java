package com.twitter.media.ui.image;

import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.widget.ImageView;

/* compiled from: Twttr */
class p {
    boolean a;
    Drawable b;
    boolean c;

    private p() {
        this.c = true;
    }

    public void a(ImageView imageView) {
        if (this.b != null) {
            this.b.setCallback(null);
            imageView.unscheduleDrawable(this.b);
        }
    }

    public void a(int i, int i2) {
        if (this.a && this.b != null) {
            this.b.setBounds(0, 0, i, i2);
        }
    }

    public void b(ImageView imageView) {
        if (this.b != null && this.b.isStateful()) {
            this.b.setState(imageView.getDrawableState());
        }
    }

    public void a(Canvas canvas) {
        if (this.b != null && this.c) {
            this.b.draw(canvas);
        }
    }
}
