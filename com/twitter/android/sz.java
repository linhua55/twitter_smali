package com.twitter.android;

import com.twitter.library.service.aa;
import com.twitter.library.service.x;
import com.twitter.library.service.z;
import com.twitter.library.util.FriendshipCache;
import com.twitter.model.core.Tweet;

/* compiled from: Twttr */
class sz extends z {
    final /* synthetic */ Tweet a;
    final /* synthetic */ FriendshipCache b;
    final /* synthetic */ sn c;

    sz(sn snVar, Tweet tweet, FriendshipCache friendshipCache) {
        this.c = snVar;
        this.a = tweet;
        this.b = friendshipCache;
    }

    public void a(x xVar) {
        sn.a(this.c, this.a.s, (aa) xVar.l().b(), this.b);
    }
}
