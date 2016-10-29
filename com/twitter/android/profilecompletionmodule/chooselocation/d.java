package com.twitter.android.profilecompletionmodule.chooselocation;

import android.text.Editable;
import com.twitter.util.ui.e;

/* compiled from: Twttr */
class d extends e {
    final /* synthetic */ ChooseLocationScreen a;

    d(ChooseLocationScreen chooseLocationScreen) {
        this.a = chooseLocationScreen;
    }

    public void afterTextChanged(Editable editable) {
        ((b) this.a.getPresenter()).a(editable);
    }
}
