package com.twitter.library.client;

import android.widget.CompoundButton;
import android.widget.CompoundButton.OnCheckedChangeListener;

/* compiled from: Twttr */
class i implements OnCheckedChangeListener {
    final /* synthetic */ AbsPreferenceActivity a;
    final /* synthetic */ h b;

    i(h hVar, AbsPreferenceActivity absPreferenceActivity) {
        this.b = hVar;
        this.a = absPreferenceActivity;
    }

    public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
        boolean z2 = true;
        if (!this.b.b.a(z, true)) {
            h hVar = this.b;
            if (z) {
                z2 = false;
            }
            hVar.c(z2);
        }
    }
}
