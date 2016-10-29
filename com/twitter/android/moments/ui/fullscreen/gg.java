package com.twitter.android.moments.ui.fullscreen;

import android.content.Context;
import bqk;
import com.twitter.android.moments.ui.video.b;
import com.twitter.library.av.playback.ai;
import com.twitter.library.av.playback.ar;
import com.twitter.library.av.playback.au;
import com.twitter.library.av.playback.av;
import com.twitter.model.core.Tweet;

/* compiled from: Twttr */
class gg {
    gg() {
    }

    public b a(Context context, Tweet tweet, ai aiVar, bqk bqk) {
        au a = new av().a(tweet);
        return new b(new ar(aiVar).a(a).b(false).a(bqk).a(false).a(context).a(), a.c());
    }
}
