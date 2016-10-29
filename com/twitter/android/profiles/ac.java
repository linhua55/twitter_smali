package com.twitter.android.profiles;

import android.view.View;
import android.widget.TextView;
import com.twitter.ui.view.a;

/* compiled from: Twttr */
class ac extends a {
    final /* synthetic */ TextView a;
    final /* synthetic */ ProfileDetailsViewManager b;

    ac(ProfileDetailsViewManager profileDetailsViewManager, int i, TextView textView) {
        this.b = profileDetailsViewManager;
        this.a = textView;
        super(i);
    }

    public void onClick(View view) {
        if (ProfileDetailsViewManager.e(this.b) != null) {
            ProfileDetailsViewManager.e(this.b).onClick(this.a);
        }
    }
}
