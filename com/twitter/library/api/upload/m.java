package com.twitter.library.api.upload;

import com.twitter.media.model.MediaFile;
import com.twitter.util.concurrent.ObservablePromise;
import com.twitter.util.concurrent.j;

/* compiled from: Twttr */
public class m implements d {
    private final MediaFile a;

    public m(MediaFile mediaFile) {
        this.a = mediaFile;
    }

    public boolean a() {
        return true;
    }

    public MediaFile d() {
        return this.a;
    }

    public void b() {
    }

    public j<Void> c() {
        return ObservablePromise.a(null);
    }
}
