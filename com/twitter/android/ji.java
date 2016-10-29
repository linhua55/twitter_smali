package com.twitter.android;

import aki;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.os.Bundle;
import android.util.SparseIntArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.AbsListView.LayoutParams;
import android.widget.LinearLayout;
import bbn;
import bdj;
import bdl;
import cga;
import com.facebook.shimmer.b;
import com.google.android.exoplayer.extractor.ExtractorSampleSource;
import com.google.android.exoplayer.text.CaptionStyleCompat;
import com.google.android.exoplayer.upstream.NetworkLock;
import com.google.android.exoplayer.util.Util;
import com.google.android.exoplayer.util.extensions.Buffer;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.flags.ModuleDescriptor;
import com.twitter.android.client.w;
import com.twitter.android.util.ah;
import com.twitter.android.widget.GapView;
import com.twitter.app.common.base.TwitterFragmentActivity;
import com.twitter.internal.android.widget.TypefacesSpan;
import com.twitter.internal.android.widget.p;
import com.twitter.library.api.UserSettings;
import com.twitter.library.client.bg;
import com.twitter.library.media.widget.UserImageView;
import com.twitter.library.provider.a;
import com.twitter.library.scribe.TwitterScribeAssociation;
import com.twitter.library.util.FriendshipCache;
import com.twitter.library.util.ao;
import com.twitter.library.util.aq;
import com.twitter.library.view.aa;
import com.twitter.library.widget.TweetView;
import com.twitter.library.widget.tweet.content.DisplayMode;
import com.twitter.library.widget.tweet.content.j;
import com.twitter.model.core.Tweet;
import com.twitter.model.core.TwitterUser;
import com.twitter.ui.view.s;
import com.twitter.ui.view.u;
import com.twitter.util.ab;
import com.twitter.util.aj;
import com.twitter.util.ak;
import com.twitter.util.collection.CollectionUtils;
import com.twitter.util.collection.MutableList;
import com.twitter.util.collection.ReferenceList;
import defpackage.bct;
import defpackage.bdd;
import defpackage.buf;
import defpackage.cex;
import java.util.Iterator;
import java.util.List;

/* compiled from: Twttr */
public class ji extends bdl<r> implements w {
    private final ah a;
    private final aki b;
    private final TypefacesSpan[] c;
    private final TypefacesSpan[] d;
    private final OnClickListener e;
    private final OnClickListener f;
    private final OnClickListener g;
    private final aa h;
    private final TwitterFragmentActivity i;
    private final TwitterScribeAssociation j;
    private final s k;
    private final boolean l;
    private final bg m;
    private final FriendshipCache n;
    private final ReferenceList<jk> o;
    private final List<Long> p;
    private final jo q;
    private final SparseIntArray r;
    private boolean s;
    private boolean t;

    public ji(TwitterFragmentActivity twitterFragmentActivity, boolean z, aa aaVar, FriendshipCache friendshipCache, ah ahVar, TwitterScribeAssociation twitterScribeAssociation, jo joVar, OnClickListener onClickListener, OnClickListener onClickListener2) {
        super(twitterFragmentActivity);
        this.e = new jj(this);
        this.k = new u().c(true).a();
        this.o = ReferenceList.a();
        this.p = MutableList.a();
        this.i = twitterFragmentActivity;
        this.j = twitterScribeAssociation;
        this.s = z;
        this.h = aaVar;
        this.f = onClickListener;
        this.g = onClickListener2;
        this.a = ahVar;
        this.q = joVar;
        this.m = bg.a();
        UserSettings j = this.m.c().j();
        boolean z2 = j != null && j.k;
        this.l = z2;
        this.n = friendshipCache;
        this.c = new TypefacesSpan[]{new TypefacesSpan(twitterFragmentActivity, 1)};
        this.d = new TypefacesSpan[]{this.c[0], new TypefacesSpan(twitterFragmentActivity, 1), new TypefacesSpan(twitterFragmentActivity, 1), new TypefacesSpan(twitterFragmentActivity, 1)};
        TypedArray obtainStyledAttributes = twitterFragmentActivity.obtainStyledAttributes(null, mx.NotificationSocialProofStyle, bct.notificationSocialProofStyle, 0);
        this.r = new SparseIntArray(11);
        this.r.put(5, obtainStyledAttributes.getResourceId(0, 0));
        this.r.put(13, obtainStyledAttributes.getResourceId(1, 0));
        this.r.put(1, obtainStyledAttributes.getResourceId(2, 0));
        this.r.put(10, obtainStyledAttributes.getResourceId(3, 0));
        this.r.put(12, obtainStyledAttributes.getResourceId(4, 0));
        this.r.put(4, obtainStyledAttributes.getResourceId(5, 0));
        this.r.put(9, obtainStyledAttributes.getResourceId(6, 0));
        this.r.put(11, obtainStyledAttributes.getResourceId(7, 0));
        this.r.put(16, obtainStyledAttributes.getResourceId(8, 0));
        this.r.put(17, obtainStyledAttributes.getResourceId(9, 0));
        this.r.put(6, 2130838977);
        obtainStyledAttributes.recycle();
        this.b = new aki(twitterFragmentActivity.getResources(), this.c, this.d);
    }

