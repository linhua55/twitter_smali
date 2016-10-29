package com.twitter.android.av;

import android.view.View;
import com.twitter.android.periscope.g;

/* compiled from: Twttr */
class ax implements g {
    final /* synthetic */ PeriscopeFullscreenChromeView a;

    ax(PeriscopeFullscreenChromeView periscopeFullscreenChromeView) {
        this.a = periscopeFullscreenChromeView;
    }

    public void a(View view) {
        PeriscopeFullscreenChromeView.a(this.a).addView(view);
    }
}
