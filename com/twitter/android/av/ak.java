package com.twitter.android.av;

import android.support.v4.app.FragmentActivity;
import com.twitter.android.io;
import com.twitter.library.util.aq;
import com.twitter.model.core.Tweet;

/* compiled from: Twttr */
public class ak {
    private void a(FragmentActivity fragmentActivity, int i, String str) {
        io.a(fragmentActivity, i, str);
    }

    public void a(FragmentActivity fragmentActivity, String str) {
        a(fragmentActivity, 3, str);
    }

    public void b(FragmentActivity fragmentActivity, String str) {
        a(fragmentActivity, 2, str);
    }

    public void c(FragmentActivity fragmentActivity, String str) {
        a(fragmentActivity, 1, str);
    }

    public void a(FragmentActivity fragmentActivity, Tweet tweet) {
        aq.a(fragmentActivity, tweet, false);
    }

    public void d(FragmentActivity fragmentActivity, String str) {
        io.a(fragmentActivity, 10, str);
    }
}
