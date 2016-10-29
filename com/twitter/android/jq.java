package com.twitter.android;

import com.twitter.library.api.timeline.e;
import com.twitter.model.core.Tweet;

/* compiled from: Twttr */
class jq extends e {
    final /* synthetic */ Tweet a;
    final /* synthetic */ MediaActionBarFragment b;

    jq(MediaActionBarFragment mediaActionBarFragment, Tweet tweet) {
        this.b = mediaActionBarFragment;
        this.a = tweet;
    }

    protected void a(long j, boolean z, int i) {
        if (this.b.isAdded()) {
            MediaActionBarFragment.a(this.b, this.a, z, i);
        }
    }
}
