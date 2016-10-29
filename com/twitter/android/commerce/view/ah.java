package com.twitter.android.commerce.view;

import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemSelectedListener;

/* compiled from: Twttr */
class ah implements OnItemSelectedListener {
    final /* synthetic */ ProfileEntryBase a;

    ah(ProfileEntryBase profileEntryBase) {
        this.a = profileEntryBase;
    }

    public void onItemSelected(AdapterView<?> adapterView, View view, int i, long j) {
        if (this.a.h != null) {
            this.a.h.setError(null);
            this.a.h.setVisibility(8);
        }
        this.a.j.setError(null);
    }

    public void onNothingSelected(AdapterView<?> adapterView) {
    }
}
