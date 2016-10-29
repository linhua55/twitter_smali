package com.twitter.android;

import android.content.Context;
import android.database.Cursor;
import android.os.Bundle;
import android.support.v4.view.ViewPager;
import android.text.SpannableString;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.ImageButton;
import android.widget.TextView;
import bbl;
import bbn;
import bdj;
import bdl;
import ccc;
import ccu;
import cgu;
import cni;
import com.facebook.shimmer.b;
import com.google.android.exoplayer.C;
import com.google.android.exoplayer.extractor.ExtractorSampleSource;
import com.google.android.exoplayer.text.CaptionStyleCompat;
import com.google.android.exoplayer.util.Util;
import com.google.android.exoplayer.util.extensions.Buffer;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.flags.ModuleDescriptor;
import com.squareup.okhttp.v_1_5_1.internal.http.HttpURLConnectionImpl;
import com.twitter.android.client.n;
import com.twitter.android.client.w;
import com.twitter.android.widget.PipView;
import com.twitter.android.widget.TextSwitcherView;
import com.twitter.android.widget.TopicView;
import com.twitter.app.common.base.TwitterFragmentActivity;
import com.twitter.config.d;
import com.twitter.internal.android.widget.GroupedRowView;
import com.twitter.internal.android.widget.HorizontalListView;
import com.twitter.internal.android.widget.TypefacesSpan;
import com.twitter.library.client.bg;
import com.twitter.library.provider.ce;
import com.twitter.library.scribe.TwitterScribeAssociation;
import com.twitter.library.util.FriendshipCache;
import com.twitter.library.util.ao;
import com.twitter.library.view.aa;
import com.twitter.library.widget.TweetView;
import com.twitter.library.widget.UserSocialView;
import com.twitter.library.widget.e;
import com.twitter.library.widget.tweet.content.DisplayMode;
import com.twitter.library.widget.tweet.content.j;
import com.twitter.model.core.Tweet;
import com.twitter.model.core.p;
import com.twitter.util.aj;
import com.twitter.util.ak;
import com.twitter.util.collection.ReferenceList;
import com.twitter.util.collection.r;
import com.twitter.util.serialization.m;
import defpackage.bcw;
import defpackage.bdd;
import defpackage.cdy;
import defpackage.cex;
import defpackage.cgq;
import defpackage.cgr;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* compiled from: Twttr */
public class oz extends bdl<pk> implements w {
    private static final Map<String, Integer> a;
    private static final Map<String, Integer> b;
    private final Set<Long> A;
    private final String B;
    private final kq C;
    private final xd D;
    private final TwitterFragmentActivity c;
    private final bg d;
    private final FriendshipCache e;
    private final kr<View, Object> f;
    private final OnItemClickListener g;
    private final xc h;
    private final OnClickListener i;
    private final ReferenceList<vt> j;
    private final List<n> k;
    private final String l;
    private final int m;
    private final int n;
    private final TwitterScribeAssociation o;
    private final boolean p;
    private final boolean q;
    private aa r;
    private aa s;
    private aa t;
    private aa u;
    private aa v;
    private Cursor w;
    private final boolean x;
    private boolean y;
    private final String z;

    static {
        a = (Map) r.d().b("event_parrot", Integer.valueOf(2131362669)).q();
        b = (Map) r.d().b("map_pin", Integer.valueOf(bcw.ic_highlight_context_nearby)).b("newspaper", Integer.valueOf(2130838979)).b("speech_bubble", Integer.valueOf(bcw.ic_activity_reply_tweet)).b(TtmlNode.TAG_HEAD, Integer.valueOf(bcw.ic_activity_follow_tweet_default)).b("megaphone", Integer.valueOf(bcw.ic_activity_top_tweet)).q();
    }

