package com.twitter.android.commerce.view;

import android.widget.CompoundButton;
import android.widget.CompoundButton.OnCheckedChangeListener;

/* compiled from: Twttr */
class ak implements OnCheckedChangeListener {
    final /* synthetic */ ProfileEntryBillingActivity a;

    ak(ProfileEntryBillingActivity profileEntryBillingActivity) {
        this.a = profileEntryBillingActivity;
    }

    public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
        this.a.a(!z, this.a.a);
        this.a.y.setEnabled(true);
        if (z) {
            this.a.a(this.a.z);
        }
        this.a.c();
    }
}
