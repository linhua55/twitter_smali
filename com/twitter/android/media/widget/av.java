package com.twitter.android.media.widget;

import com.twitter.media.request.ImageResponse;
import com.twitter.media.ui.image.MediaImageView;
import com.twitter.media.ui.image.m;

/* compiled from: Twttr */
class av implements m {
    final /* synthetic */ MediaAttachmentsView a;

    av(MediaAttachmentsView mediaAttachmentsView) {
        this.a = mediaAttachmentsView;
    }

    public void a(MediaImageView mediaImageView, ImageResponse imageResponse) {
        if (imageResponse.f() != null) {
            mediaImageView.startAnimation(MediaAttachmentsView.a(this.a));
            mediaImageView.setOnImageLoadedListener(null);
        }
    }
}
