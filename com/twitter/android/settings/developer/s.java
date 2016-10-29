package com.twitter.android.settings.developer;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import bvj;

/* compiled from: Twttr */
class s implements OnClickListener {
    final /* synthetic */ FeatureSwitchesSettingsActivity a;

    s(FeatureSwitchesSettingsActivity featureSwitchesSettingsActivity) {
        this.a = featureSwitchesSettingsActivity;
    }

    public void onClick(DialogInterface dialogInterface, int i) {
        if (-1 == i) {
            bvj.d().a();
            this.a.f.edit().clear().apply();
            this.a.b(new com.twitter.library.api.s(this.a, this.a.l(), bvj.e()).k("FS fetches are always polling."), 0);
        }
    }
}
