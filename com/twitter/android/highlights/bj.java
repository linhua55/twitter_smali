package com.twitter.android.highlights;

import android.content.res.Resources;
import android.view.View;
import com.twitter.library.av.playback.AVPlayerAttachment;
import com.twitter.model.core.Tweet;
import defpackage.bli;
import java.util.Map;

/* compiled from: Twttr */
public class bj extends bp {
    public bj(String str, long j, bli bli, boolean z, String str2, String str3, Tweet tweet) {
        super(str, j, bli, z, str2, str3, tweet, true);
    }

    public int a() {
        return 1;
    }

    public at a(View view) {
        return new bk(a(), view);
    }

    public ar a(Resources resources, Map<String, bc> map, Map<String, AVPlayerAttachment> map2) {
        return new bi();
    }

    public String b() {
        return "TYPE_TWEET_WITH_MEDIA";
    }
}