    public void a(boolean z) {
        if (this.s != z) {
            this.s = z;
            notifyDataSetChanged();
        }
    }

    public View a(Context context, r rVar, ViewGroup viewGroup) {
        LayoutInflater from = LayoutInflater.from(context);
        int i = rVar.b.d;
        switch (i) {
            case ModuleDescriptor.MODULE_VERSION /*1*/:
            case CaptionStyleCompat.EDGE_TYPE_DEPRESSED /*4*/:
            case EbmlReader.TYPE_FLOAT /*5*/:
            case ExtractorSampleSource.DEFAULT_MIN_LOADABLE_RETRY_COUNT_LIVE /*6*/:
            case b.ShimmerFrameLayout_fixed_height /*9*/:
            case NetworkLock.DOWNLOAD_PRIORITY /*10*/:
            case b.ShimmerFrameLayout_relative_width /*11*/:
            case Atom.FULL_HEADER_SIZE /*12*/:
            case Atom.LONG_HEADER_SIZE /*16*/:
            case bdd.TwitterButton_bounded /*17*/:
                return v.a(from, this.g, i);
            case ChunkHeader.SIZE_IN_BYTES /*8*/:
                return from.inflate(2130968607, null);
            case b.ShimmerFrameLayout_shape /*13*/:
                return jn.a(from, context, this.f, this.e, 2130968612);
            default:
                return a(from, viewGroup);
        }
    }

    public void a(View view, Context context, r rVar) {
    }

