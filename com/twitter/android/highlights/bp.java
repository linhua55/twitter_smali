package com.twitter.android.highlights;

import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.view.View;
import bli;
import com.twitter.android.TweetActivity;
import com.twitter.app.common.base.u;
import com.twitter.library.av.playback.AVPlayerAttachment;
import com.twitter.library.view.m;
import com.twitter.model.core.Tweet;
import java.util.Map;

/* compiled from: Twttr */
public class bp extends as {
    private final boolean a;
    public final Tweet b;
    private CharSequence c;

    public bp(String str, long j, bli bli, boolean z, String str2, String str3, Tweet tweet, boolean z2) {
        super(str, j, 14, bli, z, str2, str3);
        this.b = tweet;
        this.a = z2;
    }

    public CharSequence a(Context context, m mVar) {
        if (this.c == null) {
            this.c = bo.a(context, this.b, this.a, mVar);
        }
        return this.c;
    }

    public int a() {
        return 0;
    }

    public at a(View view) {
        return new bq(a(), view);
    }

    public ar a(Resources resources, Map<String, bc> map, Map<String, AVPlayerAttachment> map2) {
        return new bo();
    }

    public Intent a(Context context) {
        return new u().d(true).a(context, TweetActivity.class).putExtra("tw", this.b);
    }

    public String b() {
        return "TYPE_TWEET_NO_MEDIA";
    }
}
