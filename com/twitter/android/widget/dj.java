package com.twitter.android.widget;

import android.text.Editable;
import com.twitter.util.ui.e;

/* compiled from: Twttr */
class dj extends e {
    final /* synthetic */ PinEntryEditText a;

    dj(PinEntryEditText pinEntryEditText) {
        this.a = pinEntryEditText;
    }

    public void afterTextChanged(Editable editable) {
        if (editable.length() == this.a.a && this.a.i != null) {
            this.a.i.c(this.a.getText().toString());
        }
    }
}