    public void a(View view, Context context, r rVar, int i) {
        boolean z;
        a aVar;
        TwitterUser twitterUser;
        Tweet tweet;
        cga cga = rVar.b;
        Resources resources = context.getResources();
        if (rVar.a || cga.b <= this.a.a()) {
            z = true;
        } else {
            z = false;
        }
        this.a.a(cga.b);
        int i2 = this.r.get(cga.d);
        Tweet tweet2;
        Tweet tweet3;
        switch (cga.d) {
            case ModuleDescriptor.MODULE_VERSION /*1*/:
            case b.ShimmerFrameLayout_fixed_height /*9*/:
            case NetworkLock.DOWNLOAD_PRIORITY /*10*/:
            case b.ShimmerFrameLayout_relative_width /*11*/:
            case Atom.FULL_HEADER_SIZE /*12*/:
            case Atom.LONG_HEADER_SIZE /*16*/:
            case bdd.TwitterButton_bounded /*17*/:
                tweet2 = (Tweet) rVar.a().get(0);
                tweet2.g = z;
                a(view, cga.c(), rVar.a(), cga.e, cga.h, cga.h > rVar.a().size(), i2, cga.bf_(), cga.d);
                ((p) view).setHighlighted(!z);
                aVar = null;
                twitterUser = null;
                tweet = tweet2;
                break;
            case Buffer.FLAG_DECODE_ONLY /*2*/:
                tweet3 = (Tweet) CollectionUtils.b(rVar.b());
                if (tweet3 == null) {
                    aVar = null;
                    twitterUser = null;
                    tweet = tweet3;
                    break;
                }
                tweet3.g = z;
                a(view, tweet3, null, -1);
                aVar = null;
                twitterUser = null;
                tweet = tweet3;
                break;
            case Util.TYPE_OTHER /*3*/:
                tweet3 = (Tweet) rVar.a().get(0);
                tweet3.g = z;
                a(view, tweet3, null, -1);
                aVar = null;
                twitterUser = null;
                tweet = tweet3;
                break;
            case CaptionStyleCompat.EDGE_TYPE_DEPRESSED /*4*/:
                tweet2 = (Tweet) rVar.b().get(0);
                tweet2.g = z;
                a(view, cga.c(), rVar.b(), cga.e, cga.k, cga.k > rVar.b().size(), i2, cga.bf_(), cga.d);
                ((p) view).setHighlighted(!z);
                aVar = null;
                twitterUser = null;
                tweet = tweet2;
                break;
            case EbmlReader.TYPE_FLOAT /*5*/:
                TwitterUser twitterUser2 = (TwitterUser) CollectionUtils.b(cga.c());
                a(view, cga.c(), null, cga.e, 0, false, i2, cga.bf_(), cga.d);
                ((p) view).setHighlighted(!z);
                aVar = null;
                twitterUser = twitterUser2;
                tweet = null;
                break;
            case ExtractorSampleSource.DEFAULT_MIN_LOADABLE_RETRY_COUNT_LIVE /*6*/:
                v vVar = (v) view.getTag();
                a aVar2 = (a) rVar.c().get(0);
                v.a(i(), view, i2, cga.c(), null, false, cga.bf_(), cga.d, ak.f(), this.l);
                vVar.l = aVar2;
                if (vVar.g != null) {
                    a(vVar.g, cga.c());
                }
                vVar.b.setText(aq.a(this.d, resources.getString(2131362904, new Object[]{((TwitterUser) cga.c().get(0)).d, ((a) rVar.c().get(0)).c}), '\"'));
                vVar.h.getLayoutParams().width = buf.a().c();
                vVar.h.requestLayout();
                ((p) view).setHighlighted(!z);
                aVar = aVar2;
                twitterUser = null;
                tweet = null;
                break;
            case ChunkHeader.SIZE_IN_BYTES /*8*/:
                a(view, cga, i);
                aVar = null;
                twitterUser = null;
                tweet = null;
                break;
            case b.ShimmerFrameLayout_shape /*13*/:
                twitterUser = (TwitterUser) CollectionUtils.b(cga.c());
                jn.a(context, view, twitterUser, null, cga.d, this.n);
                ((p) view).setHighlighted(!z);
                aVar = null;
                tweet = null;
                break;
            case b.ShimmerFrameLayout_tilt /*14*/:
                Object a = rVar.a();
                if (!CollectionUtils.b(a)) {
                    tweet3 = (Tweet) a.get(0);
                    if (tweet3 == null) {
                        bbn.a(new RuntimeException("Quote Notification null status"));
                        aVar = null;
                        twitterUser = null;
                        tweet = tweet3;
                        break;
                    }
                    tweet3.g = z;
                    a(view, tweet3, null, -1);
                    aVar = null;
                    twitterUser = null;
                    tweet = tweet3;
                    break;
                }
                bbn.a(new RuntimeException("Quote Notification statuses null or empty"));
                aVar = null;
                twitterUser = null;
                tweet = null;
                break;
            case bdd.TwitterButton_strokeWidth /*15*/:
                tweet3 = (Tweet) rVar.a().get(0);
                tweet3.g = z;
                a(view, tweet3, null, -1);
                aVar = null;
                twitterUser = null;
                tweet = tweet3;
                break;
            default:
                aVar = null;
                twitterUser = null;
                tweet = null;
                break;
        }
        a(tweet, twitterUser, aVar, cga.bf_(), cga.d, i);
    }

    protected void a(View view, Tweet tweet, String str, int i) {
        boolean z = true;
        jk jkVar = (jk) view.getTag();
        jkVar.d.setQuoteDisplayMode(1);
        if (this.n != null) {
            this.n.a(tweet);
        }
        jkVar.d.setDisplaySensitiveMedia(this.l);
        TweetView tweetView = jkVar.d;
        boolean z2 = this.s && bdj.a(i()).a(tweet);
        tweetView.setAlwaysExpandMedia(z2);
        jkVar.d.setContentSize(ao.a);
        jkVar.d.setDisplayTranslationBadge(cex.a(i(), tweet));
        TweetView tweetView2 = jkVar.d;
        if (!aj.a(str)) {
            i--;
        }
        tweetView2.setSocialContextCount(i);
        jkVar.d.setSocialContextName(str);
        jkVar.d.a(tweet, this.k, this.t, new j(false, this.i, tweet, DisplayMode.FORWARD, this.j, null));
        tweetView2 = jkVar.d;
        if (tweet.g) {
            z = false;
        }
        tweetView2.setHighlighted(z);
    }

