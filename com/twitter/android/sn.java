package com.twitter.android;

import android.app.Activity;
import android.app.AlertDialog.Builder;
import android.content.Context;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.net.Uri;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentActivity;
import android.support.v7.recyclerview.BuildConfig;
import android.util.SparseArray;
import android.view.View;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import android.view.animation.AnimationSet;
import android.widget.Toast;
import com.twitter.android.analytics.TweetAnalyticsWebViewActivity;
import com.twitter.android.client.c;
import com.twitter.android.composer.aw;
import com.twitter.android.dm.r;
import com.twitter.android.dm.w;
import com.twitter.android.revenue.d;
import com.twitter.android.timeline.bm;
import com.twitter.android.util.bf;
import com.twitter.android.widget.PromptDialogFragment;
import com.twitter.android.widget.ec;
import com.twitter.app.common.base.m;
import com.twitter.library.api.PromotedEvent;
import com.twitter.library.api.timeline.g;
import com.twitter.library.api.timeline.h;
import com.twitter.library.client.Session;
import com.twitter.library.client.az;
import com.twitter.library.client.bg;
import com.twitter.library.scribe.ScribeItem;
import com.twitter.library.scribe.TwitterScribeAssociation;
import com.twitter.library.scribe.TwitterScribeItem;
import com.twitter.library.scribe.TwitterScribeLog;
import com.twitter.library.service.aa;
import com.twitter.library.util.FriendshipCache;
import com.twitter.library.util.aq;
import com.twitter.library.view.ab;
import com.twitter.library.widget.TweetView;
import com.twitter.library.widget.au;
import com.twitter.model.core.Tweet;
import com.twitter.model.core.TweetActionType;
import com.twitter.model.core.as;
import defpackage.aml;
import defpackage.amn;
import defpackage.bbu;
import defpackage.bna;
import defpackage.bnb;
import defpackage.cem;
import defpackage.ceq;
import defpackage.cni;
import defpackage.cwj;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;
import tv.periscope.android.api.ValidateUsernameError.UsernameError;
import tv.periscope.chatman.api.ControlMessage;
import tv.periscope.chatman.api.WireMessage;

/* compiled from: Twttr */
public class sn implements cem {
    private static final boolean a;
    private final d b;
    protected final c c;
    protected final bg d;
    protected final WeakReference<Fragment> e;
    protected final TwitterScribeAssociation f;
    protected final Context g;
    protected final az h;

    static {
        a = cwj.a();
    }

    public sn(Fragment fragment, TwitterScribeAssociation twitterScribeAssociation) {
        this(fragment, twitterScribeAssociation, null);
    }

    public sn(Fragment fragment, TwitterScribeAssociation twitterScribeAssociation, d dVar) {
        this.g = fragment.getActivity().getApplicationContext();
        this.c = c.a(this.g);
        this.h = az.a(this.g);
        this.d = bg.a();
        this.e = new WeakReference(fragment);
        this.f = twitterScribeAssociation;
        this.b = dVar;
    }

    protected String a(Tweet tweet) {
        if (tweet.H()) {
            return "focal";
        }
        if (tweet.G()) {
            return "ancestor";
        }
        return null;
    }

    private void a(String str, Tweet tweet, TwitterScribeItem twitterScribeItem) {
        b(BuildConfig.VERSION_NAME, str, tweet, twitterScribeItem);
    }

    private void b(String str, String str2, Tweet tweet, TwitterScribeItem twitterScribeItem) {
        bbu.a(a(str, str2, tweet, twitterScribeItem));
    }

    protected TwitterScribeLog a(String str, String str2, Tweet tweet, TwitterScribeItem twitterScribeItem) {
        String b = Tweet.b(tweet);
        return (TwitterScribeLog) ((TwitterScribeLog) ((TwitterScribeLog) new TwitterScribeLog(this.d.c().g()).a(this.g, tweet, this.f, a(tweet)).b(TwitterScribeLog.a(this.f, b, str, str2))).a(this.f)).a((ScribeItem) twitterScribeItem);
    }

