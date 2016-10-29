package com.twitter.app.users;

import android.text.TextUtils;
import com.twitter.android.ia;

/* compiled from: Twttr */
class c implements ia {
    final /* synthetic */ AddressbookContactsFragment a;

    c(AddressbookContactsFragment addressbookContactsFragment) {
        this.a = addressbookContactsFragment;
    }

    public char a(String str) {
        Object trim = str.trim();
        char charAt = !TextUtils.isEmpty(trim) ? trim.charAt(0) : ' ';
        return Character.isLetter(charAt) ? charAt : '#';
    }
}
