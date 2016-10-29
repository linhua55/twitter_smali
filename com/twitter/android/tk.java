package com.twitter.android;

import android.content.DialogInterface;
import cem;
import com.twitter.app.common.base.m;
import com.twitter.library.util.FriendshipCache;
import com.twitter.model.core.Tweet;
import com.twitter.model.core.TweetActionType;
import java.util.Map;

/* compiled from: Twttr */
final class tk implements m {
    final /* synthetic */ cem a;
    final /* synthetic */ Map b;
    final /* synthetic */ Tweet c;
    final /* synthetic */ FriendshipCache d;

    tk(cem cem, Map map, Tweet tweet, FriendshipCache friendshipCache) {
        this.a = cem;
        this.b = map;
        this.c = tweet;
        this.d = friendshipCache;
    }

    public void a(DialogInterface dialogInterface, int i, int i2) {
        this.a.a((TweetActionType) this.b.get(Integer.valueOf(i2)), this.c, this.d);
    }
}