    protected void a(Tweet tweet, FragmentActivity fragmentActivity, Session session, TwitterScribeItem twitterScribeItem, au auVar) {
        boolean z = !tweet.a;
        if (auVar != null) {
            auVar.a(z);
        }
        if (z) {
            this.h.a(new com.twitter.library.api.timeline.d(this.g, session, tweet.t, tweet.u).a(tweet.f).a(Boolean.valueOf(tweet.l())), new so(this));
            b(a((Activity) fragmentActivity), "favorite", tweet, twitterScribeItem);
            return;
        }
        this.h.a(new h(this.g, session, tweet.t).a(tweet.f), new sx(this, this.g));
        b(a((Activity) fragmentActivity), "unfavorite", tweet, twitterScribeItem);
    }

    protected void a(Tweet tweet, FragmentActivity fragmentActivity, TwitterScribeItem twitterScribeItem, boolean z) {
        if (z) {
            b(a((Activity) fragmentActivity), "share_via_dm", tweet, twitterScribeItem);
        } else {
            bbu.a(new TwitterScribeLog(this.d.c().g()).b(TwitterScribeLog.a(this.f, "share_sheet", "tweet", "share_via_dm")));
        }
        a((Activity) fragmentActivity, new as(tweet));
    }

    protected void a(Tweet tweet, Fragment fragment, FragmentActivity fragmentActivity, TwitterScribeItem twitterScribeItem, au auVar) {
        a(new nt(fragmentActivity, tweet).a(new sy(this, new WeakReference(auVar), fragmentActivity, tweet, twitterScribeItem, this.d.c().g(), this.f)).a(fragment)).a().a();
    }

    protected nt a(nt ntVar) {
        return ntVar;
    }

    private static void b(boolean z, boolean z2, Context context, boolean z3) {
        if (!z && context != null && !z3) {
            Toast.makeText(context, z2 ? 2131364021 : 2131364031, 1).show();
        }
    }

    protected void a(Tweet tweet, Fragment fragment, FragmentActivity fragmentActivity, Session session, TwitterScribeItem twitterScribeItem) {
        b(a((Activity) fragmentActivity), "reply", tweet, twitterScribeItem);
        fragmentActivity.startActivity(aw.a().a(tweet).b(session.e()).a((Context) fragmentActivity));
    }

    protected void a(Tweet tweet, FriendshipCache friendshipCache, TwitterScribeItem twitterScribeItem, au auVar) {
        aml.a(this.g, amn.a(this.g, this.f)).a(tweet).a(friendshipCache).a(twitterScribeItem).a(auVar).a().a();
    }

    protected void a(Tweet tweet, FriendshipCache friendshipCache, FragmentActivity fragmentActivity, Session session) {
        b(a((Activity) fragmentActivity), "mute_user", tweet, null);
        az.a(this.g).a(new bna(this.g, session).a(tweet.s), new sz(this, tweet, friendshipCache));
    }

    private void c(long j, aa aaVar, FriendshipCache friendshipCache) {
        if (aaVar != null && aaVar.b()) {
            friendshipCache.f(j);
        }
    }

    protected void b(Tweet tweet, FriendshipCache friendshipCache, FragmentActivity fragmentActivity, Session session) {
        b(a((Activity) fragmentActivity), "unmute_user", tweet, null);
        az.a(this.g).a(new bnb(this.g, session).a(tweet.s), new ta(this, tweet, friendshipCache));
    }

    private void d(long j, aa aaVar, FriendshipCache friendshipCache) {
        if (aaVar != null && aaVar.b()) {
            friendshipCache.g(j);
        }
    }

    protected void a(Tweet tweet, FriendshipCache friendshipCache, FragmentActivity fragmentActivity, Session session, au auVar) {
        b(a((Activity) fragmentActivity), "block_user", tweet, null);
        b("block_dialog", "impression", tweet, null);
        bf.a(this.g, ab.b(tweet), -1, fragmentActivity.getSupportFragmentManager(), new tb(this, tweet, session, friendshipCache, auVar));
    }

    private static void e(long j, aa aaVar, FriendshipCache friendshipCache) {
        if (aaVar != null && aaVar.b() && friendshipCache != null) {
            friendshipCache.h(j);
        }
    }

