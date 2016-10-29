package com.twitter.library.media.manager;

import com.twitter.media.model.MediaFile;
import com.twitter.media.request.h;

/* compiled from: Twttr */
public class c extends h<c, d> {
    MediaFile a;

    public c(String str) {
        super(str);
    }

    public b a() {
        return new b(this);
    }

    public c a(MediaFile mediaFile) {
        this.a = mediaFile;
        return this;
    }
}
