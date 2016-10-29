package com.twitter.android;

import android.text.Editable;
import com.twitter.util.ui.e;

/* compiled from: Twttr */
class lq extends e {
    final /* synthetic */ PhoneMTVerifyFragment a;

    lq(PhoneMTVerifyFragment phoneMTVerifyFragment) {
        this.a = phoneMTVerifyFragment;
    }

    public void afterTextChanged(Editable editable) {
        this.a.b();
    }
}
