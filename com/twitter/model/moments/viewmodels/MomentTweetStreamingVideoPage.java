package com.twitter.model.moments.viewmodels;

import com.twitter.model.moments.k;
import com.twitter.util.object.e;

/* compiled from: Twttr */
public class MomentTweetStreamingVideoPage extends o {
    public final VideoType a;
    public final k b;

    /* compiled from: Twttr */
    public enum VideoType {
        VINE,
        PROFESSIONAL,
        CONSUMER,
        ANIMATED_GIF
    }

    public MomentTweetStreamingVideoPage(u uVar) {
        super(uVar);
        this.b = (k) e.b(uVar.j, k.b);
        this.a = (VideoType) e.a(uVar.k);
    }

    public MomentPage$Type d() {
        return MomentPage$Type.VIDEO;
    }

    public boolean p() {
        return this.a == VideoType.PROFESSIONAL || this.a == VideoType.CONSUMER;
    }

    public boolean q() {
        return this.a == VideoType.CONSUMER || this.a == VideoType.PROFESSIONAL || this.a == VideoType.VINE;
    }
}