    public oz(TwitterFragmentActivity twitterFragmentActivity, String str, FriendshipCache friendshipCache, kr<View, Object> krVar, OnItemClickListener onItemClickListener, xc xcVar, kq kqVar, int i, boolean z, String str2, Set<Long> set, String str3, boolean z2, boolean z3, int i2, OnClickListener onClickListener) {
        super(twitterFragmentActivity);
        this.j = ReferenceList.a();
        this.k = new LinkedList();
        this.D = new pe();
        this.c = twitterFragmentActivity;
        this.d = bg.a();
        this.l = str;
        this.e = friendshipCache;
        this.f = krVar;
        this.g = onItemClickListener;
        this.h = xcVar;
        this.i = onClickListener;
        this.m = i;
        this.n = i2;
        this.B = str3;
        this.q = z2;
        if (this.m == 2) {
            this.o = (TwitterScribeAssociation) ((TwitterScribeAssociation) ((TwitterScribeAssociation) ((TwitterScribeAssociation) new TwitterScribeAssociation().a(5)).a(this.d.c().g())).b("search")).c("people");
        } else {
            this.o = (TwitterScribeAssociation) ((TwitterScribeAssociation) ((TwitterScribeAssociation) new TwitterScribeAssociation().a(6)).b("search")).c("universal");
        }
        this.w = null;
        this.p = z;
        this.z = str2;
        this.C = kqVar;
        this.A = set;
        this.x = z3;
    }

    void a(Cursor cursor) {
        this.w = cursor;
        for (n a : this.k) {
            a.a(null);
        }
    }

    public cgu<pk> ad_() {
        return cgr.b();
    }

    public void a(aa aaVar, aa aaVar2, aa aaVar3, aa aaVar4, aa aaVar5) {
        this.r = aaVar;
        this.s = aaVar2;
        this.t = aaVar3;
        this.u = aaVar4;
        this.v = aaVar5;
    }

    public int a(long j) {
        Iterator it = h().iterator();
        int i = 0;
        while (it.hasNext()) {
            if (((long) ((pk) it.next()).c) == j) {
                return i;
            }
            i++;
        }
        return 0;
    }

    private void a(GroupedRowView groupedRowView, int i) {
        switch (i) {
            case Util.TYPE_DASH /*0*/:
                groupedRowView.setSingle(false);
                groupedRowView.setStyle(0);
            case ModuleDescriptor.MODULE_VERSION /*1*/:
                groupedRowView.setSingle(false);
                groupedRowView.setStyle(1);
            case Buffer.FLAG_DECODE_ONLY /*2*/:
                groupedRowView.setSingle(false);
                groupedRowView.setStyle(2);
            case Util.TYPE_OTHER /*3*/:
                groupedRowView.setSingle(false);
                groupedRowView.setStyle(3);
            case CaptionStyleCompat.EDGE_TYPE_DEPRESSED /*4*/:
                groupedRowView.setSingle(true);
            case EbmlReader.TYPE_FLOAT /*5*/:
                groupedRowView.setSingle(false);
                groupedRowView.setStyle(1);
                groupedRowView.a();
            default:
        }
    }

    public int getViewTypeCount() {
        return 25;
    }

    public int getItemViewType(int i) {
        return ((pk) getItem(i)).b;
    }

