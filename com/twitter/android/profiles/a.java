package com.twitter.android.profiles;

import com.twitter.media.ui.image.BackgroundImageView;
import com.twitter.media.ui.image.MediaImageView;

/* compiled from: Twttr */
public class a {
    private final MediaImageView a;
    private final int b;
    private final BackgroundImageView c;
    private float d;
    private float e;
    private float f;
    private boolean g;

    public a(MediaImageView mediaImageView, BackgroundImageView backgroundImageView, int i) {
        this.g = true;
        this.a = mediaImageView;
        this.c = backgroundImageView;
        this.b = i;
    }

    public void a(int i) {
        if (this.g) {
            a();
            this.g = false;
        }
        int min = Math.min(i, (int) ((this.f - ((float) this.b)) - 1.0f));
        if (((float) min) < this.f - ((float) this.b)) {
            float pivotY = ((((float) min) * this.d) / (((this.a.getPivotY() / this.e) * this.e) * (((float) this.b) - this.f))) + 1.0f;
            this.a.setScaleX(pivotY);
            this.a.setScaleY(pivotY);
        }
    }

    private void a() {
        this.d = (float) (-((this.a.getTop() - this.c.getBottom()) - this.a.getPaddingTop()));
        this.e = (float) this.a.getHeight();
        this.f = (float) this.c.getHeight();
        this.a.setPivotX(0.5f * ((float) this.a.getWidth()));
        this.a.setPivotY(1.0f * this.e);
    }
}
