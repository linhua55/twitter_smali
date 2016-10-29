package com.twitter.library.av.model;

import com.twitter.library.av.playback.bd;
import com.twitter.model.av.AVMedia;

/* compiled from: Twttr */
public class a {
    public long a(AVMedia aVMedia, bd bdVar) {
        return a(aVMedia, bdVar, new b());
    }

    long a(AVMedia aVMedia, bd bdVar, b bVar) {
        if (aVMedia.e()) {
            return bVar.a();
        }
        if ("ad".equals(aVMedia.b())) {
            return bVar.b(bdVar);
        }
        return bVar.a(bdVar);
    }
}