    private View a(Context context, int i, pk pkVar, View view, ViewGroup viewGroup) {
        View view2;
        pb pbVar;
        if (view == null) {
            View view3 = (GroupedRowView) LayoutInflater.from(context).inflate(2130968876, viewGroup, false);
            pb pbVar2 = new pb(new vt(view3));
            switch (pkVar.b) {
                case CaptionStyleCompat.EDGE_TYPE_DEPRESSED /*4*/:
                    pbVar2.a.d.setOnTweetViewClickListener(this.s);
                    break;
                case b.ShimmerFrameLayout_fixed_height /*9*/:
                    pbVar2.a.d.setOnTweetViewClickListener(this.t);
                    break;
                case bdd.TweetView_mediaTopMargin /*21*/:
                    if (pkVar.k.b != 2) {
                        if (pkVar.k.b == 3) {
                            pbVar2.a.d.setOnTweetViewClickListener(this.v);
                            break;
                        }
                    }
                    pbVar2.a.d.setOnTweetViewClickListener(this.u);
                    break;
                    break;
                default:
                    pbVar2.a.d.setOnTweetViewClickListener(this.r);
                    break;
            }
            this.j.b(pbVar2.a);
            view3.setTag(pbVar2);
            view2 = view3;
            pbVar = pbVar2;
        } else if (view instanceof GroupedRowView) {
            view2 = (GroupedRowView) view;
            pbVar = (pb) view.getTag();
        } else {
            Throwable illegalStateException = new IllegalStateException("All views in the SearchResultAdapter are defined to be of type GroupedRowView but this view was of type " + view.getClass());
            bbn.a(new bbl().a("item type", Integer.valueOf(pkVar.b)).a("item style", Integer.valueOf(pkVar.f)).a("row position", Integer.valueOf(i)).a("view class", view.getClass()).a(illegalStateException));
            throw illegalStateException;
        }
        pbVar.m = pkVar;
        Cursor cursor = this.w;
        if (cursor.moveToPosition(pkVar.d)) {
            String string = cursor.getString(ccu.E);
            Integer num = (Integer) b.get(cursor.getString(ccu.F));
            if (!aj.b(string) || num == null) {
                pbVar.a.d.setReason(null);
                pbVar.a.d.setReasonIconResId(0);
            } else {
                pbVar.a.d.setReason(string);
                pbVar.a.d.setReasonIconResId(num.intValue());
            }
            pbVar.a.d.setContentSize(ao.a);
            Tweet a = ccc.a.a(cursor);
            bdj a2 = bdj.a(context);
            boolean a3 = a2.a(a);
            boolean z = a3 && a.r();
            pbVar.a.d.setAlwaysExpandMedia(z);
            pbVar.a.d.setExpandCardMedia(z);
            pbVar.a.d.setDisplayTranslationBadge(cex.a(context, a));
            if (!a3) {
                a.e &= -9;
            }
            if (this.e != null) {
                this.e.a(a);
            }
            pbVar.a.d.setFriendshipCache(this.e);
            boolean z2 = d.a("cards_forward_in_search_enabled") && z && cdy.a(a, false, a2.b());
            j jVar = new j(z2, this.c, a, DisplayMode.FORWARD, this.o, null);
            pbVar.a.d.setShowSocialBadge(true);
            pbVar.a.d.a(a, this.y, jVar);
            TweetView tweetView = pbVar.a.d;
            int i2 = (!a.q() || a.t()) ? 0 : 1;
            tweetView.setCurationAction(i2);
            if (this.f != null) {
                Bundle bundle = new Bundle(2);
                bundle.putString("reason_text", string);
                bundle.putInt("position", i);
                this.f.a(view2, null, bundle);
            }
        }
        return view2;
    }

    private View b(Context context, int i, pk pkVar, View view, ViewGroup viewGroup) {
        View view2;
        wv wvVar;
        pb pbVar;
        if (view == null) {
            view2 = (GroupedRowView) LayoutInflater.from(context).inflate(2130968878, viewGroup, false);
            ViewPager viewPager = (ViewPager) view2.findViewById(2131952457);
            wvVar = new wv(this.c, this.e, i, this.D, this.h, LayoutInflater.from(context));
            viewPager.setAdapter(wvVar);
            this.k.add(wvVar);
            PipView pipView = (PipView) view2.findViewById(2131952532);
            pipView.setPipOnPosition(0);
            viewPager.setOnPageChangeListener(new pa(this, viewGroup, ViewConfiguration.get(context).getScaledTouchSlop(), i, view2, pipView));
            pbVar = new pb(viewPager, pipView);
            view2.setTag(pbVar);
        } else {
            view = (GroupedRowView) view;
            pb pbVar2 = (pb) view.getTag();
            view2 = view;
            pbVar = pbVar2;
            wvVar = (wv) pbVar2.d.getAdapter();
        }
        pbVar.m = pkVar;
        wvVar.a(new ce(this.w, pkVar.d, pkVar.e));
        int count = wvVar.getCount();
        if (count > 1) {
            pbVar.e.setPipCount(count);
            pbVar.e.setVisibility(0);
        } else {
            pbVar.e.setVisibility(8);
        }
        if (this.f != null) {
            Bundle bundle = new Bundle(2);
            bundle.putInt("position", i);
            bundle.putInt("page", 0);
            this.f.a(view2, null, bundle);
        }
        return view2;
    }

