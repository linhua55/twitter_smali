package com.twitter.android;

import android.content.ContentUris;
import android.content.Intent;
import android.database.Cursor;
import android.net.Uri;
import android.os.Bundle;
import android.support.v4.app.LoaderManager;
import android.support.v4.app.LoaderManager.LoaderCallbacks;
import android.support.v4.content.Loader;
import android.support.v7.recyclerview.BuildConfig;
import android.view.View;
import android.widget.BaseAdapter;
import android.widget.ListView;
import cdk;
import cep;
import cgq;
import com.twitter.android.client.x;
import com.twitter.android.timeline.bb;
import com.twitter.android.widget.er;
import com.twitter.app.common.base.TwitterFragmentActivity;
import com.twitter.app.common.list.TwitterListFragment;
import com.twitter.app.common.list.h;
import com.twitter.app.common.list.k;
import com.twitter.app.common.list.t;
import com.twitter.library.client.Session;
import com.twitter.library.provider.ck;
import com.twitter.library.provider.dd;
import com.twitter.library.provider.dg;
import com.twitter.library.scribe.ScribeItem;
import com.twitter.library.scribe.ScribeLog;
import com.twitter.library.scribe.TwitterScribeAssociation;
import com.twitter.library.scribe.TwitterScribeItem;
import com.twitter.library.scribe.TwitterScribeLog;
import com.twitter.library.util.FriendshipCache;
import com.twitter.library.widget.UserView;
import com.twitter.library.widget.e;
import com.twitter.model.core.Tweet;
import com.twitter.model.core.p;
import com.twitter.util.ak;
import com.twitter.util.collection.CollectionUtils;
import com.twitter.util.collection.MutableSet;
import com.twitter.util.collection.z;
import com.twitter.util.object.ObjectUtils;
import com.twitter.util.w;
import defpackage.bbu;
import defpackage.bbw;
import defpackage.bdl;
import defpackage.boh;
import defpackage.boj;
import defpackage.bok;
import defpackage.cdg;
import defpackage.cni;
import java.io.Serializable;
import java.util.Set;
import tv.periscope.chatman.api.ControlMessage;
import tv.periscope.chatman.api.WireMessage;

/* compiled from: Twttr */
public class ActivityDetailFragment extends TwitterListFragment<h, bdl<h>> implements LoaderCallbacks<Cursor> {
    private int a;
    private long b;
    private long c;
    private FriendshipCache d;
    private int e;
    private int f;
    private int[] g;
    private boolean h;
    private er i;
    private xs j;
    private vu k;
    private boolean l;
    private vn m;
    private final kr<View, Tweet> n;
    private final Set<Long> o;
    private final e<UserView> p;

    public ActivityDetailFragment() {
        this.e = -1;
        this.f = -1;
        this.n = new i(this);
        this.o = MutableSet.a();
        this.p = new j(this);
    }

