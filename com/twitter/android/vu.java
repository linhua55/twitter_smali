package com.twitter.android;

import android.content.Context;
import android.database.Cursor;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListView;
import bdj;
import bdl;
import cgu;
import chj;
import chk;
import com.twitter.android.client.c;
import com.twitter.android.client.w;
import com.twitter.android.revenue.y;
import com.twitter.android.timeline.aw;
import com.twitter.android.timeline.ax;
import com.twitter.android.timeline.ay;
import com.twitter.android.timeline.az;
import com.twitter.android.timeline.bb;
import com.twitter.android.timeline.be;
import com.twitter.android.timeline.bx;
import com.twitter.android.timeline.l;
import com.twitter.android.widget.GapView;
import com.twitter.app.common.base.TwitterFragmentActivity;
import com.twitter.library.api.UserSettings;
import com.twitter.library.client.bg;
import com.twitter.library.scribe.TwitterScribeAssociation;
import com.twitter.library.util.FriendshipCache;
import com.twitter.library.util.ao;
import com.twitter.library.view.aa;
import com.twitter.library.widget.TweetView;
import com.twitter.library.widget.tweet.content.DisplayMode;
import com.twitter.library.widget.tweet.content.j;
import com.twitter.model.core.Tweet;
import com.twitter.ui.view.s;
import com.twitter.util.collection.ReferenceList;
import com.twitter.util.object.ObjectUtils;
import defpackage.bzk;
import defpackage.cdy;
import defpackage.cex;
import defpackage.chg;
import java.util.ArrayList;
import java.util.Iterator;

/* compiled from: Twttr */
public class vu extends bdl<aw> implements chk<aw>, w {
    protected final TwitterFragmentActivity a;
    protected final c b;
    protected final bg c;
    protected final aa d;
    protected final ReferenceList<vt> e;
    protected final chj<aw> f;
    protected kr<View, Tweet> g;
    protected final s h;
    private final s i;
    private final ArrayList<Long> j;
    private final bzk k;
    private final int l;
    private boolean m;
    private boolean n;
    private final int o;
    private final boolean p;
    private final FriendshipCache q;
    private boolean r;
    private final TwitterScribeAssociation s;

    public /* synthetic */ cgu a(Cursor cursor) {
        return b(cursor);
    }

    public /* synthetic */ cgu ad_() {
        return g();
    }

    public /* synthetic */ cgu h() {
        return f();
    }

    public vu(TwitterFragmentActivity twitterFragmentActivity, boolean z, aa aaVar, FriendshipCache friendshipCache, TwitterScribeAssociation twitterScribeAssociation) {
        this(twitterFragmentActivity, z, aaVar, friendshipCache, 2130969445, 2130969484, -1, twitterScribeAssociation);
    }

    public vu(TwitterFragmentActivity twitterFragmentActivity, boolean z, aa aaVar, FriendshipCache friendshipCache, TwitterScribeAssociation twitterScribeAssociation, s sVar) {
        this(twitterFragmentActivity, z, aaVar, friendshipCache, 2130969445, 2130969484, -1, twitterScribeAssociation, sVar);
    }

    public vu(TwitterFragmentActivity twitterFragmentActivity, boolean z, aa aaVar, FriendshipCache friendshipCache, int i, int i2, int i3, TwitterScribeAssociation twitterScribeAssociation) {
        this(twitterFragmentActivity, z, aaVar, friendshipCache, i, i2, i3, twitterScribeAssociation, TweetView.c);
    }

    public vu(TwitterFragmentActivity twitterFragmentActivity, boolean z, aa aaVar, FriendshipCache friendshipCache, int i, int i2, int i3, TwitterScribeAssociation twitterScribeAssociation, s sVar) {
        boolean z2 = true;
        super(twitterFragmentActivity);
        this.e = ReferenceList.a();
        this.j = new ArrayList();
        this.r = true;
        this.s = twitterScribeAssociation;
        this.a = twitterFragmentActivity;
        this.c = bg.a();
        this.b = c.a(twitterFragmentActivity);
        this.d = aaVar;
        this.m = z;
        UserSettings j = this.c.c().j();
        if (j == null || !j.k) {
            z2 = false;
        }
        this.p = z2;
        this.l = i;
        this.o = i2;
        this.q = friendshipCache;
        if (io.a()) {
            this.r = false;
        }
        this.h = sVar;
        this.i = y.a(this.h);
        this.f = a(i3);
        this.k = bzk.a() ? new bzk() : null;
    }

    protected chj<aw> a(int i) {
        return new chg(new bx());
    }

    protected FriendshipCache c() {
        return this.q;
    }

    public int getViewTypeCount() {
        return 2;
    }

    public int getItemViewType(int i) {
        aw awVar = (aw) getItem(i);
        if (awVar != null) {
            return a(awVar);
        }
        return 0;
    }

    protected int a(aw awVar) {
        if (awVar instanceof az) {
            return 1;
        }
        return 0;
    }

    public View getView(int i, View view, ViewGroup viewGroup) {
        if ((((aw) getItem(i)) instanceof ay) || (view != null && view.findViewById(2131951689) != null)) {
            return super.getView(i, null, viewGroup);
        }
        return super.getView(i, view, viewGroup);
    }

