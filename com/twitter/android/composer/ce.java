package com.twitter.android.composer;

import android.widget.EditText;

/* compiled from: Twttr */
class ce implements Runnable {
    final /* synthetic */ EditText a;
    final /* synthetic */ int b;
    final /* synthetic */ TweetBox c;

    ce(TweetBox tweetBox, EditText editText, int i) {
        this.c = tweetBox;
        this.a = editText;
        this.b = i;
    }

    public void run() {
        int textLength = this.c.getTextLength();
        this.a.setSelection(Math.min(this.b, textLength), textLength);
    }
}
