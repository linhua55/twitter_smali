package com.twitter.android;

import android.os.Bundle;
import android.view.View;
import com.twitter.android.timeline.aw;

/* compiled from: Twttr */
class sb implements kr<View, aw> {
    final /* synthetic */ TimelineFragment a;

    sb(TimelineFragment timelineFragment) {
        this.a = timelineFragment;
    }

    public void a(View view, aw awVar, Bundle bundle) {
        if (awVar != null) {
            TimelineFragment.e(this.a).a(awVar, bundle.getInt("position") + 1);
        }
    }
}
