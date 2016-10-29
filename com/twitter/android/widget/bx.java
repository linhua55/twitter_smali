package com.twitter.android.widget;

import android.widget.RadioGroup;
import android.widget.RadioGroup.OnCheckedChangeListener;

/* compiled from: Twttr */
class bx implements OnCheckedChangeListener {
    final /* synthetic */ LocalePreference a;

    bx(LocalePreference localePreference) {
        this.a = localePreference;
    }

    public void onCheckedChanged(RadioGroup radioGroup, int i) {
        this.a.d.setEnabled(i == 2131952663);
    }
}
