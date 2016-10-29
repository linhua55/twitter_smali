package com.twitter.android.media.widget;

import com.twitter.media.request.ImageResponse;
import com.twitter.media.request.c;
import com.twitter.media.ui.image.MediaImageView;

/* compiled from: Twttr */
class u implements c {
    final /* synthetic */ MediaImageView a;
    final /* synthetic */ FilterFilmstripView b;

    u(FilterFilmstripView filterFilmstripView, MediaImageView mediaImageView) {
        this.b = filterFilmstripView;
        this.a = mediaImageView;
    }

    public void a(ImageResponse imageResponse) {
        this.a.setAlpha(1.0f);
    }
}
