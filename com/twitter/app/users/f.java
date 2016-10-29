package com.twitter.app.users;

import android.text.Editable;
import android.widget.TextView;
import com.twitter.util.ui.e;

/* compiled from: Twttr */
class f extends e {
    final /* synthetic */ TextView a;
    final /* synthetic */ CheckableUsersFragment b;

    f(CheckableUsersFragment checkableUsersFragment, TextView textView) {
        this.b = checkableUsersFragment;
        this.a = textView;
    }

    public void afterTextChanged(Editable editable) {
        this.a.setText(editable.toString());
    }
}
