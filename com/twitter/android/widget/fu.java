package com.twitter.android.widget;

import android.content.res.Resources;
import android.view.View;
import android.view.View.OnClickListener;
import com.twitter.library.api.ActivitySummary;
import com.twitter.util.t;

/* compiled from: Twttr */
public class fu {
    public final View a;
    public final TweetStatView b;
    public final TweetStatView c;

    public fu(View view, OnClickListener onClickListener) {
        this.a = view;
        TweetStatView tweetStatView = (TweetStatView) view.findViewById(2131952742);
        tweetStatView.setOnClickListener(onClickListener);
        this.b = tweetStatView;
        tweetStatView = (TweetStatView) view.findViewById(2131952734);
        tweetStatView.setOnClickListener(onClickListener);
        this.c = tweetStatView;
    }

    public void a(Resources resources, ActivitySummary activitySummary) {
        if (activitySummary != null) {
            if (ActivitySummary.a(activitySummary.b) || ActivitySummary.a(activitySummary.a)) {
                this.a.setVisibility(0);
            } else {
                this.a.setVisibility(8);
                return;
            }
        }
        if (activitySummary != null) {
            int parseInt;
            try {
                parseInt = Integer.parseInt(activitySummary.b);
                if (parseInt > 0) {
                    a(this.b, t.a(resources, (long) parseInt), resources.getQuantityString(2131492901, parseInt));
                } else {
                    this.b.setVisibility(8);
                }
            } catch (NumberFormatException e) {
                a(this.b, activitySummary.b, resources.getQuantityString(2131492901, 0));
            }
            try {
                parseInt = Integer.parseInt(activitySummary.a);
                if (parseInt > 0) {
                    a(this.c, t.a(resources, (long) parseInt), resources.getQuantityString(2131492900, parseInt));
                } else {
                    this.c.setVisibility(8);
                }
            } catch (NumberFormatException e2) {
                a(this.c, activitySummary.a, resources.getQuantityString(2131492900, 0));
            }
        }
    }

    private static void a(TweetStatView tweetStatView, String str, String str2) {
        if (ActivitySummary.a(str)) {
            tweetStatView.setValue(str);
            tweetStatView.setName(str2);
            tweetStatView.setVisibility(0);
            return;
        }
        tweetStatView.setVisibility(8);
    }
}
