package com.twitter.library.av.playback.livevideo;

import com.twitter.library.av.playback.be;
import com.twitter.model.core.MediaEntity;
import defpackage.bps;

/* compiled from: Twttr */
public class c implements bps {
    private final MediaEntity b;

    c(MediaEntity mediaEntity) {
        this.b = mediaEntity;
    }

    public String a() {
        return String.valueOf(this.b.c);
    }

    public String b() {
        return be.a(this.b);
    }

    public long c() {
        return this.b.j;
    }
}
