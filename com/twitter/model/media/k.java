package com.twitter.model.media;

import com.twitter.model.media.foundmedia.FoundMediaOrigin;
import com.twitter.model.media.foundmedia.FoundMediaProvider;
import com.twitter.util.serialization.p;
import com.twitter.util.serialization.q;
import java.io.IOException;

/* compiled from: Twttr */
class k extends com.twitter.util.serialization.k<MediaSource> {
    static final k a;

    k() {
    }

    protected /* synthetic */ Object b(p pVar, int i) throws IOException, ClassNotFoundException {
        return a(pVar, i);
    }

    static {
        a = new k();
    }

    protected void a(q qVar, MediaSource mediaSource) throws IOException {
        qVar.e(MediaSource.a(mediaSource)).b(mediaSource.b()).a(mediaSource.c(), FoundMediaProvider.a).a(mediaSource.d(), FoundMediaOrigin.a);
    }

    protected MediaSource a(p pVar, int i) throws IOException, ClassNotFoundException {
        FoundMediaProvider foundMediaProvider;
        FoundMediaOrigin foundMediaOrigin;
        try {
            foundMediaProvider = (FoundMediaProvider) pVar.a(FoundMediaProvider.a);
            try {
                foundMediaOrigin = (FoundMediaOrigin) pVar.a(FoundMediaOrigin.a);
            } catch (Exception e) {
                foundMediaOrigin = null;
                return MediaSource.a(pVar.e(), pVar.i(), foundMediaProvider, foundMediaOrigin);
            }
        } catch (Exception e2) {
            foundMediaProvider = null;
            foundMediaOrigin = null;
            return MediaSource.a(pVar.e(), pVar.i(), foundMediaProvider, foundMediaOrigin);
        }
        return MediaSource.a(pVar.e(), pVar.i(), foundMediaProvider, foundMediaOrigin);
    }
}
