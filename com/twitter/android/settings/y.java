package com.twitter.android.settings;

import android.os.AsyncTask;

/* compiled from: Twttr */
class y extends AsyncTask<Void, Void, Void> {
    final /* synthetic */ TweetSettingsActivity a;

    private y(TweetSettingsActivity tweetSettingsActivity) {
        this.a = tweetSettingsActivity;
    }

    protected /* synthetic */ Object doInBackground(Object[] objArr) {
        return a((Void[]) objArr);
    }

    protected Void a(Void... voidArr) {
        TweetSettingsActivity.a(this.a, this.a.c.e(), this.a.k);
        return null;
    }
}
