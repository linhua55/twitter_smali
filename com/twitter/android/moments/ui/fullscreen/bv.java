package com.twitter.android.moments.ui.fullscreen;

import com.twitter.android.widget.ToggleImageButton;
import com.twitter.util.z;

/* compiled from: Twttr */
class bv implements z<Boolean> {
    final /* synthetic */ ToggleImageButton a;
    final /* synthetic */ bt b;

    bv(bt btVar, ToggleImageButton toggleImageButton) {
        this.b = btVar;
        this.a = toggleImageButton;
    }

    public void a(Boolean bool) {
        this.a.setToggledOn(!bool.booleanValue());
    }
}
