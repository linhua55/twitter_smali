package com.twitter.android.settings.developer;

import android.widget.Toast;

/* compiled from: Twttr */
class r implements Runnable {
    final /* synthetic */ String a;
    final /* synthetic */ FeatureSwitchesSettingsActivity b;

    r(FeatureSwitchesSettingsActivity featureSwitchesSettingsActivity, String str) {
        this.b = featureSwitchesSettingsActivity;
        this.a = str;
    }

    public void run() {
        Toast.makeText(this.b.getApplicationContext(), "Invalid json string: " + this.a, 1).show();
    }
}