    private View c(Context context, int i, pk pkVar, View view, ViewGroup viewGroup) {
        pb pbVar;
        UserSocialView userSocialView;
        if (view == null) {
            View view2 = (GroupedRowView) LayoutInflater.from(context).inflate(2130968880, viewGroup, false);
            UserSocialView userSocialView2 = (UserSocialView) view2.getChildAt(0);
            userSocialView2.r.setBackgroundResource(2130837690);
            pbVar = new pb(new xp(userSocialView2), new pc(this));
            view2.setTag(pbVar);
            view = view2;
            userSocialView = userSocialView2;
        } else {
            GroupedRowView groupedRowView = (GroupedRowView) view;
            userSocialView = (UserSocialView) groupedRowView.getChildAt(0);
            pbVar = (pb) groupedRowView.getTag();
        }
        pbVar.m = pkVar;
        Cursor cursor = this.w;
        if (cursor.moveToPosition(pkVar.d)) {
            long j = cursor.getLong(ccu.f);
            userSocialView.setUserId(j);
            pbVar.b.e = j;
            userSocialView.setUserImageUrl(cursor.getString(ccu.i));
            userSocialView.a(cursor.getString(ccu.g), cursor.getString(ccu.h));
            int i2 = cursor.getInt(ccu.j);
            userSocialView.setProtected((i2 & 1) != 0);
            userSocialView.setVerified((i2 & 2) != 0);
            String string = cursor.getString(ccu.p);
            userSocialView.a(string != null ? string.replaceAll("[^\\S]", " ") : null, com.twitter.model.core.bg.a(cursor.getBlob(ccu.q)));
            cni cni = (cni) m.a(cursor.getBlob(ccu.l), cni.a);
            userSocialView.a(cni, ak.f());
            if (this.f != null) {
                Bundle bundle = new Bundle(1);
                bundle.putInt("position", i);
                this.f.a(view, null, bundle);
            }
            if (j == this.d.c().g()) {
                userSocialView.r.setVisibility(8);
            } else {
                userSocialView.r.setVisibility(0);
                pbVar.c.a(cni);
                pbVar.c.a(i);
                userSocialView.r.setBackgroundResource(2130837690);
                userSocialView.a(2130837689, (e) pbVar.c);
                FriendshipCache friendshipCache = this.e;
                i2 = cursor.getInt(ccu.k);
                if (friendshipCache != null) {
                    if (friendshipCache.a(j)) {
                        userSocialView.r.setChecked(friendshipCache.k(j));
                    } else {
                        userSocialView.r.setChecked(p.a(i2));
                    }
                }
                pbVar.b.f = i2;
                if (p.b(i2)) {
                    userSocialView.a((int) bcw.ic_activity_follow_tweet_default, i2, ak.f());
                } else {
                    userSocialView.a(40, bcw.ic_activity_follow_tweet_default, cursor.getString(ccu.n), 0, ak.f());
                }
            }
        }
        return view;
    }

    private View a(Context context, pk pkVar, View view, ViewGroup viewGroup, String str) {
        pb pbVar;
        if (view == null) {
            view = LayoutInflater.from(context).inflate(2130968865, viewGroup, false);
            pb pbVar2 = new pb((TextView) view.findViewById(2131951868), view.findViewById(2131952530));
            view.setTag(pbVar2);
            pbVar = pbVar2;
        } else {
            pbVar = (pb) view.getTag();
        }
        pbVar.m = pkVar;
        pbVar.f.setText(str);
        return view;
    }

    private View a(Context context, int i, pk pkVar, View view, ViewGroup viewGroup, int i2) {
        pb pbVar;
        if (view == null) {
            View view2 = (GroupedRowView) LayoutInflater.from(context).inflate(i2, viewGroup, false);
            pb pbVar2 = new pb((HorizontalListView) view2.findViewById(2131952529));
            view2.setTag(pbVar2);
            view = view2;
            pbVar = pbVar2;
        } else {
            GroupedRowView groupedRowView = (GroupedRowView) view;
            pbVar = (pb) groupedRowView.getTag();
        }
        pbVar.m = pkVar;
        re reVar = (re) pbVar.h.getAdapter();
        if (reVar == null) {
            reVar = new re(context, true);
            pbVar.h.setAdapter(reVar);
            pbVar.h.setOnItemClickListener(this.g);
            this.k.add(reVar);
        }
        reVar.a(new cgq(new ce(this.w, pkVar.d, pkVar.e)));
        pbVar.h.setTag(pkVar);
        if (this.f != null) {
            Bundle bundle = new Bundle(1);
            bundle.putInt("position", i);
            this.f.a(view, null, bundle);
        }
        return view;
    }

    private View d(Context context, int i, pk pkVar, View view, ViewGroup viewGroup) {
        View view2;
        pb pbVar;
        if (view == null) {
            view2 = (GroupedRowView) LayoutInflater.from(context).inflate(2130968871, viewGroup, false);
            pb pbVar2 = new pb((TextView) view2.findViewById(2131951868));
            view2.setTag(pbVar2);
            pbVar = pbVar2;
        } else {
            view = (GroupedRowView) view;
            pbVar = (pb) view.getTag();
            view2 = view;
        }
        pbVar.m = pkVar;
        pbVar.f.setText(pkVar.h);
        if (this.f != null) {
            Bundle bundle = new Bundle(1);
            bundle.putInt("position", i);
            this.f.a(view2, null, bundle);
        }
        return view2;
    }

