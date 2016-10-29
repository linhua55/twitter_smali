package com.twitter.android.moments.ui.fullscreen;

import aez;
import afu;
import ahh;
import com.twitter.media.ui.image.AspectRatioFrameLayout;

/* compiled from: Twttr */
public class he {
    private final AspectRatioFrameLayout a;
    private final ScaleToFitFrameLayout b;
    private float c;
    private int d;
    private boolean e;

    public he(AspectRatioFrameLayout aspectRatioFrameLayout, ScaleToFitFrameLayout scaleToFitFrameLayout) {
        this.a = aspectRatioFrameLayout;
        this.b = scaleToFitFrameLayout;
    }

    public afu a() {
        return new hf(this);
    }

    private void a(ahh ahh) {
        int i;
        if (this.e) {
            i = 0;
        } else {
            i = Math.min(this.b.getHeight() - ((int) (((float) this.b.getWidth()) / this.c)), this.d);
        }
        ahh.a(i);
        aez aez = new aez();
        aez.a.a(1.0f, 0.0f, (float) (i / 2));
        aez.b.a(1.0f, 0.0f, 0.0f);
        ahh.a(aez);
    }
}
