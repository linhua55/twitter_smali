package com.twitter.android;

import android.content.Context;
import android.database.Cursor;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import ark;
import bdj;
import bdl;
import bot;
import bpo;
import cgu;
import chj;
import com.google.android.exoplayer.util.Util;
import com.google.android.exoplayer.util.extensions.Buffer;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.flags.ModuleDescriptor;
import com.twitter.android.timeline.av;
import com.twitter.android.timeline.aw;
import com.twitter.android.timeline.ay;
import com.twitter.android.timeline.az;
import com.twitter.android.timeline.bb;
import com.twitter.android.timeline.be;
import com.twitter.android.widget.TweetDetailView;
import com.twitter.internal.android.widget.GroupedRowView;
import com.twitter.library.api.UserSettings;
import com.twitter.library.client.Session;
import com.twitter.library.media.widget.z;
import com.twitter.library.metrics.f;
import com.twitter.library.widget.TweetView;
import com.twitter.library.widget.tweet.content.DisplayMode;
import com.twitter.library.widget.tweet.content.j;
import com.twitter.model.core.Tweet;
import com.twitter.ui.view.s;
import com.twitter.ui.view.u;
import com.twitter.util.object.ObjectUtils;
import defpackage.cdy;
import defpackage.ceu;
import defpackage.cev;
import defpackage.chg;

/* compiled from: Twttr */
class vg extends bdl<aw> {
    final /* synthetic */ TweetFragment2 a;
    private final s b;
    private final LayoutInflater c;
    private final kr<View, Tweet> d;
    private boolean e;

    protected vg(TweetFragment2 tweetFragment2, Context context, kr<View, Tweet> krVar) {
        this.a = tweetFragment2;
        super(context);
        this.b = new u().c(true).d(true).a();
        this.c = LayoutInflater.from(context);
        this.d = krVar;
    }

    public int a(long j) {
        cgu h = h();
        if (h instanceof be) {
            int aU_ = h.aU_();
            be beVar = (be) ObjectUtils.a(h);
            for (int i = 0; i < aU_; i++) {
                if (beVar.c(i) == j) {
                    return i;
                }
            }
        }
        return 0;
    }

    public int getViewTypeCount() {
        return 5;
    }

    protected int a(aw awVar) {
        if (awVar instanceof ay) {
            return 2;
        }
        if (awVar instanceof bb) {
            if (((bb) ObjectUtils.a(awVar)).b.equals(TweetFragment2.d(this.a))) {
                return 0;
            }
            return 1;
        } else if (awVar instanceof az) {
            return 4;
        } else {
            return -1;
        }
    }

    protected View a(Context context, aw awVar, ViewGroup viewGroup) {
        View inflate;
        switch (a(awVar)) {
            case Util.TYPE_DASH /*0*/:
                if (!this.e) {
                    f.b("tweet:focal:complete", TweetFragment2.s(this.a), ark.n).j();
                    this.e = true;
                }
                Tweet d = TweetFragment2.d(this.a);
                TweetFragment2.a(this.a, d);
                if (d.n != 0) {
                    TweetFragment2.t(this.a);
                    Session u = TweetFragment2.u(this.a);
                    if (u.d()) {
                        bot bot = new bot(this.a.getActivity(), u);
                        bot.a = d.s;
                        TweetFragment2.v(this.a).a(bot);
                    }
                } else {
                    TweetFragment2.b(this.a, new bpo(this.a.getActivity(), TweetFragment2.w(this.a), d.s, d.v), 5, 0);
                }
                if (TweetFragment2.x(this.a) != null) {
                    TweetFragment2.x(this.a).a("show", "platform_card", d);
                }
                return this.a.b;
            case ModuleDescriptor.MODULE_VERSION /*1*/:
                inflate = this.c.inflate(2130968856, viewGroup, false);
                inflate.setTag(new vt(inflate));
                return inflate;
            case Buffer.FLAG_DECODE_ONLY /*2*/:
                inflate = this.c.inflate(2130969213, viewGroup, false);
                mf mfVar = new mf(inflate);
                mfVar.d.setAlwaysExpandMedia(true);
                mfVar.a.setAlwaysExpandMedia(true);
                inflate.setTag(mfVar);
                return inflate;
            default:
                return new View(context);
        }
    }

    protected void a(View view, Context context, aw awVar) {
        switch (a(awVar)) {
            case Util.TYPE_DASH /*0*/:
                TweetDetailView tweetDetailView = (TweetDetailView) ObjectUtils.a(view);
                Tweet d = TweetFragment2.d(this.a);
                tweetDetailView.a(TweetFragment2.c(this.a).f(), TweetFragment2.c(this.a).j());
                tweetDetailView.a(d, this.a, TweetFragment2.y(this.a), TweetFragment2.z(this.a), TweetFragment2.A(this.a), TweetFragment2.B(this.a), TweetFragment2.C(this.a), TweetFragment2.D(this.a), TweetFragment2.E(this.a));
                if (d.p()) {
                    TweetFragment2.l(this.a);
                }
                if (TweetFragment2.F(this.a) != null) {
                    tweetDetailView.a(TweetFragment2.F(this.a), this.a);
                }
                if (TweetFragment2.G(this.a) != null) {
                    TweetFragment2.G(this.a).setTweet(d);
                    TweetFragment2.G(this.a).setOnClickListener(TweetFragment2.H(this.a));
                }
            case ModuleDescriptor.MODULE_VERSION /*1*/:
                vt vtVar = (vt) ObjectUtils.a(view.getTag());
                bb bbVar = (bb) ObjectUtils.a(awVar);
                a(vtVar.d, bbVar.b);
                cev c = ceu.c(bbVar);
                ceu.a((GroupedRowView) ObjectUtils.a(view), c);
                vtVar.d.a(c.a, c.b);
                if (this.d != null) {
                    Bundle bundle = new Bundle(1);
                    bundle.putInt("position", ((be) ObjectUtils.a(h())).c());
                    this.d.a(view, bbVar.b, bundle);
                }
            case Buffer.FLAG_DECODE_ONLY /*2*/:
                mf mfVar = (mf) ObjectUtils.a(view.getTag());
                ay ayVar = (ay) ObjectUtils.a(awVar);
                a(mfVar.d, ayVar.b);
                a(mfVar.a, ayVar.b);
            default:
        }
    }

    private void a(TweetView tweetView, Tweet tweet) {
        boolean z = true;
        TweetFragment2.a(this.a, tweetView, tweet);
        z a = TweetFragment2.a(this.a, tweetView);
        bdj a2 = bdj.a(i());
        UserSettings j = TweetFragment2.c(this.a).j();
        boolean z2 = this.a.a || (j != null && j.k);
        if (!(cdy.a(tweet, z2, a2.b()) && (tweet.ah() || tweet.ai()))) {
            z = false;
        }
        j jVar = new j(z, this.a.getActivity(), tweet, DisplayMode.FORWARD, TweetFragment2.I(this.a), TweetFragment2.J(this.a));
        jVar.a(3, a);
        tweetView.setAlwaysExpandMedia(a2.a(tweet));
        tweetView.a(tweet, this.b, false, jVar);
    }

    public be a(Cursor cursor) {
        return new be(cursor, b());
    }

    public void b(Cursor cursor) {
        a(a(cursor));
    }

    private chj<aw> b() {
        return new chg(new av(true, 37));
    }
}
