package com.twitter.android.widget;

import android.widget.RadioGroup;
import android.widget.RadioGroup.OnCheckedChangeListener;

/* compiled from: Twttr */
class fv implements OnCheckedChangeListener {
    final /* synthetic */ TwitterAccessPreference a;

    fv(TwitterAccessPreference twitterAccessPreference) {
        this.a = twitterAccessPreference;
    }

    public void onCheckedChanged(RadioGroup radioGroup, int i) {
        this.a.c.setEnabled(i == 2131953341);
    }
}
