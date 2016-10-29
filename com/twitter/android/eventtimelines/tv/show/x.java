package com.twitter.android.eventtimelines.tv.show;

import android.widget.EditText;
import com.twitter.util.object.e;
import cys;

/* compiled from: Twttr */
class x implements cys<Long> {
    final /* synthetic */ TvShowLaunchDebugPreference a;

    x(TvShowLaunchDebugPreference tvShowLaunchDebugPreference) {
        this.a = tvShowLaunchDebugPreference;
    }

    public /* synthetic */ void call(Object obj) {
        a((Long) obj);
    }

    public void a(Long l) {
        ((EditText) e.a(this.a.d)).setText(String.format("%d", new Object[]{l}));
    }
}
