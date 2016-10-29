package com.twitter.media.decoder;

import com.twitter.media.model.MediaType;

/* compiled from: Twttr */
final class c implements d {
    c() {
    }

    public ImageDecoder a(MediaType mediaType) {
        if (mediaType == MediaType.d || mediaType == MediaType.f) {
            return new i();
        }
        if (mediaType == MediaType.e) {
            return new h();
        }
        return new a();
    }
}
