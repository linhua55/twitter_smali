package com.twitter.android.composer;

import android.text.SpannableStringBuilder;
import com.twitter.android.autocomplete.c;

/* compiled from: Twttr */
class cb implements c {
    final /* synthetic */ TweetBox a;

    cb(TweetBox tweetBox) {
        this.a = tweetBox;
    }

    public void a(SpannableStringBuilder spannableStringBuilder) {
        TweetBox.a(this.a, spannableStringBuilder);
    }
}
