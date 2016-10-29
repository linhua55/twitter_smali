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
public class bm extends as {
    public final Tweet a;
    public final Tweet b;
    private CharSequence c;
    private CharSequence d;

    public bm(String str, long j, bli bli, boolean z, String str2, String str3, Tweet tweet, Tweet tweet2) {
        super(str, j, 8, bli, z, str2, str3);
        this.a = tweet;
        this.b = tweet2;
    }

    public CharSequence a(Context context, m mVar) {
        if (this.c == null) {
            this.c = bo.a(context, this.a, true, mVar);
        }
        return this.c;
    }

    public CharSequence b(Context context, m mVar) {
        if (this.d == null) {
            this.d = bo.a(context, this.b, true, mVar);
        }
        return this.d;
    }

    public int a() {
        return 2;
    }

    public at a(View view) {
        return new bn(a(), view);
    }

    public ar a(Resources resources, Map<String, bc> map, Map<String, AVPlayerAttachment> map2) {
        return new bl();
    }

    public Intent a(Context context) {
        return new u().d(true).a(context, TweetActivity.class).putExtra("tw", this.a);
    }

    public String b() {
        return "TYPE_TWEET_IN_REPLY_TO";
    }
}
