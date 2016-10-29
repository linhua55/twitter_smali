package com.twitter.android.composer;

import com.twitter.util.ui.e;

/* compiled from: Twttr */
class bt extends e {
    final /* synthetic */ bs a;

    bt(bs bsVar) {
        this.a = bsVar;
    }

    public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        this.a.a(charSequence, i, i3);
    }
}
