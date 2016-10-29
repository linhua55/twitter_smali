package com.twitter.android.highlights;

import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.view.View;
import com.twitter.android.TweetActivity;
import com.twitter.app.common.base.u;
import com.twitter.library.av.playback.AVPlayerAttachment;
import com.twitter.model.core.Tweet;
import defpackage.bli;
import java.util.Map;

/* compiled from: Twttr */
public class az extends bp {
    public final String a;

    public az(String str, long j, bli bli, boolean z, String str2, String str3, Tweet tweet, String str4) {
        super(str, j, bli, z, str2, str3, tweet, false);
        this.a = str4;
    }

    public int a() {
        return 3;
    }

    public at a(View view) {
        return new ba(a(), view);
    }

    public ar a(Resources resources, Map<String, bc> map, Map<String, AVPlayerAttachment> map2) {
        return new ay();
    }

    public Intent a(Context context) {
        return new u().d(true).a(context, TweetActivity.class).putExtra("tw", this.b);
    }

    public String b() {
        return "TYPE_TWEET_WITH_FALLBACK_IMAGE";
    }
}
