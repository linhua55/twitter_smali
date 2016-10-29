package com.twitter.android.av.watchmode;

import com.twitter.app.common.inject.d;
import com.twitter.library.av.playback.AVDataSource;
import com.twitter.library.scribe.TwitterScribeAssociation;

/* compiled from: Twttr */
public class l extends d {
    private final AVDataSource a;
    private final TwitterScribeAssociation b;

    l(AVDataSource aVDataSource, TwitterScribeAssociation twitterScribeAssociation) {
        this.a = aVDataSource;
        this.b = twitterScribeAssociation;
    }

    AVDataSource a() {
        return this.a;
    }

    TwitterScribeAssociation b() {
        return this.b;
    }

    static com.twitter.app.common.di.d a(h hVar) {
        return hVar;
    }

    static com.twitter.app.common.di.d a(q qVar) {
        return qVar;
    }
}
