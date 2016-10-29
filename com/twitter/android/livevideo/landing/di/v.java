package com.twitter.android.livevideo.landing.di;

import abh;
import abi;
import abn;
import android.content.Context;
import android.os.Bundle;
import com.twitter.android.livevideo.landing.a;
import com.twitter.android.timeline.bj;
import com.twitter.android.timeline.bk;
import com.twitter.android.timeline.bl;
import com.twitter.android.widget.NewItemBannerView;
import com.twitter.app.common.inject.t;
import com.twitter.library.client.Session;
import com.twitter.library.scribe.TwitterScribeItem;

/* compiled from: Twttr */
public class v {
    private final Context a;
    private final String b;
    private final NewItemBannerView c;
    private final t d;
    private final bk e;

    public v(Context context, a aVar, Bundle bundle, NewItemBannerView newItemBannerView, bk bkVar) {
        this.a = context;
        this.b = aVar.a;
        this.c = newItemBannerView;
        this.d = t.a(bundle);
        this.e = bkVar;
    }

    static abn a() {
        return new abn();
    }

    Context b() {
        return this.a;
    }

    abi a(Context context, Session session, abh abh) {
        return new abi(context, session, this.b, abh);
    }

    TwitterScribeItem c() {
        TwitterScribeItem twitterScribeItem = new TwitterScribeItem();
        twitterScribeItem.a = Long.parseLong(this.b);
        twitterScribeItem.c = 28;
        return twitterScribeItem;
    }

    bj d() {
        return bl.a(13, this.c, this.e, this.d);
    }
}
