package com.twitter.android.eventtimelines.tv.show;

import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemSelectedListener;

/* compiled from: Twttr */
class w implements OnItemSelectedListener {
    final /* synthetic */ TvShowLaunchDebugPreference a;

    w(TvShowLaunchDebugPreference tvShowLaunchDebugPreference) {
        this.a = tvShowLaunchDebugPreference;
    }

    public void onItemSelected(AdapterView<?> adapterView, View view, int i, long j) {
        Long l = (Long) TvShowLaunchDebugPreference.a.get((String) adapterView.getItemAtPosition(i));
        if (l != null) {
            this.a.b.b_(l);
        }
    }

    public void onNothingSelected(AdapterView<?> adapterView) {
    }
}
