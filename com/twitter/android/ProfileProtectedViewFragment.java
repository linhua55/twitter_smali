package com.twitter.android;

import android.view.View;
import android.view.ViewStub;
import com.twitter.ui.widget.TypefacesTextView;

/* compiled from: Twttr */
public class ProfileProtectedViewFragment extends ProfileSingleViewFragment {
    protected int m() {
        return 2130969238;
    }

    public void onInflate(ViewStub viewStub, View view) {
        TypefacesTextView typefacesTextView = (TypefacesTextView) view.findViewById(2131953137);
        TypefacesTextView typefacesTextView2 = (TypefacesTextView) view.findViewById(2131953138);
        if (typefacesTextView2 != null && typefacesTextView != null) {
            typefacesTextView.setText(getString(2131364029, new Object[]{this.a.c()}));
            typefacesTextView2.setText(getString(2131363810, new Object[]{this.a.c()}));
        }
    }
}
