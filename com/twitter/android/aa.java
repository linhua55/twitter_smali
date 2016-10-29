package com.twitter.android;

import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;

/* compiled from: Twttr */
class aa implements TextWatcher {
    final /* synthetic */ int a;
    final /* synthetic */ String b;
    final /* synthetic */ AltTextActivity c;

    aa(AltTextActivity altTextActivity, int i, String str) {
        this.c = altTextActivity;
        this.a = i;
        this.b = str;
    }

    public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
    }

    public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        if (!TextUtils.isEmpty(charSequence) && charSequence.length() >= this.a) {
            this.c.c.announceForAccessibility(this.b);
        }
    }

    public void afterTextChanged(Editable editable) {
    }
}
