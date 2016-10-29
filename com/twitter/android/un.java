package com.twitter.android;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import ark;
import bdj;
import bot;
import bpo;
import com.twitter.library.api.UserSettings;
import com.twitter.library.client.Session;
import com.twitter.library.media.widget.z;
import com.twitter.library.metrics.f;
import com.twitter.library.widget.TweetView;
import com.twitter.library.widget.tweet.content.DisplayMode;
import com.twitter.library.widget.tweet.content.j;
import com.twitter.model.core.Tweet;
import com.twitter.model.core.p;
import com.twitter.ui.view.s;
import com.twitter.ui.view.u;
import com.twitter.util.ak;
import defpackage.cdy;
import java.util.ArrayList;
import java.util.List;

/* compiled from: Twttr */
class un extends BaseAdapter {
    final /* synthetic */ TweetFragment a;
    private final int b;
    private final int c;
    private final s d;
    private Tweet e;
    private final List<Tweet> f;
    private kr<View, Tweet> g;
    private boolean h;

    public /* synthetic */ Object getItem(int i) {
        return a(i);
    }

    un(TweetFragment tweetFragment, Tweet tweet) {
        this.a = tweetFragment;
        this.d = new u().c(true).a();
        this.e = tweet;
        this.f = new ArrayList();
        this.f.add(this.e);
        this.b = 2130968720;
        this.c = 2130969295;
    }

    public int getItemViewType(int i) {
        Tweet a = a(i);
        if (this.e.equals(a)) {
            return 0;
        }
        if (a.ao()) {
            return 2;
        }
        return 1;
    }

    public int getViewTypeCount() {
        return 3;
    }

    public int getCount() {
        return this.f.size();
    }

    public Tweet a(int i) {
        return (Tweet) this.f.get(i);
    }

    public Tweet a(long j) {
        int b = b(j);
        return b >= 0 ? a(b) : null;
    }

    public int b(long j) {
        int count = getCount();
        for (int i = 0; i < count; i++) {
            if (j == getItemId(i)) {
                return i;
            }
        }
        return -1;
    }

    public long getItemId(int i) {
        return a(i).t;
    }

    public void a(kr<View, Tweet> krVar) {
        this.g = krVar;
    }

    public View getView(int i, View view, ViewGroup viewGroup) {
        Object obj;
        View view2;
        Tweet a = a(i);
        if (this.e.equals(a)) {
            obj = this.e;
            if (!this.h) {
                f.b("tweet:focal:complete", TweetFragment.w(this.a), ark.n).j();
                this.h = true;
            }
            view2 = this.a.b;
            view2.a(TweetFragment.c(this.a).f(), TweetFragment.c(this.a).j());
            view2.a(obj, this.a, TweetFragment.x(this.a), TweetFragment.y(this.a), TweetFragment.z(this.a), TweetFragment.A(this.a), TweetFragment.B(this.a), TweetFragment.C(this.a), TweetFragment.D(this.a));
            if (obj.p()) {
                TweetFragment.o(this.a);
            }
            if (TweetFragment.E(this.a) != null) {
                view2.a(TweetFragment.E(this.a), this.a);
            }
            if (view == null) {
                TweetFragment.a(this.a, obj);
                if (obj.n != 0) {
                    TweetFragment.F(this.a);
                    Session G = TweetFragment.G(this.a);
                    if (G.d()) {
                        bot bot = new bot(this.a.getActivity(), G);
                        bot.a = TweetFragment.d(this.a).s;
                        TweetFragment.H(this.a).a(bot);
                    }
                } else {
                    TweetFragment.d(this.a, new bpo(this.a.getActivity(), TweetFragment.I(this.a), TweetFragment.d(this.a).s, TweetFragment.d(this.a).v), 5, 0);
                }
                if (TweetFragment.J(this.a) != null) {
                    TweetFragment.J(this.a).a("show", "platform_card", obj);
                }
            } else {
                view2 = view;
            }
            if (TweetFragment.K(this.a) != null) {
                TweetFragment.K(this.a).setTweet(obj);
                TweetFragment.K(this.a).setOnClickListener(TweetFragment.L(this.a));
            }
        } else if (a.ao()) {
            view2 = LayoutInflater.from(viewGroup.getContext()).inflate(2130969213, null);
            a(view2, a);
        } else if (view == null || !(view.getTag() instanceof TweetView)) {
            view = a(viewGroup);
            TweetView tweetView = (TweetView) view.findViewById(2131952011);
            TweetFragment.a(this.a, tweetView, a);
            a(tweetView, a);
            view.setTag(tweetView);
            view2 = view;
        } else {
            a((TweetView) view.getTag(), a);
            view2 = view;
        }
        if (this.g != null) {
            Bundle bundle = new Bundle(1);
            bundle.putInt("position", i);
            this.g.a(view2, obj, bundle);
        }
        return view2;
    }

    private void a(View view, Tweet tweet) {
        mf mfVar = new mf(view);
        a(mfVar.d, tweet);
        mfVar.d.setAlwaysExpandMedia(true);
        a(mfVar.a, tweet);
        mfVar.a.setAlwaysExpandMedia(true);
        view.setTag(mfVar);
    }

    private void a(TweetView tweetView, Tweet tweet) {
        boolean z;
        z a = TweetFragment.a(this.a, tweetView);
        bdj a2 = bdj.a(this.a.getContext());
        UserSettings j = TweetFragment.c(this.a).j();
        boolean z2 = this.a.a || (j != null && j.k);
        if (cdy.a(tweet, z2, a2.b()) && (tweet.ah() || tweet.ai())) {
            z = true;
        } else {
            z = false;
        }
        j jVar = new j(z, this.a.getActivity(), tweet, DisplayMode.FORWARD, TweetFragment.M(this.a), TweetFragment.N(this.a));
        jVar.a(3, a);
        if (tweet.q < this.e.q) {
            z = true;
        } else {
            z = false;
        }
        if (z || tweet.b == TweetFragment.O(this.a).g() || p.a(tweet.m)) {
            tweetView.setAlwaysExpandMedia(true);
        } else {
            if (tweet.h()) {
                TweetFragment.a(this.a, "skip", tweet);
            }
            tweetView.setAlwaysExpandMedia(false);
        }
        tweetView.a(tweet, this.d, false, jVar);
    }

    public int a(Tweet tweet) {
        for (int i = 0; i < getCount(); i++) {
            if (tweet.equals(a(i))) {
                return i;
            }
        }
        return -1;
    }

    public void a(List<Tweet> list) {
        this.f.clear();
        this.f.addAll(list);
    }

    public void a(int i, Tweet tweet) {
        this.f.add(i, tweet);
    }

    public void c(long j) {
        int b = b(j);
        if (b >= 0) {
            this.f.remove(b);
            notifyDataSetChanged();
        }
    }

    public void b(Tweet tweet) {
        this.e = tweet;
        int a = a(tweet);
        if (a >= 0) {
            this.f.set(a, tweet);
            notifyDataSetChanged();
        }
    }

    public final List<Long> a() {
        int size = this.f.size();
        int min = Math.min(10, size);
        List<Long> arrayList = new ArrayList(min);
        for (int i = 0; i < min; i++) {
            arrayList.add(Long.valueOf(((Tweet) this.f.get((size - 1) - i)).H));
        }
        return arrayList;
    }

    public Tweet b() {
        return (Tweet) this.f.get(this.f.size() - 1);
    }

    private View a(ViewGroup viewGroup) {
        return LayoutInflater.from(viewGroup.getContext()).inflate(ak.f() ? this.c : this.b, viewGroup, false);
    }
}
