package com.twitter.android;

import android.text.Editable;
import android.widget.Button;
import com.twitter.util.ui.e;

/* compiled from: Twttr */
class bj extends e {
    final /* synthetic */ Button a;
    final /* synthetic */ ChangeEmailActivity b;

    bj(ChangeEmailActivity changeEmailActivity, Button button) {
        this.b = changeEmailActivity;
        this.a = button;
    }

    public void afterTextChanged(Editable editable) {
        Button button = this.a;
        boolean z = this.b.a() && this.b.b();
        button.setEnabled(z);
    }
}