    public View a(Context context, aw awVar, ViewGroup viewGroup) {
        View inflate;
        if (awVar instanceof az) {
            inflate = LayoutInflater.from(context).inflate(this.l, null);
            b(inflate);
            return inflate;
        } else if (awVar instanceof ay) {
            inflate = LayoutInflater.from(context).inflate(2130969213, null);
            c(inflate);
            return inflate;
        } else {
            inflate = LayoutInflater.from(context).inflate(this.o, null);
            a(inflate);
            return inflate;
        }
    }

    private static void b(View view) {
        if (view instanceof GapView) {
            view.setTag(view);
        } else {
            view.setTag(view.findViewById(2131951914));
        }
    }

    private void c(View view) {
        mf mfVar = new mf(view);
        a(mfVar.d);
        mfVar.d.setAlwaysExpandMedia(true);
        a(mfVar.a);
        mfVar.a.setAlwaysExpandMedia(true);
        view.setTag(mfVar);
    }

    protected void a(View view) {
        vt vtVar = new vt(view);
        a(vtVar.d);
        view.setTag(vtVar);
        this.e.b(vtVar);
    }

    private void a(TweetView tweetView) {
        tweetView.setDisplaySensitiveMedia(this.p);
        tweetView.setOnTweetViewClickListener(this.d);
        tweetView.setShouldSimulateInlineActions(this.r);
    }

    protected void a(View view, Context context, aw awVar, int i) {
        if (awVar instanceof az) {
            a(view, (az) awVar);
        } else {
            a(view, (bb) awVar, i);
        }
    }

    protected void a(View view, az azVar) {
        ((GapView) view.getTag()).setSpinnerActive(this.j.contains(Long.valueOf(azVar.n)));
    }

    protected Tweet a(View view, bb bbVar, int i) {
        boolean z = true;
        Tweet tweet = bbVar.b;
        bdj a = bdj.a(i());
        boolean a2 = a.a(tweet);
        if (!a2) {
            tweet.e &= -9;
        }
        TweetView tweetView = ((vt) view.getTag()).d;
        if (this.q != null) {
            this.q.a(tweet);
        }
        tweetView.setTag(2131951712, bbVar);
        tweetView.setTag(2131951711, Long.valueOf(bbVar.d()));
        tweetView.setFriendshipCache(this.q);
        tweetView.setShouldSimulateInlineActions(this.r);
        boolean z2 = this.m && a2;
        tweetView.setAlwaysExpandMedia(z2);
        tweetView.setHideInlineActions(false);
        tweetView.setContentSize(ao.a);
        tweetView.setDisplayTranslationBadge(cex.a(i(), tweet));
        if (tweetView.getPreviewEnabled() && (this.m || tweet.r())) {
            a2 = true;
        } else {
            a2 = false;
        }
        boolean a3 = cdy.a(tweet, this.p, a.b());
        if (!(a2 && a3)) {
            z = false;
        }
        j jVar = new j(z, this.k, this.a, tweet, DisplayMode.FORWARD, this.s, null);
        if (bbVar instanceof ax) {
            tweetView.setSocialContextName(((ax) bbVar).a.c.c);
        }
        tweetView.setMinLines(tweet.p() ? 2 : -1);
        s sVar = (tweet.am() && y.j()) ? this.i : this.h;
        tweetView.a(tweet, sVar, this.n, jVar);
        view.setContentDescription(tweetView.getContentDescription());
        if (this.g != null) {
            this.g.a(view, tweet, a(bbVar, i));
        }
        return tweet;
    }

    protected static Bundle a(bb bbVar, int i) {
        Bundle bundle = new Bundle();
        if (bbVar instanceof l) {
            bundle.putString("ad_slot_id", ((l) ObjectUtils.a(bbVar)).a());
        }
        bundle.putInt("position", i);
        return bundle;
    }

    public void b(boolean z) {
        if (this.n != z) {
            this.n = z;
            if (!this.n) {
                Iterator it = this.e.iterator();
                while (it.hasNext()) {
                    vt vtVar = (vt) it.next();
                    if (vtVar != null) {
                        vtVar.d.l();
                    }
                }
            }
        }
    }

    public static boolean a(ListView listView, long j, Tweet tweet, Runnable runnable) {
        listView.post(new vv(listView, j, tweet, runnable));
        return true;
    }

    public long getItemId(int i) {
        return f().d(i);
    }

    public void a(long j) {
        this.j.add(Long.valueOf(j));
    }

    public ArrayList<Long> d() {
        return this.j;
    }

    public void e() {
        this.j.clear();
    }

    public be b(Cursor cursor) {
        return new be(cursor, this.f);
    }

    public void c(Cursor cursor) {
        a(b(cursor));
    }

    public be f() {
        return (be) ObjectUtils.a(super.h());
    }

    public be g() {
        return be.b();
    }

    public void b(kr<View, Tweet> krVar) {
        this.g = krVar;
    }

    public void c(boolean z) {
        if (this.m != z) {
            this.m = z;
            notifyDataSetChanged();
        }
    }

    public static boolean d(Cursor cursor) {
        boolean z = true;
        if (cursor == null) {
            return false;
        }
        boolean z2;
        int i = cursor.getInt(29);
        boolean z3;
        if ((i & 3) != 0) {
            z3 = true;
        } else {
            z3 = false;
        }
        if ((i & 4) != 0) {
            z2 = true;
        } else {
            z2 = false;
        }
        if (z2 || !r3) {
            z = false;
        }
        return z;
    }

    public static boolean a(Cursor cursor, long j) {
        return cursor.getLong(1) == j;
    }

    protected final void a(View view, Context context, aw awVar) {
    }
}