    protected void b(Tweet tweet, FriendshipCache friendshipCache, FragmentActivity fragmentActivity, Session session, au auVar) {
        b(a((Activity) fragmentActivity), "unblock_user", tweet, null);
        b("unblock_dialog", "impression", tweet, null);
        bf.b(this.g, tweet.v, -1, fragmentActivity.getSupportFragmentManager(), new td(this, tweet, session, friendshipCache, auVar));
    }

    private static void f(long j, aa aaVar, FriendshipCache friendshipCache) {
        if (aaVar != null && aaVar.b()) {
            friendshipCache.i(j);
        }
    }

    protected void b(Tweet tweet, Fragment fragment, FragmentActivity fragmentActivity, Session session) {
        ((ec) ((ec) ((ec) ((ec) new ec(0).a(2131364020)).b(2131364019)).d(2131364205)).f(2131363158)).i().a(fragment).a(new tf(this, session, tweet)).a(fragmentActivity.getSupportFragmentManager());
    }

    protected void c(Tweet tweet, Fragment fragment, FragmentActivity fragmentActivity, Session session) {
        aq.a((Context) fragmentActivity, tweet, false);
        b(a((Activity) fragmentActivity), "share", tweet, null);
    }

    protected String a(Activity activity) {
        if (activity instanceof TweetActivity) {
            return "non_focused_tweet";
        }
        return null;
    }

    protected void a(Tweet tweet, Fragment fragment, FragmentActivity fragmentActivity, Session session) {
        b("dismiss", "click", tweet, null);
        a(fragmentActivity, new th(this, tweet));
    }

    void a(Tweet tweet, TweetView tweetView, FragmentActivity fragmentActivity) {
        a(tweet, (View) tweetView, fragmentActivity, -1);
    }

    public void a(Tweet tweet, View view, FragmentActivity fragmentActivity, long j) {
        a(tweet, view, fragmentActivity, j, null);
    }

    public void a(Tweet tweet, View view, FragmentActivity fragmentActivity, long j, Runnable runnable) {
        b("dismiss", "click", tweet, null);
        if (tweet.u()) {
            new Builder(fragmentActivity).setTitle(fragmentActivity.getString(2131364022)).setItems(new CharSequence[]{fragmentActivity.getString(2131363999), fragmentActivity.getString(2131364003), fragmentActivity.getString(2131364004), fragmentActivity.getString(2131361882), fragmentActivity.getString(2131362041)}, new sp(this, view, tweet, j, runnable, fragmentActivity)).create().show();
            return;
        }
        a(fragmentActivity, new sq(this, view, tweet, j, runnable));
    }

    public boolean b(Tweet tweet) {
        Fragment fragment = (Fragment) this.e.get();
        FragmentActivity activity = fragment == null ? null : fragment.getActivity();
        if (activity == null || tweet.x == null || activity.isFinishing()) {
            return false;
        }
        as asVar = tweet.x;
        long j = tweet.y;
        long g = this.d.c().g();
        boolean d = this.d.c().d();
        bbu.a(new TwitterScribeLog(g).b(TwitterScribeLog.a(this.f, this.f.c(), "quoted_tweet", "long_press")));
        SparseArray sparseArray = new SparseArray(3);
        List arrayList = new ArrayList(3);
        if (d) {
            sparseArray.put(arrayList.size(), TweetActionType.m);
            arrayList.add(activity.getString(2131363598));
        }
        if (ceq.a(asVar, g)) {
            sparseArray.put(arrayList.size(), TweetActionType.g);
            arrayList.add(activity.getString(2131363770));
        }
        sparseArray.put(arrayList.size(), TweetActionType.o);
        arrayList.add(activity.getString(2131364167));
        PromptDialogFragment promptDialogFragment = (PromptDialogFragment) ((ec) new ec(0).a((CharSequence[]) arrayList.toArray(new CharSequence[arrayList.size()]))).i();
        promptDialogFragment.a((m) new sr(this, sparseArray, activity, asVar, j, g));
        promptDialogFragment.setRetainInstance(true);
        promptDialogFragment.a(activity.getSupportFragmentManager());
        return true;
    }

    private void a(Activity activity, as asVar) {
        activity.startActivity(r.a((Context) activity, new w().a(asVar).d()));
    }

