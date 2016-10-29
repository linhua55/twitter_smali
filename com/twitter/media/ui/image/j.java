package com.twitter.media.ui.image;

import com.twitter.media.ui.image.config.a;
import com.twitter.media.ui.image.config.c;
import com.twitter.media.ui.image.config.e;
import com.twitter.media.ui.image.config.g;

/* compiled from: Twttr */
class j implements c {
    final /* synthetic */ MediaImageView a;

    j(MediaImageView mediaImageView) {
        this.a = mediaImageView;
    }

    public c a(int i, float f) {
        if (MediaImageView.a(this.a) instanceof a) {
            ((a) MediaImageView.a(this.a)).a(i, f);
        }
        return this;
    }

    public c a(g gVar) {
        if (MediaImageView.a(this.a) instanceof e) {
            ((e) MediaImageView.a(this.a)).setRoundingStrategy(gVar);
        }
        return this;
    }

    public c a(float f) {
        MediaImageView.a(this.a).setScaleX(f);
        return this;
    }

    public c b(float f) {
        MediaImageView.a(this.a).setScaleY(f);
        return this;
    }
}
