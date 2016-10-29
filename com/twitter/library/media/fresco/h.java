package com.twitter.library.media.fresco;

import com.twitter.media.ui.image.config.c;
import com.twitter.media.ui.image.config.g;

/* compiled from: Twttr */
class h implements c {
    final /* synthetic */ FrescoMediaImageView a;

    h(FrescoMediaImageView frescoMediaImageView) {
        this.a = frescoMediaImageView;
    }

    public c a(int i, float f) {
        this.a.k = f;
        this.a.a.a(i, f);
        this.a.a.setRoundingConfig(this.a.getRoundingConfig());
        return this;
    }

    public c a(g gVar) {
        this.a.a.setRoundingStrategy(gVar);
        this.a.a.setRoundingConfig(this.a.getRoundingConfig());
        return this;
    }

    public c a(float f) {
        this.a.a.setScaleX(f);
        return this;
    }

    public c b(float f) {
        this.a.a.setScaleY(f);
        return this;
    }
}
