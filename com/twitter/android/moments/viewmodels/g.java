package com.twitter.android.moments.viewmodels;

import com.twitter.model.core.Tweet;
import com.twitter.model.moments.viewmodels.MomentPage;
import com.twitter.model.moments.viewmodels.MomentTweetStreamingVideoPage;
import com.twitter.model.moments.viewmodels.k;
import com.twitter.model.moments.viewmodels.q;
import com.twitter.model.moments.viewmodels.s;
import com.twitter.util.math.Size;
import com.twitter.util.object.b;

/* compiled from: Twttr */
public class g implements b<MomentPage, f> {
    private final b<Tweet, com.twitter.media.request.b> a;
    private final b<Tweet, Size> b;

    public static g a() {
        return new g(new h(), new i());
    }

    public g(b<Tweet, com.twitter.media.request.b> bVar, b<Tweet, Size> bVar2) {
        this.a = bVar;
        this.b = bVar2;
    }

    public f a(MomentPage momentPage) {
        if (momentPage instanceof q) {
            return new aa((q) momentPage);
        }
        if (momentPage instanceof k) {
            return new x((k) momentPage);
        }
        if (momentPage instanceof MomentTweetStreamingVideoPage) {
            return new a((MomentTweetStreamingVideoPage) momentPage, this.a, this.b);
        }
        if (momentPage instanceof s) {
            return new a((s) momentPage, this.a, this.b);
        }
        throw new IllegalArgumentException("Unrecognized moment page type: " + momentPage.d());
    }
}
