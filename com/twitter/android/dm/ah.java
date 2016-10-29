package com.twitter.android.dm;

import android.support.v4.app.FragmentActivity;
import android.view.View;
import android.view.View.OnFocusChangeListener;

/* compiled from: Twttr */
class ah implements OnFocusChangeListener {
    final /* synthetic */ ShareViaDMComposeFragment a;

    ah(ShareViaDMComposeFragment shareViaDMComposeFragment) {
        this.a = shareViaDMComposeFragment;
    }

    public void onFocusChange(View view, boolean z) {
        FragmentActivity activity = this.a.getActivity();
        if (z && activity != null && !activity.isChangingConfigurations()) {
            ShareViaDMComposeFragment.a(this.a, true);
            ShareViaDMComposeFragment.e(this.a);
            if (ShareViaDMComposeFragment.f(this.a) != null && ShareViaDMComposeFragment.f(this.a).a()) {
                ShareViaDMComposeFragment.f(this.a).b(ShareViaDMComposeFragment.c(this.a));
                ShareViaDMComposeFragment.g(this.a);
            }
        }
    }
}
