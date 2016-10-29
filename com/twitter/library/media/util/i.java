package com.twitter.library.media.util;

import android.content.Context;
import com.twitter.library.media.fresco.FrescoMediaImageView;
import com.twitter.media.ui.image.BaseMediaImageView;
import com.twitter.media.ui.image.MediaImageView;
import com.twitter.media.ui.image.RichImageView;
import defpackage.bul;

/* compiled from: Twttr */
public class i {
    private static final i a;

    static {
        a = new i();
    }

    public static i a() {
        return a;
    }

    private i() {
    }

    public BaseMediaImageView a(Context context, boolean z, int i, int i2) {
        if (z && bul.a()) {
            FrescoMediaImageView frescoMediaImageView = new FrescoMediaImageView(context, i, i2);
            frescoMediaImageView.setProgressiveJpegEnabled(bul.b());
            return frescoMediaImageView;
        }
        RichImageView richImageView = new RichImageView(context);
        richImageView.setOverlayDrawable(i);
        return new MediaImageView(context, richImageView, false);
    }
}
