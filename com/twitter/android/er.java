package com.twitter.android;

import android.text.Editable;
import com.twitter.util.ui.e;

/* compiled from: Twttr */
class er extends e {
    final /* synthetic */ EditProfileOnboardingActivity a;

    er(EditProfileOnboardingActivity editProfileOnboardingActivity) {
        this.a = editProfileOnboardingActivity;
    }

    public void afterTextChanged(Editable editable) {
        this.a.w();
    }
}
