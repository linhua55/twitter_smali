package com.twitter.android.commerce.view;

import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemSelectedListener;
import com.twitter.library.commerce.model.i;

/* compiled from: Twttr */
class ai implements OnItemSelectedListener {
    final /* synthetic */ ProfileEntryBase a;

    ai(ProfileEntryBase profileEntryBase) {
        this.a = profileEntryBase;
    }

    public void onItemSelected(AdapterView<?> adapterView, View view, int i, long j) {
        if (((i) this.a.y.getItem(this.a.e.getSelectedItemPosition())).a().equalsIgnoreCase("US")) {
            this.a.g.setVisibility(0);
            this.a.j.setVisibility(8);
            return;
        }
        this.a.g.setVisibility(8);
        this.a.j.setVisibility(0);
    }

    public void onNothingSelected(AdapterView<?> adapterView) {
    }
}
