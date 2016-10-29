package com.twitter.android;

import android.content.Context;
import com.twitter.library.api.timeline.i;
import com.twitter.model.core.Tweet;

/* compiled from: Twttr */
class jp extends i {
    final /* synthetic */ Tweet a;
    final /* synthetic */ MediaActionBarFragment b;

    jp(MediaActionBarFragment mediaActionBarFragment, Context context, Tweet tweet) {
        this.b = mediaActionBarFragment;
        this.a = tweet;
        super(context);
    }

    protected void a(long j, boolean z, int i) {
        if (this.b.isAdded()) {
            MediaActionBarFragment.a(this.b, this.a, z, i);
        }
    }
}