    public void a(long j, FragmentActivity fragmentActivity) {
        fragmentActivity.startActivity(new Intent(fragmentActivity, TweetActivity.class).setData(new Uri.Builder().scheme("twitter").authority("tweet").appendQueryParameter("status_id", String.valueOf(j)).build()).putExtra("association", this.f));
    }

    private static Animation a(View view) {
        Animation animationSet = new AnimationSet(false);
        ti tiVar = new ti(view, 0);
        tiVar.setDuration(350);
        animationSet.addAnimation(tiVar);
        Animation alphaAnimation = new AlphaAnimation(1.0f, 0.0f);
        alphaAnimation.setDuration(200);
        animationSet.addAnimation(alphaAnimation);
        return animationSet;
    }

    protected void a(View view, Tweet tweet, PromotedEvent promotedEvent, String str, String str2, long j) {
        Runnable a = a((com.twitter.android.timeline.aw) view.getTag(2131951712), tweet, promotedEvent, str, str2, j);
        Object obj = (a || !com.twitter.config.d.a("animate_dismiss_enabled")) ? null : 1;
        if (obj != null) {
            int i = view.getLayoutParams().height;
            Animation a2 = a(view);
            a2.setAnimationListener(new ss(this, view, a, i));
            view.setHasTransientState(true);
            view.startAnimation(a2);
            return;
        }
        a.run();
    }

    private Runnable a(com.twitter.android.timeline.aw awVar, Tweet tweet, PromotedEvent promotedEvent, String str, String str2, long j) {
        if (awVar instanceof bm) {
            return new su(this, awVar, promotedEvent, str, str2);
        }
        return new sv(this, tweet, promotedEvent, str, str2, j);
    }

    private void a(bm bmVar, PromotedEvent promotedEvent, String str, String str2) {
        bmVar.d();
        cni cni = bmVar.b.f;
        String str3 = cni != null ? cni.c : null;
        if (this.b != null) {
            this.b.d(bmVar.a());
        }
        this.c.a(bmVar.d(), str3, promotedEvent);
        b(str, str2, bmVar.b, null);
    }

    private void a(Tweet tweet, PromotedEvent promotedEvent, String str, String str2) {
        a(tweet, promotedEvent, str, str2, -1);
    }

    private void a(Tweet tweet, PromotedEvent promotedEvent, String str, String str2, long j) {
        cni cni = tweet.f;
        this.c.a(tweet.Q, tweet.P, cni != null ? cni.c : null, promotedEvent);
        b(str, str2, tweet, null);
        if (j != -1) {
            this.h.a(new g(this.g, this.d.c(), j));
        }
    }

    protected static void a(FragmentActivity fragmentActivity, OnClickListener onClickListener) {
        new Builder(fragmentActivity).setMessage(fragmentActivity.getString(2131364023)).setPositiveButton(fragmentActivity.getString(2131364022), onClickListener).setNegativeButton(fragmentActivity.getString(2131362041), null).create().show();
    }

    private void a(Tweet tweet, FragmentActivity fragmentActivity, TwitterScribeItem twitterScribeItem) {
        b("tweet_analytics", "click", tweet, twitterScribeItem);
        fragmentActivity.startActivity(TweetAnalyticsWebViewActivity.a((Context) fragmentActivity, tweet.t));
    }

    private void a(Tweet tweet, Context context) {
        new Builder(context).setMessage("Tweet ID: " + tweet.t).setPositiveButton("OK", null).create().show();
    }

