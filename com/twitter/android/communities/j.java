package com.twitter.android.communities;

import android.widget.EditText;
import com.twitter.util.object.e;
import cys;

/* compiled from: Twttr */
class j implements cys<Long> {
    final /* synthetic */ CommunityLaunchDebugPreference a;

    j(CommunityLaunchDebugPreference communityLaunchDebugPreference) {
        this.a = communityLaunchDebugPreference;
    }

    public /* synthetic */ void call(Object obj) {
        a((Long) obj);
    }

    public void a(Long l) {
        ((EditText) e.a(this.a.d)).setText(String.format("%d", new Object[]{l}));
    }
}
