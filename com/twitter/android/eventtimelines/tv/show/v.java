package com.twitter.android.eventtimelines.tv.show;

import android.view.View;
import android.view.View.OnClickListener;

/* compiled from: Twttr */
class v implements OnClickListener {
    final /* synthetic */ TvShowLaunchDebugPreference a;

    v(TvShowLaunchDebugPreference tvShowLaunchDebugPreference) {
        this.a = tvShowLaunchDebugPreference;
    }

    public void onClick(View view) {
        if (this.a.d != null) {
            this.a.a(Long.valueOf(this.a.d.getText().toString()).longValue());
        }
    }
}
