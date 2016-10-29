package com.twitter.android.widget;

import android.view.View;
import com.twitter.android.client.OpenUriHelper;
import com.twitter.ui.view.c;

/* compiled from: Twttr */
class fm implements c {
    final /* synthetic */ TweetDetailView a;

    fm(TweetDetailView tweetDetailView) {
        this.a = tweetDetailView;
    }

    public void onClick(View view) {
        OpenUriHelper.a(this.a.getContext(), null, "https://aka.ms/Twitter2BingTranslator", this.a.K != null ? this.a.K.c : 0, null, null, null);
    }

    public void a(View view) {
    }

    public void a(boolean z) {
    }

    public boolean a() {
        return false;
    }

    public boolean b() {
        return true;
    }
}
