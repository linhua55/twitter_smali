package com.twitter.android.news;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.ContentUris;
import android.content.Intent;
import android.database.Cursor;
import android.os.Bundle;
import android.support.v4.app.LoaderManager.LoaderCallbacks;
import android.support.v4.content.Loader;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.AbsListView;
import android.widget.BaseAdapter;
import android.widget.ListView;
import android.widget.TextView;
import cbk;
import cdk;
import cep;
import cgq;
import com.twitter.android.ProfileActivity;
import com.twitter.android.ScrollingHeaderActivity;
import com.twitter.android.TweetActivity;
import com.twitter.android.TweetListFragment;
import com.twitter.android.bu;
import com.twitter.android.gy;
import com.twitter.android.sn;
import com.twitter.android.timeline.aw;
import com.twitter.android.timeline.bb;
import com.twitter.android.vr;
import com.twitter.android.vu;
import com.twitter.android.widget.er;
import com.twitter.android.widget.et;
import com.twitter.android.xs;
import com.twitter.app.common.base.u;
import com.twitter.config.d;
import com.twitter.internal.android.widget.GroupedRowView;
import com.twitter.library.client.bg;
import com.twitter.library.provider.ck;
import com.twitter.library.provider.cx;
import com.twitter.library.scribe.ScribeLog;
import com.twitter.library.scribe.TwitterScribeAssociation;
import com.twitter.library.scribe.TwitterScribeLog;
import com.twitter.library.util.FriendshipCache;
import com.twitter.library.widget.UserView;
import com.twitter.library.widget.e;
import com.twitter.util.object.ObjectUtils;
import defpackage.bbu;
import defpackage.bdl;
import defpackage.boh;
import defpackage.bok;
import defpackage.cdg;
import defpackage.cgu;

/* compiled from: Twttr */
public class NewsDetailRelatedTweetsFragment extends TweetListFragment<aw, vu> implements LoaderCallbacks<Cursor>, e<UserView> {
    private String a;
    private long b;
    private boolean c;
    private FriendshipCache d;
    private k e;
    private xs f;
    private boolean g;
    private er h;

