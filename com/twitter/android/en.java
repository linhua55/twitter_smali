package com.twitter.android;

import android.text.Editable;
import com.twitter.util.ui.e;

/* compiled from: Twttr */
class en extends e {
    final /* synthetic */ EditProfileActivity a;

    en(EditProfileActivity editProfileActivity) {
        this.a = editProfileActivity;
    }

    public void afterTextChanged(Editable editable) {
        this.a.B.a(editable);
    }
}
