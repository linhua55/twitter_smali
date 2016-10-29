package com.twitter.android.media.widget;

import android.view.animation.Animation;
import android.widget.ImageView;
import com.twitter.media.ui.image.MediaImageView;
import com.twitter.util.ui.c;

/* compiled from: Twttr */
class v extends c {
    final /* synthetic */ MediaImageView a;
    final /* synthetic */ ImageView b;
    final /* synthetic */ FilterFilmstripView c;

    v(FilterFilmstripView filterFilmstripView, MediaImageView mediaImageView, ImageView imageView) {
        this.c = filterFilmstripView;
        this.a = mediaImageView;
        this.b = imageView;
    }

    public void onAnimationEnd(Animation animation) {
        this.a.removeView(this.b);
    }
}
