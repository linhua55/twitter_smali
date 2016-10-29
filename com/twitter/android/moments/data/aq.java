package com.twitter.android.moments.data;

import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentActivity;
import com.twitter.android.sn;
import com.twitter.library.client.Session;
import com.twitter.library.scribe.TwitterScribeAssociation;
import com.twitter.library.util.FriendshipCache;
import com.twitter.library.widget.au;
import com.twitter.model.core.Tweet;
import defpackage.byi;
import defpackage.cvn;
import rx.t;

/* compiled from: Twttr */
public class aq extends sn {
    private final byi a;
    private final cvn b;
    private final t i;

    public aq(Fragment fragment, TwitterScribeAssociation twitterScribeAssociation, byi byi, cvn cvn, t tVar) {
        super(fragment, twitterScribeAssociation);
        this.a = byi;
        this.b = cvn;
        this.i = tVar;
    }

    protected void a(Tweet tweet, FriendshipCache friendshipCache, FragmentActivity fragmentActivity, Session session, au auVar) {
        super.a(tweet, friendshipCache, fragmentActivity, session, (au) new ar(auVar, tweet, this.a, this.b, this.i));
    }
}
