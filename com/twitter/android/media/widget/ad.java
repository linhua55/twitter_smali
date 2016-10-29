package com.twitter.android.media.widget;

import android.text.Editable;
import android.text.TextWatcher;

/* compiled from: Twttr */
class ad implements TextWatcher {
    final /* synthetic */ FoundMediaSearchView a;

    ad(FoundMediaSearchView foundMediaSearchView) {
        this.a = foundMediaSearchView;
    }

    public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
    }

    public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
    }

    public void afterTextChanged(Editable editable) {
        this.a.a(editable.length());
    }
}