    public /* synthetic */ void onLoadFinished(Loader loader, Object obj) {
        a(loader, (Cursor) obj);
    }

    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.a = C().f("news_id");
        this.b = (long) cbk.a(this.a);
        if (bundle == null || !bundle.containsKey("friendship_cache")) {
            this.d = new FriendshipCache();
        } else {
            this.d = (FriendshipCache) bundle.getSerializable("friendship_cache");
        }
        this.g = d.a(aT().g(), "japan_news_android_author_account_section_enabled", true);
        this.c = false;
    }

    public void a() {
        super.a();
        ac_();
    }

    protected void a(boolean z) {
        super.a(z);
        if (this.g) {
            getLoaderManager().restartLoader(1, null, this);
        }
    }

    protected void ac_() {
        super.ac_();
        if (this.g) {
            getLoaderManager().initLoader(1, null, this);
        }
    }

    @SuppressLint({"MissingSuperCall"})
    protected void a(cgu<aw> cgu_com_twitter_android_timeline_aw) {
        if (this.c || !cgu_com_twitter_android_timeline_aw.g()) {
            b((cgu) cgu_com_twitter_android_timeline_aw);
        } else {
            ((NewsDetailActivity) getActivity()).l();
            this.c = true;
        }
        if (this.W) {
            J_();
            this.W = false;
        }
    }

    public void a(Loader<Cursor> loader, Cursor cursor) {
        if (this.f != null) {
            this.f.a(new cgq(cursor));
        }
    }

    public void onLoaderReset(Loader<Cursor> loader) {
    }

    protected void g() {
        this.e.m();
    }

    public void onAttach(Activity activity) {
        super.onAttach(activity);
        if (activity instanceof k) {
            this.e = (k) activity;
        }
    }

    protected Loader<Cursor> q_() {
        if (this.a == null) {
            return null;
        }
        return new bu(getActivity(), ck.a(ContentUris.withAppendedId(cx.b, this.b), aT().g()), cdg.a, null, null, null);
    }

    public Loader<Cursor> onCreateLoader(int i, Bundle bundle) {
        if (this.a == null) {
            return null;
        }
        return new bu(getActivity(), ck.a(ContentUris.withAppendedId(cx.c, this.b), aT().g()), cdk.a, null, null, null);
    }

    @SuppressLint({"InflateParams"})
    public void onActivityCreated(Bundle bundle) {
        super.onActivityCreated(bundle);
        String i = i();
        TwitterScribeAssociation twitterScribeAssociation = (TwitterScribeAssociation) ((TwitterScribeAssociation) ((TwitterScribeAssociation) new TwitterScribeAssociation().a(1)).b(i)).d("tweet");
        vr vrVar = new vr(this, twitterScribeAssociation, null, new cep().a(i + ":tweet:avatar:profile_click").b(i + ":tweet::open_link").c(i + ":tweet:photo:click").a(), new sn(this, twitterScribeAssociation));
        int b = C().b("tweet_count");
        bdl gyVar = new gy(aI(), true, vrVar, this.d, -1, aD());
        int f = n.f(bg.a().c().g());
        int b2 = n.b();
        View inflate = LayoutInflater.from(getActivity()).inflate(f, null);
        ((TextView) inflate.findViewById(2131952427)).setText(getResources().getQuantityString(b2, b, new Object[]{Integer.valueOf(b)}));
        ((GroupedRowView) inflate).setStyle(1);
        if (this.g) {
            View inflate2 = LayoutInflater.from(getActivity()).inflate(2130969129, null);
            ((TextView) inflate2.findViewById(2131952427)).setText(getString(2131363137));
            ((GroupedRowView) inflate2).setStyle(1);
            this.f = new l(getActivity(), 2130837689, this, this.d, false);
            this.f.c(false);
            this.h = new er(new BaseAdapter[]{new et(inflate2), this.f, new et(inflate), gyVar}, 2);
        } else {
            this.h = new er(new BaseAdapter[]{new et(inflate), gyVar}, 2);
        }
        ap().a(gyVar, this.h);
    }

    protected void a(ListView listView, View view, int i, long j) {
        int c = this.h.c(i - listView.getHeaderViewsCount());
        if (this.g && c == 1) {
            startActivity(new Intent(getActivity(), ProfileActivity.class).putExtra("user_id", ((Cursor) ObjectUtils.a(listView.getItemAtPosition(i))).getLong(2)));
        } else if ((this.g && c == 3) || c == 1) {
            startActivity(new u().d(false).a(getActivity(), TweetActivity.class).putExtra("tw", ((bb) ObjectUtils.a(listView.getItemAtPosition(i))).b).putExtra("association", aD()));
        }
    }

    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        if (!this.d.a()) {
            bundle.putSerializable("friendship_cache", this.d);
        }
    }

    protected boolean p() {
        return true;
    }

    protected int R_() {
        return 0;
    }

    public void a(UserView userView, long j, int i, int i2) {
        String str;
        if (userView.r == null || !userView.r.isChecked()) {
            this.d.b(j);
            this.aa.a(new boh(getActivity(), aT(), j, userView.getPromotedContent()));
            str = "follow";
        } else {
            this.d.c(j);
            this.aa.a(new bok(getActivity(), aT(), j, userView.getPromotedContent()));
            str = "unfollow";
        }
        b(ScribeLog.a(i(), ":user_module:user", str));
    }

    protected String i() {
        return "news_details";
    }

    private void b(String str) {
        bbu.a(new TwitterScribeLog(aT().g()).b(str));
    }

    public boolean a(AbsListView absListView, int i, int i2, int i3, boolean z) {
        boolean a = super.a(absListView, i, i2, i3, z);
        if (i > 1) {
            ScrollingHeaderActivity scrollingHeaderActivity = (ScrollingHeaderActivity) getActivity();
            if (this.S) {
                scrollingHeaderActivity.b(-(this.O - this.N), this.P);
            }
        }
        return a;
    }

    protected void h() {
        b(ScribeLog.a(i(), "tweet::last:impression"));
    }
}
