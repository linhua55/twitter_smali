package com.twitter.app.users;

import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.CompoundButton.OnCheckedChangeListener;

/* compiled from: Twttr */
final class g implements OnCheckedChangeListener {
    final /* synthetic */ CheckBox a;

    g(CheckBox checkBox) {
        this.a = checkBox;
    }

    public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
        if (z != this.a.isChecked()) {
            this.a.setChecked(z);
        }
    }
}
