package com.twitter.android.moments.viewmodels;

import com.twitter.media.request.b;
import com.twitter.model.core.Tweet;
import com.twitter.model.moments.k;
import com.twitter.model.moments.viewmodels.MomentTweetStreamingVideoPage;
import com.twitter.model.moments.viewmodels.s;
import com.twitter.util.math.Size;
import com.twitter.util.object.e;

/* compiled from: Twttr */
public class a implements f {
    private final k a;
    private final b b;
    private final Size c;

    public a(MomentTweetStreamingVideoPage momentTweetStreamingVideoPage, com.twitter.util.object.b<Tweet, b> bVar, com.twitter.util.object.b<Tweet, Size> bVar2) {
        Tweet tweet = (Tweet) e.a(momentTweetStreamingVideoPage.n());
        this.a = momentTweetStreamingVideoPage.b;
        this.b = (b) bVar.a(tweet);
        this.c = (Size) bVar2.a(tweet);
    }

    public a(s sVar, com.twitter.util.object.b<Tweet, b> bVar, com.twitter.util.object.b<Tweet, Size> bVar2) {
        Tweet tweet = (Tweet) e.a(sVar.n());
        this.a = sVar.a;
        this.b = (b) bVar.a(tweet);
        this.c = (Size) bVar2.a(tweet);
    }

    public b a() {
        return this.b;
    }

    public Size b() {
        return this.c;
    }

    public k c() {
        return this.a;
    }
}