    private View e(Context context, int i, pk pkVar, View view, ViewGroup viewGroup) {
        pb pbVar;
        if (view == null) {
            view = LayoutInflater.from(context).inflate(2130969413, viewGroup, false);
            pb pbVar2 = new pb((TextView) view.findViewById(2131953289), (TextView) view.findViewById(2131953290));
            view.setTag(pbVar2);
            pbVar = pbVar2;
        } else {
            pbVar = (pb) view.getTag();
        }
        pbVar.m = pkVar;
        SpannableString spannableString = new SpannableString(pkVar.g.b);
        if (!pkVar.g.c.isEmpty()) {
            int[] iArr = (int[]) pkVar.g.c.get(0);
            spannableString.setSpan(new TypefacesSpan(context, 3), iArr[0], iArr[1], 0);
        }
        pbVar.f.setText(context.getString(2131363876, new Object[]{spannableString}));
        pbVar.g.setText(context.getString(2131363877, new Object[]{this.l}));
        if (this.f != null) {
            Bundle bundle = new Bundle(1);
            bundle.putInt("position", i);
            this.f.a(view, null, bundle);
        }
        return view;
    }

    private View f(Context context, int i, pk pkVar, View view, ViewGroup viewGroup) {
        pb pbVar;
        if (view == null) {
            view = LayoutInflater.from(context).inflate(2130969376, viewGroup, false);
            pb pbVar2 = new pb((TextView) view.findViewById(2131953276), (TextView) view.findViewById(2131953278), (ImageButton) view.findViewById(2131953277));
            view.setTag(pbVar2);
            pbVar = pbVar2;
        } else {
            pbVar = (pb) view.getTag();
        }
        CharSequence string = context.getString(2131363581, new Object[]{pkVar.k.d});
        int indexOf = string.indexOf(pkVar.k.d);
        int length = pkVar.k.d.length() + indexOf;
        CharSequence spannableString = new SpannableString(string);
        spannableString.setSpan(new TypefacesSpan(context, 2), indexOf, length, 0);
        pbVar.m = pkVar;
        pbVar.f.setText(pkVar.k.c);
        pbVar.g.setText(spannableString);
        pbVar.l.setOnClickListener(this.i);
        pbVar.l.setTag(pkVar.k.a());
        if (this.f != null) {
            Bundle bundle = new Bundle(1);
            bundle.putInt("position", i);
            this.f.a(view, null, bundle);
        }
        return view;
    }

    private View g(Context context, int i, pk pkVar, View view, ViewGroup viewGroup) {
        pb pbVar;
        if (view == null) {
            view = LayoutInflater.from(context).inflate(2130969377, viewGroup, false);
            pb pbVar2 = new pb((TextView) view.findViewById(2131951868));
            view.setTag(pbVar2);
            pbVar = pbVar2;
        } else {
            pbVar = (pb) view.getTag();
        }
        pbVar.m = pkVar;
        if (pkVar.k.b == 2) {
            pbVar.f.setText(2131363586);
        } else if (pkVar.k.b == 3) {
            pbVar.f.setText(2131363587);
        }
        if (this.f != null) {
            Bundle bundle = new Bundle(1);
            bundle.putInt("position", i);
            this.f.a(view, null, bundle);
        }
        return view;
    }

    private View a(pk pkVar, View view, ViewGroup viewGroup) {
        pb pbVar;
        if (view == null) {
            view = new View(viewGroup.getContext());
            pbVar = new pb();
            view.setTag(pbVar);
        } else {
            pbVar = (pb) view.getTag();
        }
        pbVar.m = pkVar;
        return view;
    }

