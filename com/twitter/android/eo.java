package com.twitter.android;

import android.text.Editable;
import com.twitter.util.ui.e;

/* compiled from: Twttr */
class eo extends e {
    final /* synthetic */ EditProfileActivity a;

    eo(EditProfileActivity editProfileActivity) {
        this.a = editProfileActivity;
    }

    public void afterTextChanged(Editable editable) {
        this.a.Y().h();
    }
}
