package com.twitter.android;

import android.content.DialogInterface;
import bmz;
import com.twitter.app.common.base.m;
import com.twitter.library.client.Session;
import com.twitter.library.client.az;
import com.twitter.library.util.FriendshipCache;
import com.twitter.library.widget.au;
import com.twitter.model.core.Tweet;

/* compiled from: Twttr */
class tb implements m {
    final /* synthetic */ Tweet a;
    final /* synthetic */ Session b;
    final /* synthetic */ FriendshipCache c;
    final /* synthetic */ au d;
    final /* synthetic */ sn e;

    tb(sn snVar, Tweet tweet, Session session, FriendshipCache friendshipCache, au auVar) {
        this.e = snVar;
        this.a = tweet;
        this.b = session;
        this.c = friendshipCache;
        this.d = auVar;
    }

    public void a(DialogInterface dialogInterface, int i, int i2) {
        if (i2 == -1) {
            sn.a(this.e, "block_dialog", "block", this.a, null);
            az.a(this.e.g).a(new bmz(this.e.g, this.b, this.a.s, this.a.f, 1), new tc(this));
            if (this.d != null) {
                this.d.d(true);
                return;
            }
            return;
        }
        sn.a(this.e, "block_dialog", "cancel", this.a, null);
    }
}
