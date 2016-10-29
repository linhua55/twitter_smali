package com.twitter.library.av.playback;

import com.twitter.library.client.Session;
import com.twitter.library.client.ad;

/* compiled from: Twttr */
class aq extends ad {
    private final AVPlayer a;

    aq(AVPlayer aVPlayer) {
        this.a = aVPlayer;
    }

    public void a(Session session) {
        super.a(session);
        this.a.a(true, true);
    }

    public void a(Session session, boolean z) {
        super.a(session, z);
        this.a.a(true, true);
    }
}
