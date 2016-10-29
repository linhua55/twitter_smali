package com.twitter.android.settings;

import android.preference.CheckBoxPreference;
import com.twitter.android.util.an;
import com.twitter.library.api.UserSettings;

/* compiled from: Twttr */
class t implements an {
    final /* synthetic */ UserSettings a;
    final /* synthetic */ PrivacyAndContentActivity b;

    t(PrivacyAndContentActivity privacyAndContentActivity, UserSettings userSettings) {
        this.b = privacyAndContentActivity;
        this.a = userSettings;
    }

    public void c_(boolean z) {
        boolean z2 = true;
        if (this.b.k == null) {
            return;
        }
        if (z) {
            this.b.k.setEnabled(true);
            this.b.k.setOnPreferenceChangeListener(this.b);
            CheckBoxPreference b = this.b.k;
            if (this.a == null || !this.a.l) {
                z2 = false;
            }
            b.setChecked(z2);
            return;
        }
        this.b.k = null;
        this.b.b("discoverable_by_mobile_phone");
    }
}
