package com.twitter.android.composer;

/* compiled from: Twttr */
class cd implements Runnable {
    final /* synthetic */ TweetBox a;

    cd(TweetBox tweetBox) {
        this.a = tweetBox;
    }

    public void run() {
        this.a.a.setSelection(0);
    }
}
