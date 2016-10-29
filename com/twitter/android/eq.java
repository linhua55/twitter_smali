package com.twitter.android;

import android.text.Editable;
import com.twitter.util.ui.e;

/* compiled from: Twttr */
class eq extends e {
    final /* synthetic */ EditProfileOnboardingActivity a;

    eq(EditProfileOnboardingActivity editProfileOnboardingActivity) {
        this.a = editProfileOnboardingActivity;
    }

    public void afterTextChanged(Editable editable) {
        this.a.w();
    }
}