    public View getView(int i, View view, ViewGroup viewGroup) {
        View a;
        pk pkVar = (pk) getItem(i);
        Context context = this.c;
        View view2;
        pb pbVar;
        pb pbVar2;
        switch (pkVar.b) {
            case Util.TYPE_DASH /*0*/:
            case CaptionStyleCompat.EDGE_TYPE_DEPRESSED /*4*/:
            case b.ShimmerFrameLayout_fixed_height /*9*/:
            case bdd.TweetView_mediaTopMargin /*21*/:
            case bdd.TweetView_mediaDivider /*23*/:
                a = a(context, i, pkVar, view, viewGroup);
                break;
            case ModuleDescriptor.MODULE_VERSION /*1*/:
                a = c(context, i, pkVar, view, viewGroup);
                break;
            case Buffer.FLAG_DECODE_ONLY /*2*/:
                a = e(context, i, pkVar, view, viewGroup);
                break;
            case Util.TYPE_OTHER /*3*/:
                a = d(context, i, pkVar, view, viewGroup);
                break;
            case ExtractorSampleSource.DEFAULT_MIN_LOADABLE_RETRY_COUNT_LIVE /*6*/:
                a = b(context, i, pkVar, view, viewGroup);
                break;
            case C.ENCODING_DTS /*7*/:
                a = a(context, i, pkVar, view, viewGroup, 2130968863);
                break;
            case ChunkHeader.SIZE_IN_BYTES /*8*/:
                Context context2 = context;
                pk pkVar2 = pkVar;
                View view3 = view;
                ViewGroup viewGroup2 = viewGroup;
                a = a(context2, pkVar2, view3, viewGroup2, context.getString(2131363569, new Object[]{this.l}));
                break;
            case b.ShimmerFrameLayout_relative_width /*11*/:
            case bdd.TwitterButton_iconLayout /*19*/:
                Cursor cursor = this.w;
                if (cursor.moveToPosition(pkVar.d)) {
                    switch (cursor.getInt(ccu.s)) {
                        case Buffer.FLAG_DECODE_ONLY /*2*/:
                            a = a(view, viewGroup, pkVar, context, cursor);
                            break;
                    }
                }
                a = view;
                if (a == null) {
                    a = a(pkVar, null, viewGroup);
                    break;
                }
                break;
            case Atom.FULL_HEADER_SIZE /*12*/:
                a = f(context, i, pkVar, view, viewGroup);
                break;
            case b.ShimmerFrameLayout_tilt /*14*/:
                a = a(context, pkVar, view, viewGroup, context.getString(2131363592));
                break;
            case bdd.TwitterButton_strokeWidth /*15*/:
                a = a(context, pkVar, view, viewGroup, context.getString(2131363590));
                break;
            case Atom.LONG_HEADER_SIZE /*16*/:
                if (view == null) {
                    view2 = (GroupedRowView) LayoutInflater.from(context).inflate(2130968860, viewGroup, false);
                    ((TextView) view2.findViewById(2131951868)).setText(2131363459);
                    pbVar = new pb();
                    view2.setTag(pbVar);
                    view = view2;
                    pbVar2 = pbVar;
                } else {
                    pbVar2 = (pb) view.getTag();
                }
                pbVar2.m = pkVar;
                a = view;
                break;
            case bdd.TwitterButton_bounded /*17*/:
                a = a(context, pkVar, view, viewGroup, context.getString(2131363593));
                break;
            case bdd.TwitterButton_knockout /*18*/:
                Integer num = (Integer) a.get(this.B);
                if (num == null) {
                    int i2 = 1;
                } else {
                    boolean z = false;
                }
                if (view == null) {
                    int i3;
                    a = (GroupedRowView) LayoutInflater.from(context).inflate(2130969277, null);
                    TextSwitcherView textSwitcherView = (TextSwitcherView) a.findViewById(2131953232);
                    if (num == null) {
                        i3 = 2131363023;
                    } else {
                        ((TextView) textSwitcherView.findViewById(2131953233)).setText(num.intValue());
                        textSwitcherView.setOnClickListener(this.C);
                        i3 = 2131363426;
                    }
                    ((TextView) textSwitcherView.findViewById(2131953234)).setText(i3);
                    pbVar2 = new pb(textSwitcherView);
                    a.setTag(pbVar2);
                } else {
                    pbVar2 = (pb) view.getTag();
                    a = view;
                }
                pbVar2.m = pkVar;
                TextSwitcherView textSwitcherView2 = pbVar2.k;
                textSwitcherView2.a();
                textSwitcherView2.setOutAnimation(null);
                textSwitcherView2.setInAnimation(null);
                if (this.x || r6 != 0 || this.A.contains(Long.valueOf(pkVar.a)) || this.q) {
                    textSwitcherView2.setDisplayedChild(1);
                } else {
                    this.A.add(Long.valueOf(pkVar.a));
                    textSwitcherView2.setDisplayedChild(0);
                    textSwitcherView2.setInAnimation(this.c, 2131034169);
                    textSwitcherView2.setOutAnimation(this.c, 2131034168);
                    textSwitcherView2.a(new pd(textSwitcherView2), 3000);
                }
                if (this.f != null) {
                    Bundle bundle = new Bundle(1);
                    bundle.putInt("position", i);
                    bundle.putString("notification_setting_key", this.B);
                    this.f.a(a, null, bundle);
                    break;
                }
                break;
            case HttpURLConnectionImpl.MAX_REDIRECTS /*20*/:
                a = g(context, i, pkVar, view, viewGroup);
                break;
            case bdd.TweetView_mediaBottomMargin /*22*/:
                String string;
                if (pkVar.j == null) {
                    string = context.getString(2131362054);
                } else if (pkVar.j.b) {
                    string = context.getString(2131363589);
                } else if (pkVar.j.c) {
                    string = context.getString(2131363591);
                } else {
                    string = context.getString(2131362054);
                }
                a = a(context, pkVar, view, viewGroup, string);
                break;
            case bdd.TweetView_autoLink /*24*/:
                if (view == null) {
                    view2 = (GroupedRowView) LayoutInflater.from(context).inflate(2130968871, viewGroup, false);
                    ((TextView) view2.findViewById(2131951868)).setText(2131363567);
                    pbVar = new pb();
                    view2.setTag(pbVar);
                    view = view2;
                    pbVar2 = pbVar;
                } else {
                    pbVar2 = (pb) view.getTag();
                }
                pbVar2.m = pkVar;
                a = view;
                break;
            default:
                a = a(pkVar, view, viewGroup);
                break;
        }
        a((GroupedRowView) a, pkVar.f);
        return a;
    }

