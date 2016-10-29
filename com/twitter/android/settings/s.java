package com.twitter.android.settings;

import com.twitter.android.util.an;

/* compiled from: Twttr */
class s implements an {
    final /* synthetic */ PrivacyAndContentActivity a;

    s(PrivacyAndContentActivity privacyAndContentActivity) {
        this.a = privacyAndContentActivity;
    }

    public void c_(boolean z) {
        if (!z) {
            this.a.k.setSummary(this.a.getString(2131363641));
        }
    }
}
