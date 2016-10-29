package com.twitter.android.profilecompletionmodule.addbio;

import android.text.Editable;
import com.twitter.util.ui.e;

/* compiled from: Twttr */
class d extends e {
    final /* synthetic */ AddBioScreen a;

    d(AddBioScreen addBioScreen) {
        this.a = addBioScreen;
    }

    public void afterTextChanged(Editable editable) {
        ((b) this.a.getPresenter()).b(editable.toString());
    }
}
