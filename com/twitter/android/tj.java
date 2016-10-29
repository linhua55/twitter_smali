package com.twitter.android;

import android.app.Activity;
import android.support.v4.app.FragmentActivity;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnTouchListener;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemLongClickListener;
import android.widget.ListView;
import cem;
import ceq;
import com.google.android.exoplayer.util.NalUnitUtil;
import com.google.android.exoplayer.util.Util;
import com.google.android.exoplayer.util.extensions.Buffer;
import com.twitter.android.util.bf;
import com.twitter.android.widget.ec;
import com.twitter.app.common.list.TwitterListFragment;
import com.twitter.app.common.util.s;
import com.twitter.config.AppConfig;
import com.twitter.library.client.Session;
import com.twitter.library.client.bg;
import com.twitter.library.util.FriendshipCache;
import com.twitter.library.widget.TweetView;
import com.twitter.model.core.Tweet;
import com.twitter.model.core.TweetActionType;
import com.twitter.model.core.TwitterUser;
import com.twitter.model.core.p;
import com.twitter.util.collection.n;
import com.twitter.util.collection.r;
import com.twitter.util.object.e;
import java.util.List;
import java.util.Map;

/* compiled from: Twttr */
public class tj implements OnTouchListener, OnItemLongClickListener {
    private final cem a;
    private final ListView b;
    private int c;
    private int d;
    private final int e;
    private tl f;
    private final TwitterListFragment g;
    private final boolean h;

    public tj(TwitterListFragment twitterListFragment, cem cem, ListView listView, int i, boolean z) {
        e.a(cem);
        this.a = cem;
        this.b = listView;
        this.e = i;
        this.b.setOnItemLongClickListener(this);
        this.g = twitterListFragment;
        this.h = z;
    }

    public boolean a(vt vtVar) {
        if (this.g.l_()) {
            TweetView tweetView = (TweetView) e.a(vtVar.d);
            a(tweetView.getTweet(), tweetView.getFriendshipCache(), this.g.getActivity(), this.a, this.h);
        }
        return true;
    }

    private static boolean a(Activity activity) {
        if (activity instanceof s) {
            return ((s) activity).l_();
        }
        return !activity.isFinishing();
    }

    public static void a(Tweet tweet, FriendshipCache friendshipCache, FragmentActivity fragmentActivity, cem cem, boolean z) {
        Session c = bg.a().c();
        TwitterUser f = c.f();
        long g = c.g();
        int i = tweet.s == g ? 1 : 0;
        r d = r.d();
        n d2 = n.d();
        boolean d3 = c.d();
        if (d3 && !tweet.G && z) {
            d.b(Integer.valueOf(d2.i()), TweetActionType.m);
            d2.c(fragmentActivity.getString(2131363600));
        }
        if (ceq.b(tweet, g)) {
            d.b(Integer.valueOf(d2.i()), TweetActionType.g);
            d2.c(fragmentActivity.getString(2131363766));
        }
        if (i != 0) {
            if (tweet.a(f)) {
                d.b(Integer.valueOf(d2.i()), TweetActionType.q);
                d2.c(fragmentActivity.getString(2131364059));
            } else {
                d.b(Integer.valueOf(d2.i()), TweetActionType.p);
                d2.c(fragmentActivity.getString(2131363334));
            }
        }
        if (d3 && ceq.a(tweet, g)) {
            d.b(Integer.valueOf(d2.i()), TweetActionType.f);
            d2.c(fragmentActivity.getString(2131361986));
        }
        if (ceq.i(tweet)) {
            d.b(Integer.valueOf(d2.i()), TweetActionType.h);
            d2.c(fragmentActivity.getString(2131361988));
        }
        int intValue = friendshipCache == null ? tweet.m : friendshipCache.a(tweet.s) ? friendshipCache.j(tweet.s).intValue() : 0;
        boolean c2 = p.c(intValue);
        boolean d4 = p.d(intValue);
        boolean a = bf.a(tweet);
        if (i == 0) {
            if (!a) {
                if (c2) {
                    d.b(Integer.valueOf(d2.i()), TweetActionType.j);
                    d2.c(fragmentActivity.getString(2131364051));
                } else {
                    d.b(Integer.valueOf(d2.i()), TweetActionType.i);
                    d2.c(fragmentActivity.getString(2131363120));
                }
            }
            if (d4) {
                d.b(Integer.valueOf(d2.i()), TweetActionType.l);
                d2.c(fragmentActivity.getString(2131364129));
            } else {
                d.b(Integer.valueOf(d2.i()), TweetActionType.k);
                d2.c(fragmentActivity.getString(2131361962));
            }
            if (AppConfig.m().p()) {
                d.b(Integer.valueOf(d2.i()), TweetActionType.r);
                d2.c("Debug");
            }
        }
        boolean a2 = p.a(intValue);
        d.b(Integer.valueOf(d2.i()), TweetActionType.e);
        if (a2) {
            d2.c(fragmentActivity.getString(2131364091));
        } else {
            d2.c(fragmentActivity.getString(2131362705));
        }
        Map map = (Map) d.q();
        List list = (List) d2.q();
        if (list.size() == 1 && map.get(Integer.valueOf(0)) == TweetActionType.g) {
            cem.a(TweetActionType.g, tweet, friendshipCache);
        } else if (a((Activity) fragmentActivity)) {
            ((ec) new ec(0).a((CharSequence[]) list.toArray(new CharSequence[list.size()]))).i().a(new tk(cem, map, tweet, friendshipCache)).a(fragmentActivity.getSupportFragmentManager());
        }
    }

    public void a() {
        this.b.setPressed(false);
    }

    public void a(tl tlVar) {
        this.f = tlVar;
    }

    public boolean onItemLongClick(AdapterView<?> adapterView, View view, int i, long j) {
        vt b;
        if (this.f != null) {
            b = this.f.b(view);
            if (!(b == null || b.c)) {
                return a(b);
            }
        }
        Object tag = view.getTag();
        if (tag instanceof vt) {
            b = (vt) tag;
            if (!b.c) {
                return a(b);
            }
        }
        return false;
    }

    public boolean onTouch(View view, MotionEvent motionEvent) {
        int y = (int) motionEvent.getY();
        int x = (int) motionEvent.getX();
        switch (motionEvent.getAction() & NalUnitUtil.EXTENDED_SAR) {
            case Util.TYPE_DASH /*0*/:
                this.c = x;
                this.d = y;
                break;
            case Buffer.FLAG_DECODE_ONLY /*2*/:
                if (Math.abs(this.c - x) > this.e || Math.abs(this.d - y) > this.e) {
                    a();
                    break;
                }
        }
        return false;
    }
}
