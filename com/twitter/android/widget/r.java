package com.twitter.android.widget;

import android.text.Editable;
import com.twitter.util.ui.e;

/* compiled from: Twttr */
class r extends e {
    final /* synthetic */ ComposerPoiFragment a;

    r(ComposerPoiFragment composerPoiFragment) {
        this.a = composerPoiFragment;
    }

    public void afterTextChanged(Editable editable) {
        ComposerPoiFragment.a(this.a, true);
        ComposerPoiFragment.b(this.a, true);
    }
}
