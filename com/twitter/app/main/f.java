package com.twitter.app.main;

import android.widget.CompoundButton;
import android.widget.CompoundButton.OnCheckedChangeListener;
import com.twitter.library.client.navigation.ac;

/* compiled from: Twttr */
class f implements OnCheckedChangeListener {
    final /* synthetic */ ac a;
    final /* synthetic */ MainActivity b;

    f(MainActivity mainActivity, ac acVar) {
        this.b = mainActivity;
        this.a = acVar;
    }

    public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
        this.b.a(this.a);
    }
}
