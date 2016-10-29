package com.twitter.app.lists;

import android.text.Editable;
import com.twitter.util.ui.e;

/* compiled from: Twttr */
class a extends e {
    final /* synthetic */ ListCreateEditActivity a;

    a(ListCreateEditActivity listCreateEditActivity) {
        this.a = listCreateEditActivity;
    }

    public void afterTextChanged(Editable editable) {
        this.a.Y().h();
    }
}
