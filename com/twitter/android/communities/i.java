package com.twitter.android.communities;

import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemSelectedListener;

/* compiled from: Twttr */
class i implements OnItemSelectedListener {
    final /* synthetic */ CommunityLaunchDebugPreference a;

    i(CommunityLaunchDebugPreference communityLaunchDebugPreference) {
        this.a = communityLaunchDebugPreference;
    }

    public void onItemSelected(AdapterView<?> adapterView, View view, int i, long j) {
        Long l = (Long) CommunityLaunchDebugPreference.a.get((String) adapterView.getItemAtPosition(i));
        if (l != null) {
            this.a.b.b_(l);
        }
    }

    public void onNothingSelected(AdapterView<?> adapterView) {
    }
}
