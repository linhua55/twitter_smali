package com.twitter.android.nativecards.pollcompose;

import android.text.Editable;
import com.twitter.util.ui.e;

/* compiled from: Twttr */
class ab extends e {
    final /* synthetic */ int a;
    final /* synthetic */ PollComposeView b;

    ab(PollComposeView pollComposeView, int i) {
        this.b = pollComposeView;
        this.a = i;
    }

    public void afterTextChanged(Editable editable) {
        if (this.b.b != null) {
            this.b.b.a(this.a, editable.toString());
        }
    }
}
