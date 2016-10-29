package com.twitter.android;

import android.text.Editable;
import com.twitter.util.ui.e;

/* compiled from: Twttr */
class lm extends e {
    final /* synthetic */ PhoneMTEntryFragment a;

    lm(PhoneMTEntryFragment phoneMTEntryFragment) {
        this.a = phoneMTEntryFragment;
    }

    public void afterTextChanged(Editable editable) {
        this.a.b();
    }
}