    private int a(int i) {
        if (i == 2) {
            return 2130968853;
        }
        return 2130969372;
    }

    private void a(TopicView topicView, Cursor cursor) {
        int i = cursor.getInt(ccu.s);
        String string = cursor.getString(ccu.z);
        String string2 = cursor.getString(ccu.w);
        long j = cursor.getLong(ccu.C);
        String string3 = cursor.getString(ccu.r);
        String string4 = cursor.getString(ccu.A);
        int i2 = cursor.getInt(ccu.B);
        String string5 = cursor.getString(ccu.u);
        String string6 = cursor.getString(ccu.v);
        byte[] blob = cursor.getBlob(ccu.D);
        String string7 = cursor.getString(ccu.t);
        String string8 = cursor.getString(ccu.x);
        String string9 = cursor.getString(ccu.y);
        long j2 = cursor.getLong(ccu.f);
        topicView.a(string3, i, string, string5, string6, string2, string4, i2, j, string7, string8, blob, !this.p, !this.p, Long.valueOf(j2), cursor.getString(ccu.h), cursor.getString(ccu.i), cursor.getString(ccu.g), string9);
    }

    private View a(View view, ViewGroup viewGroup, pk pkVar, Context context, Cursor cursor) {
        View view2;
        TopicView topicView;
        pb pbVar;
        int i = cursor.getInt(ccu.s);
        cursor.getString(ccu.r);
        if (view == null) {
            view2 = (GroupedRowView) LayoutInflater.from(context).inflate(a(i), viewGroup, false);
            topicView = (TopicView) view2.findViewById(2131951924);
            pbVar = new pb(topicView);
            view2.setTag(pbVar);
        } else {
            view = (GroupedRowView) view;
            pb pbVar2 = (pb) view.getTag();
            topicView = pbVar2.j;
            pbVar = pbVar2;
            view2 = view;
        }
        pbVar.m = pkVar;
        a(topicView, cursor);
        if (!(this.f == null || pkVar == null)) {
            this.f.a(view2, null, Bundle.EMPTY);
        }
        return view2;
    }

    public void b(boolean z) {
        if (this.y != z) {
            this.y = z;
            if (!this.y) {
                Iterator it = this.j.iterator();
                while (it.hasNext()) {
                    ((vt) it.next()).d.l();
                }
            }
        }
    }

    protected final View a(Context context, pk pkVar, ViewGroup viewGroup) {
        return null;
    }

    protected final void a(View view, Context context, pk pkVar) {
    }
}
