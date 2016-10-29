package com.twitter.android;

import android.view.View;
import android.view.ViewStub;
import com.twitter.android.profiles.d;
import com.twitter.android.profiles.e;

/* compiled from: Twttr */
public class ProfileBlockerInterstitialFragment extends ProfileSingleViewFragment {
    protected int m() {
        return 2130969216;
    }

    public void onInflate(ViewStub viewStub, View view) {
        d dVar = new d(getActivity(), view, this.a.k);
        if (getActivity() instanceof e) {
            dVar.a((e) getActivity());
        }
    }
}
