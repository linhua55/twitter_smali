package com.twitter.android;

import android.text.Editable;
import com.twitter.util.ui.e;

/* compiled from: Twttr */
class gv extends e {
    final /* synthetic */ gu a;

    gv(gu guVar) {
        this.a = guVar;
    }

    public void afterTextChanged(Editable editable) {
        this.a.a(editable.toString());
    }
}