    private void a(TweetActionType tweetActionType, Tweet tweet, Fragment fragment, FragmentActivity fragmentActivity, Session session, FriendshipCache friendshipCache, TwitterScribeItem twitterScribeItem, au auVar, boolean z) {
        if (tweetActionType == TweetActionType.b) {
            a(tweet, fragmentActivity, session, twitterScribeItem, auVar);
        } else if (tweetActionType == TweetActionType.c) {
            a(tweet, fragment, fragmentActivity, twitterScribeItem, auVar);
        } else if (tweetActionType == TweetActionType.d) {
            a(tweet, fragment, fragmentActivity, session, twitterScribeItem);
        } else if (tweetActionType == TweetActionType.e) {
            a(tweet, friendshipCache, twitterScribeItem, auVar);
        } else if (tweetActionType == TweetActionType.f) {
            b(tweet, fragment, fragmentActivity, session);
        } else if (tweetActionType == TweetActionType.g) {
            c(tweet, fragment, fragmentActivity, session);
        } else if (tweetActionType == TweetActionType.h) {
            a(tweet, fragment, fragmentActivity, session);
        } else if (tweetActionType == TweetActionType.m) {
            a(tweet, fragmentActivity, twitterScribeItem, z);
        } else if (tweetActionType == TweetActionType.i) {
            a(tweet, friendshipCache, fragmentActivity, session);
        } else if (tweetActionType == TweetActionType.j) {
            b(tweet, friendshipCache, fragmentActivity, session);
        } else if (tweetActionType == TweetActionType.k) {
            a(tweet, friendshipCache, fragmentActivity, session, auVar);
        } else if (tweetActionType == TweetActionType.l) {
            b(tweet, friendshipCache, fragmentActivity, session, auVar);
        } else if (tweetActionType == TweetActionType.r) {
            a(tweet, (Context) fragmentActivity);
        } else if (tweetActionType == TweetActionType.n) {
            a(tweet, fragmentActivity, twitterScribeItem);
        } else if (tweetActionType == TweetActionType.p || tweetActionType == TweetActionType.q) {
            a(tweet, fragment, fragmentActivity, session, tweetActionType == TweetActionType.p);
        }
    }

    private void a(Tweet tweet, Fragment fragment, FragmentActivity fragmentActivity, Session session, boolean z) {
        new mb(fragment, fragmentActivity, az.a(this.g), null).a(tweet, z, session, a(BuildConfig.VERSION_NAME, z ? "pin" : "unpin", tweet, null));
    }

    private void a(TweetActionType tweetActionType, Tweet tweet, Fragment fragment, FragmentActivity fragmentActivity, Session session) {
        int i;
        switch (sw.a[tweetActionType.ordinal()]) {
            case WireMessage.WIRE_CHAT /*1*/:
                i = 10;
                break;
            case WireMessage.WIRE_CONTROL /*2*/:
                c(tweet, fragment, fragmentActivity, session);
                return;
            case ControlMessage.CONTROL_PRESENCE /*4*/:
                i = 1;
                break;
            case mx.UserView_actionButtonPaddingRight /*5*/:
                i = 2;
                break;
            case mx.UserView_actionButtonPaddingBottom /*6*/:
                i = 3;
                break;
            case UsernameError.ERROR_USERNAME_CHANGE_LIMIT_EXCEEDED /*7*/:
                i = 4;
                break;
            case ControlMessage.CONTROL_BAN /*8*/:
                a(tweet, fragment, fragmentActivity, session);
                return;
            default:
                return;
        }
        io.a(fragmentActivity, i, tweet.d());
    }

    public void a(TweetActionType tweetActionType, Tweet tweet, FriendshipCache friendshipCache, TwitterScribeItem twitterScribeItem, au auVar) {
        a(tweetActionType, tweet, friendshipCache, twitterScribeItem, auVar, false);
    }

    public void a(TweetActionType tweetActionType, Tweet tweet, FriendshipCache friendshipCache, TwitterScribeItem twitterScribeItem, au auVar, boolean z) {
        if (this.c != null) {
            Fragment fragment = (Fragment) this.e.get();
            if (fragment != null) {
                FragmentActivity activity = fragment.getActivity();
                if (activity != null) {
                    Session c = this.d.c();
                    if (c.d()) {
                        a(tweetActionType, tweet, fragment, activity, c, friendshipCache, twitterScribeItem, auVar, z);
                    } else if (io.a()) {
                        a(tweetActionType, tweet, fragment, activity, c);
                    }
                }
            }
        }
    }

    public boolean a(TweetActionType tweetActionType, Tweet tweet, FriendshipCache friendshipCache) {
        a(tweetActionType, tweet, friendshipCache, null, null);
        return true;
    }

    protected void a(long j, boolean z, int i) {
    }
}
