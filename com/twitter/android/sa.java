package com.twitter.android;

import android.os.Bundle;
import android.view.View;
import com.twitter.android.timeline.aw;

/* compiled from: Twttr */
class sa implements kr<View, aw> {
    final /* synthetic */ TimelineFragment a;

    sa(TimelineFragment timelineFragment) {
        this.a = timelineFragment;
    }

    public void a(View view, aw awVar, Bundle bundle) {
        if (awVar != null) {
            TimelineFragment.a(this.a, view, awVar);
        }
    }
}
