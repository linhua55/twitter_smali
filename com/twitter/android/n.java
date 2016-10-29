package com.twitter.android;

import android.view.View;
import android.view.View.OnClickListener;
import com.twitter.model.core.Tweet;

/* compiled from: Twttr */
class n implements OnClickListener {
    final /* synthetic */ ActivityFragment a;

    n(ActivityFragment activityFragment) {
        this.a = activityFragment;
    }

    public void onClick(View view) {
        ActivityFragment.a(this.a, (Tweet) view.getTag(), "ntv2_quote_tweet");
    }
}
