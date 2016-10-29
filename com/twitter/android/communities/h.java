package com.twitter.android.communities;

import android.view.View;
import android.view.View.OnClickListener;

/* compiled from: Twttr */
class h implements OnClickListener {
    final /* synthetic */ CommunityLaunchDebugPreference a;

    h(CommunityLaunchDebugPreference communityLaunchDebugPreference) {
        this.a = communityLaunchDebugPreference;
    }

    public void onClick(View view) {
        if (this.a.d != null) {
            this.a.a(Long.valueOf(this.a.d.getText().toString()).longValue());
        }
    }
}
