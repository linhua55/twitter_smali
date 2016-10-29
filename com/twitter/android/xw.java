package com.twitter.android;

import android.text.Editable;
import android.widget.Button;
import com.twitter.util.aj;
import com.twitter.util.ui.e;

/* compiled from: Twttr */
class xw extends e {
    final /* synthetic */ Button a;
    final /* synthetic */ VerifyLoginActivity b;

    xw(VerifyLoginActivity verifyLoginActivity, Button button) {
        this.b = verifyLoginActivity;
        this.a = button;
    }

    public void afterTextChanged(Editable editable) {
        this.a.setEnabled(aj.b(editable.toString()));
    }
}
