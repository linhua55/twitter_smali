package com.twitter.android;

import android.view.View;
import android.widget.ListView;
import android.widget.ViewAnimator;
import com.twitter.library.widget.TweetView;
import com.twitter.model.core.Tweet;

/* compiled from: Twttr */
final class vv implements Runnable {
    final /* synthetic */ ListView a;
    final /* synthetic */ long b;
    final /* synthetic */ Tweet c;
    final /* synthetic */ Runnable d;

    vv(ListView listView, long j, Tweet tweet, Runnable runnable) {
        this.a = listView;
        this.b = j;
        this.c = tweet;
        this.d = runnable;
    }

    public void run() {
        int i;
        int childCount = this.a.getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = this.a.getChildAt(i2);
            if (childAt != null) {
                childAt = childAt.findViewById(2131951689);
                if (childAt instanceof ViewAnimator) {
                    ViewAnimator viewAnimator = (ViewAnimator) childAt;
                    if (((TweetView) viewAnimator.getChildAt(0)).getTweet().H == this.b) {
                        ((TweetView) viewAnimator.getChildAt(1)).setTweetNoLayout(this.c);
                        if (this.d != null) {
                            viewAnimator.postDelayed(this.d, viewAnimator.getInAnimation().getDuration() + 32);
                        }
                        viewAnimator.showNext();
                        i = 1;
                        if (i == 0 && this.d != null) {
                            this.d.run();
                            return;
                        }
                    }
                    i = 0;
                    if (i == 0) {
                    }
                }
            }
        }
        i = 0;
        if (i == 0) {
        }
    }
}