    public void b(boolean z) {
        if (this.t != z) {
            this.t = z;
            if (!z) {
                Iterator it = this.o.iterator();
                while (it.hasNext()) {
                    ((vt) it.next()).d.l();
                }
            }
        }
    }

    private void a(View view, List<TwitterUser> list, List<Tweet> list2, int i, int i2, boolean z, int i3, long j, int i4) {
        v vVar = (v) view.getTag();
        v.a(i(), view, i3, list, list2, z, j, i4, ak.f(), this.l);
        vVar.b.setText(this.b.a(i4, list, i, i2, null));
        if (vVar.g != null) {
            a(vVar.g, (List) list);
        }
        vVar.h.getLayoutParams().width = buf.a().c();
        vVar.h.requestLayout();
    }

    public int a(r rVar) {
        switch (rVar.b.d) {
            case ModuleDescriptor.MODULE_VERSION /*1*/:
            case CaptionStyleCompat.EDGE_TYPE_DEPRESSED /*4*/:
            case b.ShimmerFrameLayout_fixed_height /*9*/:
            case NetworkLock.DOWNLOAD_PRIORITY /*10*/:
            case b.ShimmerFrameLayout_relative_width /*11*/:
            case Atom.FULL_HEADER_SIZE /*12*/:
            case Atom.LONG_HEADER_SIZE /*16*/:
            case bdd.TwitterButton_bounded /*17*/:
                return 0;
            case EbmlReader.TYPE_FLOAT /*5*/:
                return 5;
            case ExtractorSampleSource.DEFAULT_MIN_LOADABLE_RETRY_COUNT_LIVE /*6*/:
                return 1;
            case ChunkHeader.SIZE_IN_BYTES /*8*/:
                return 3;
            case b.ShimmerFrameLayout_shape /*13*/:
                return 4;
            default:
                return 2;
        }
    }

    public long getItemId(int i) {
        r rVar = (r) getItem(i);
        return rVar != null ? rVar.b.bf_() : super.getItemId(i);
    }

    public int getViewTypeCount() {
        return 6;
    }

    protected static LayoutParams a() {
        return new LayoutParams(-1, -2);
    }

    protected static LinearLayout.LayoutParams b() {
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -2);
        layoutParams.weight = 1.0f;
        return layoutParams;
    }

    protected static void a(ViewGroup viewGroup, List<TwitterUser> list) {
        int size = list.size();
        int size2 = list.size() - 0;
        if (size2 > 0) {
            viewGroup.setVisibility(0);
            int childCount = viewGroup.getChildCount();
            int min = Math.min(size2, childCount);
            int i = 0;
            int i2 = 0;
            while (i < min && i2 < size) {
                UserImageView userImageView = (UserImageView) viewGroup.getChildAt(i);
                userImageView.setVisibility(0);
                userImageView.a((TwitterUser) list.get(i2));
                i++;
                i2++;
            }
            for (size2 = min; size2 < childCount; size2++) {
                viewGroup.getChildAt(size2).setVisibility(8);
            }
            return;
        }
        viewGroup.setVisibility(8);
    }

    protected View a(LayoutInflater layoutInflater, ViewGroup viewGroup) {
        View inflate = layoutInflater.inflate(2130969484, viewGroup, false);
        jk jkVar = new jk(inflate);
        jkVar.d.setOnTweetViewClickListener(this.h);
        jkVar.d.setFriendshipCache(this.n);
        inflate.setTag(jkVar);
        this.o.b(jkVar);
        return inflate;
    }

    protected void a(Tweet tweet, TwitterUser twitterUser, a aVar, long j, int i, int i2) {
        Bundle bundle = new Bundle(7);
        bundle.putParcelable("user", twitterUser);
        bundle.putParcelable("tweet", tweet);
        ab.a(bundle, "list", aVar, a.a);
        bundle.putInt("position", i2);
        bundle.putInt("event_type", i);
        bundle.putLong("activity_id", j);
        this.q.a(bundle);
    }

    protected void a(View view, cga cga, int i) {
        ((GapView) view).setSpinnerActive(this.p.contains(Long.valueOf(cga.b)));
        a(null, null, null, -1, 0, i);
    }

    public void a(long j) {
        this.p.add(Long.valueOf(j));
    }

    public List<Long> c() {
        return this.p;
    }

    public void d() {
        this.p.clear();
    }
}
