package com.twitter.library.api.upload;

import com.twitter.library.service.aa;
import com.twitter.media.model.MediaFile;

/* compiled from: Twttr */
public class h extends aa {
    public final long a;
    public final MediaFile b;

    public h(MediaFile mediaFile, int i, Exception exception) {
        this(new aa(), mediaFile, -1);
        a(i, exception);
    }

    public h(aa aaVar, MediaFile mediaFile, long j) {
        a(aaVar);
        this.a = j;
        this.b = mediaFile;
    }

    public long a() {
        return this.a;
    }
}
