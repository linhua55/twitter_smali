package com.twitter.android.dialog;

import com.twitter.app.common.base.BaseDialogFragment;

/* compiled from: Twttr */
public class g extends n {
    protected /* synthetic */ SimpleDialogFragment b() {
        return a();
    }

    protected /* synthetic */ BaseDialogFragment c() {
        return a();
    }

    public g(int i) {
        super(i);
    }

    public g a(String str) {
        this.a.putString("logged_out_dialog_scribe", str);
        return this;
    }

    protected LoggedOutDialogFragment a() {
        return new LoggedOutDialogFragment();
    }
}
