package com.twitter.android.composer;

import android.text.InputFilter;
import android.text.Spanned;

/* compiled from: Twttr */
class cc implements InputFilter {
    final /* synthetic */ TweetBox a;

    cc(TweetBox tweetBox) {
        this.a = tweetBox;
    }

    public CharSequence filter(CharSequence charSequence, int i, int i2, Spanned spanned, int i3, int i4) {
        int length = spanned.length() - " #alert".length();
        return (length < 0 || i4 <= length) ? charSequence : spanned.subSequence(i3, i4);
    }
}
