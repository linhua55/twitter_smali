package com.twitter.android;

import android.os.Bundle;
import android.view.View;
import com.twitter.model.core.Tweet;

/* compiled from: Twttr */
class i implements kr<View, Tweet> {
    final /* synthetic */ ActivityDetailFragment a;

    i(ActivityDetailFragment activityDetailFragment) {
        this.a = activityDetailFragment;
    }

    public void a(View view, Tweet tweet, Bundle bundle) {
        ActivityDetailFragment.a(this.a).a(tweet, bundle);
    }
}