    public /* synthetic */ void onLoadFinished(Loader loader, Object obj) {
        a(loader, (Cursor) obj);
    }

    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        h C = C();
        this.a = C.b("event_type");
        this.b = C.a("user_tag", 0);
        this.c = C.a("status_tag", 0);
        this.l = true;
        if (bundle != null) {
            if (bundle.containsKey("friendship_cache")) {
                this.d = (FriendshipCache) ObjectUtils.a(com.twitter.util.object.e.a(bundle.getSerializable("friendship_cache")));
            } else {
                this.d = new FriendshipCache();
            }
            this.h = bundle.getBoolean("hide_action_button", true);
        } else {
            this.h = C.a("hide_action_button", true);
            this.d = new FriendshipCache();
            if (this.a == 5 || this.a == 13) {
                this.l = false;
            }
            if (a(null, true) != null) {
                bbu.a(new TwitterScribeLog(aT().g()).b(r0, ":::impression"));
            }
        }
        a((TwitterScribeAssociation) ((TwitterScribeAssociation) new TwitterScribeAssociation().a(5)).b(a("connect", true)));
    }

    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        this.m = new vo().a(getActivity(), aD(), -1, null, aH(), this.Z);
    }

    protected void a(t tVar) {
        super.a(tVar);
        tVar.d(2130968606);
    }

    public void onActivityCreated(Bundle bundle) {
        vu vuVar = null;
        int i = 0;
        super.onActivityCreated(bundle);
        if (this.i == null) {
            xs xsVar;
            int[] iArr;
            er erVar;
            int i2;
            TwitterFragmentActivity aI = aI();
            switch (this.a) {
                case WireMessage.WIRE_CHAT /*1*/:
                case ControlMessage.CONTROL_PRESENCE /*4*/:
                case mx.TwitterEditText_messageSize /*9*/:
                case mx.TwitterEditText_messageStyle /*10*/:
                case mx.TwitterEditText_maxCharacterCount /*11*/:
                case mx.TwitterEditText_characterCounterColor /*12*/:
                case mx.TwitterButton_nodpiBaseIconName /*16*/:
                case mx.TwitterButton_bounded /*17*/:
                    xs m = m();
                    boolean a = x.a(this.T).a();
                    TwitterScribeAssociation aD = aD();
                    vu vuVar2 = new vu(aI, a, new vr(this, aD, null, new cep().c("tweet:::platform_photo_card:click").d("tweet:::platform_player_card:click").a(TwitterScribeLog.a(aD, "tweet", "avatar", "profile_click")).b(p()).a()), null, aD);
                    vuVar2.b(this.n);
                    vuVar = vuVar2;
                    xsVar = m;
                    iArr = new int[]{2, 0};
                    erVar = new er(new BaseAdapter[]{vuVar2, m});
                    i2 = 0;
                    i = 1;
                    break;
                case mx.UserView_actionButtonPaddingRight /*5*/:
                case mx.TwitterEditText_characterCounterMode /*13*/:
                    xsVar = m();
                    erVar = new er(new BaseAdapter[]{xsVar});
                    iArr = new int[]{0};
                    i2 = -1;
                    break;
                default:
                    throw new UnsupportedOperationException();
            }
            this.j = xsVar;
            this.e = i;
            this.k = vuVar;
            this.f = i2;
            this.i = erVar;
            this.g = iArr;
        }
        ap().a.setAdapter(this.i);
    }

    private xs m() {
        return new k(getActivity(), 2130837689, this.p, this.d, false, this.h);
    }

    private void n() {
        TwitterFragmentActivity aI = aI();
        if (aI != null) {
            int count = this.j.getCount();
            if (a(this.j) != null) {
                switch (count) {
                    case WireMessage.WIRE_CHAT /*1*/:
                        aI.b(w.a(getResources().getString(2131361855, new Object[]{r2.a()}), ak.f()));
                    case WireMessage.WIRE_CONTROL /*2*/:
                        aI.b(w.a(getResources().getString(2131361857, new Object[]{r2.a(), r2.b()}), ak.f()));
                    default:
                        aI.b(w.a(getResources().getString(2131361856, new Object[]{r2.a(), Integer.valueOf(count - 1)}), ak.f()));
                }
            }
        }
    }

    private static z<String, String> a(xs xsVar) {
        Cursor e = xsVar.e();
        if (e == null || !e.moveToFirst()) {
            return null;
        }
        return z.a(e.getString(3), e.moveToNext() ? e.getString(3) : BuildConfig.VERSION_NAME);
    }

    protected void a() {
        super.a();
        ac_();
    }

    public void onStop() {
        long[] e = CollectionUtils.e(this.o);
        Session aT = aT();
        long g = aT.g();
        if (e != null) {
            c(new boj(this.T, aT, e, true), 0, 0);
            this.o.clear();
        }
        b(g);
        this.m.b(g);
        super.onStop();
    }

    protected void a(long j, long j2) {
        super.a(j, j2);
        b(j);
        this.m.b(j);
    }

    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putBoolean("hide_action_button", this.h);
        if (!this.d.a()) {
            bundle.putSerializable("friendship_cache", this.d);
        }
    }

    public void onActivityResult(int i, int i2, Intent intent) {
        switch (i) {
            case WireMessage.WIRE_CHAT /*1*/:
                if (-1 == i2 && intent != null) {
                    long longExtra = intent.getLongExtra("user_id", 0);
                    if (longExtra > 0 && intent.hasExtra("friendship")) {
                        int intExtra = intent.getIntExtra("friendship", 0);
                        FriendshipCache friendshipCache = this.d;
                        if (!friendshipCache.a(longExtra, intExtra)) {
                            friendshipCache.b(longExtra, intExtra);
                            this.i.notifyDataSetChanged();
                        }
                    }
                }
            default:
        }
    }

    protected void a(boolean z) {
        super.a(z);
        LoaderManager loaderManager = getLoaderManager();
        for (int restartLoader : this.g) {
            loaderManager.restartLoader(restartLoader, null, this);
        }
    }

    protected void ac_() {
        super.ac_();
        LoaderManager loaderManager = getLoaderManager();
        for (int initLoader : this.g) {
            loaderManager.initLoader(initLoader, null, this);
        }
    }

    protected void c() {
    }

    public Loader<Cursor> onCreateLoader(int i, Bundle bundle) {
        long g = aT().g();
        switch (i) {
            case mx.View_android_theme /*0*/:
                return new bu(getActivity(), ck.a(ContentUris.withAppendedId(dg.o, g), g), cdk.a, "user_groups_tag=?", new String[]{String.valueOf(this.b)}, "_id ASC").a(false);
            case WireMessage.WIRE_CONTROL /*2*/:
                Uri a;
                switch (this.a) {
                    case WireMessage.WIRE_CHAT /*1*/:
                    case mx.TwitterEditText_messageSize /*9*/:
                    case mx.TwitterEditText_messageStyle /*10*/:
                    case mx.TwitterEditText_maxCharacterCount /*11*/:
                    case mx.TwitterEditText_characterCounterColor /*12*/:
                    case mx.TwitterButton_nodpiBaseIconName /*16*/:
                    case mx.TwitterButton_bounded /*17*/:
                        a = ck.a(ContentUris.withAppendedId(dd.o, g), g);
                        break;
                    case ControlMessage.CONTROL_PRESENCE /*4*/:
                        a = ck.a(ContentUris.withAppendedId(dd.p, g), g);
                        break;
                    default:
                        a = null;
                        break;
                }
                if (a == null) {
                    return null;
                }
                return new bu(getActivity(), a, cdg.a, "status_groups_tag=?", new String[]{String.valueOf(this.c)}, "_id ASC");
            default:
                return null;
        }
    }

    public void a(Loader<Cursor> loader, Cursor cursor) {
        switch (loader.getId()) {
            case mx.View_android_theme /*0*/:
                this.j.a(new cgq(cursor));
                break;
            case WireMessage.WIRE_CONTROL /*2*/:
                this.k.c(cursor);
                break;
        }
        Object obj = (this.j.j() && (this.k == null || this.k.j())) ? null : 1;
        k ap = ap();
        if (obj != null) {
            ap.l();
        } else {
            ap.m();
        }
        if (this.l) {
            n();
        }
    }

    public void onLoaderReset(Loader<Cursor> loader) {
        switch (loader.getId()) {
            case mx.View_android_theme /*0*/:
                this.j.a(null);
            case WireMessage.WIRE_CONTROL /*2*/:
                this.k.a(null);
            default:
        }
    }

    private void a(View view, long j) {
        Intent putExtra = new Intent(getActivity(), ProfileActivity.class).putExtra("user_id", j).putExtra("screen_name", ((xp) view.getTag()).c.getUserName());
        putExtra.putExtra("association", ((TwitterScribeAssociation) new TwitterScribeAssociation(aD()).a(5)).a(this.Y));
        Serializable j2 = this.d.j(j);
        if (j2 != null) {
            putExtra.putExtra("friendship", j2);
        }
        startActivityForResult(putExtra, 1);
    }

    protected void a(ListView listView, View view, int i, long j) {
        if (this.i != null) {
            int c = this.i.c(i);
            if (c == this.e) {
                a(view, j);
            } else if (c == this.f) {
                bb bbVar = (bb) this.k.getItem(i);
                if (bbVar != null) {
                    if (this.a == 1) {
                        bbVar.b.j = 16;
                    }
                    z a = a(this.j);
                    if (a != null) {
                        bbVar.b.k = (String) a.a();
                    }
                    startActivity(new Intent(getActivity(), TweetActivity.class).putExtra("tw", bbVar.b).putExtra("association", aD()));
                }
            }
        }
    }

    private void a(UserView userView, long j) {
        TwitterScribeItem scribeItem = userView.getScribeItem();
        cni promotedContent = userView.getPromotedContent();
        if (userView.r.isChecked()) {
            if (!this.o.remove(Long.valueOf(j))) {
                this.aa.a(new bok(getActivity(), aT(), j, promotedContent));
            }
            this.d.c(j);
            a(scribeItem);
            return;
        }
        if (promotedContent != null) {
            this.aa.a(new boh(getActivity(), aT(), j, promotedContent));
        } else {
            this.o.add(Long.valueOf(j));
        }
        this.d.b(j);
        a(Boolean.valueOf(p.b(((xp) userView.getTag()).f)), scribeItem);
    }

    private String p() {
        return ScribeLog.a(a(null, false), ":tweet:link:open_link");
    }

    private void a(Boolean bool, TwitterScribeItem twitterScribeItem) {
        String a = a(null, true);
        bbw bbw = (TwitterScribeLog) ((TwitterScribeLog) new TwitterScribeLog(aT().g()).a((ScribeItem) twitterScribeItem)).b(a + ":::follow");
        bbu.a(bbw);
        if (bool.booleanValue()) {
            bbw.b(a + ":::follow_back");
            bbu.a(bbw);
        }
    }

    private void a(TwitterScribeItem twitterScribeItem) {
        String a = a(null, true);
        bbu.a(((TwitterScribeLog) new TwitterScribeLog(aT().g()).b(a + ":::unfollow")).a((ScribeItem) twitterScribeItem));
    }

    private void b(long j) {
        String a = a(null, false);
        if (a != null) {
            this.m.a(j, a + "::stream::results");
        }
    }

    private String a(String str, boolean z) {
        switch (this.a) {
            case WireMessage.WIRE_CHAT /*1*/:
                return "favorited_you";
            case ControlMessage.CONTROL_PRESENCE /*4*/:
                return "retweeted_you";
            case mx.UserView_actionButtonPaddingRight /*5*/:
                if (z) {
                    return "followed_you";
                }
                return str;
            case mx.TwitterEditText_messageSize /*9*/:
                return "retweeted_retweet";
            case mx.TwitterEditText_messageStyle /*10*/:
                return "favorited_retweet";
            case mx.TwitterEditText_maxCharacterCount /*11*/:
                return "retweeted_mention";
            case mx.TwitterEditText_characterCounterColor /*12*/:
                return "favorited_mention";
            case mx.TwitterEditText_characterCounterMode /*13*/:
                if (z) {
                    return "joined_twitter";
                }
                return str;
            case mx.TwitterButton_strokeWidth /*15*/:
                return "media_tagged_you";
            case mx.TwitterButton_nodpiBaseIconName /*16*/:
                return "favorited_media_tag";
            case mx.TwitterButton_bounded /*17*/:
                return "retweeted_media_tag";
            default:
                return str;
        }
    }
}
