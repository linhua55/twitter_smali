package com.twitter.android;

import android.text.TextUtils;

/* compiled from: Twttr */
public class hz implements ia {
    public char a(String str) {
        return !TextUtils.isEmpty(str) ? str.charAt(0) : ' ';
    }
}
