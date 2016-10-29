package com.twitter.android;

import android.text.Editable;
import com.twitter.util.aj;
import com.twitter.util.ui.e;

/* compiled from: Twttr */
class iq extends e {
    final /* synthetic */ LoginActivity a;
    private boolean b;
    private final boolean c;

    iq(LoginActivity loginActivity) {
        this.a = loginActivity;
        this.b = false;
        this.c = aj.b(this.a.g.getText());
    }

    public void afterTextChanged(Editable editable) {
        if (this.c && !this.b) {
            iy.a(this.a.ab().g(), "login:::username:edit");
            this.b = true;
        }
    }
}
