package com.twitter.android.people.adapters;

import com.twitter.model.core.Tweet;
import com.twitter.model.people.am;
import com.twitter.util.object.e;
import cuj;

/* compiled from: Twttr */
final class ad implements cuj<Tweet> {
    final /* synthetic */ am a;

    ad(am amVar) {
        this.a = amVar;
    }

    public boolean a(Tweet tweet) {
        return ((Tweet) e.a(tweet)).s == this.a.a.bf_();
    }
}
