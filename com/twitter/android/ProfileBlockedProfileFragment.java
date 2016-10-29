package com.twitter.android;

import android.view.View;
import android.view.ViewStub;
import android.widget.TextView;
import com.twitter.android.profiles.as;

/* compiled from: Twttr */
public class ProfileBlockedProfileFragment extends ProfileSingleViewFragment {
    protected int m() {
        return 2130969238;
    }

    public void onInflate(ViewStub viewStub, View view) {
        view.findViewById(2131953137).setVisibility(8);
        as.a(getActivity(), (TextView) view.findViewById(2131953138), this.a.k);
    }
}
