package com.twitter.android;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import com.twitter.library.media.widget.z;
import com.twitter.library.widget.TweetView;
import com.twitter.library.widget.tweet.content.DisplayMode;
import com.twitter.library.widget.tweet.content.j;
import com.twitter.model.core.Tweet;
import java.util.ArrayList;
import java.util.List;

/* compiled from: Twttr */
class uo extends BaseAdapter {
    final /* synthetic */ TweetFragment a;
    private final List<Tweet> b;
    private kr<View, Tweet> c;

    private uo(TweetFragment tweetFragment) {
        this.a = tweetFragment;
        this.b = new ArrayList();
    }

    public /* synthetic */ Object getItem(int i) {
        return a(i);
    }

    public void a(List<Tweet> list, boolean z) {
        if (!this.b.equals(list)) {
            this.b.clear();
            this.b.addAll(list);
            if (z) {
                notifyDataSetChanged();
            }
        }
    }

    public int getCount() {
        return this.b.size();
    }

    public Tweet a(int i) {
        return (Tweet) this.b.get(i);
    }

    public long getItemId(int i) {
        return ((Tweet) this.b.get(i)).t;
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

    public View getView(int i, View view, ViewGroup viewGroup) {
        Tweet tweet = (Tweet) this.b.get(i);
        if (view == null) {
            view = a(viewGroup);
            TweetView tweetView = (TweetView) view.findViewById(2131952011);
            TweetFragment.a(this.a, tweetView, tweet);
            view.setTag(tweetView);
        }
        TweetView tweetView2 = (TweetView) view.getTag();
        z a = TweetFragment.a(this.a, tweetView2);
        j jVar = new j(true, this.a.getActivity(), tweet, DisplayMode.FORWARD, TweetFragment.P(this.a), TweetFragment.N(this.a));
        jVar.a(3, a);
        tweetView2.setAlwaysExpandMedia(true);
        tweetView2.a(tweet, false, jVar);
        if (TweetFragment.c(tweet)) {
            tweetView2.setCurationAction(1);
        }
        if (this.c != null) {
            Bundle bundle = new Bundle(1);
            bundle.putInt("position", TweetFragment.e(this.a).getCount() + i);
            this.c.a(view, tweet, bundle);
        }
        return view;
    }

    private View a(ViewGroup viewGroup) {
        return LayoutInflater.from(viewGroup.getContext()).inflate(2130969484, null);
    }

    public void a(kr<View, Tweet> krVar) {
        this.c = krVar;
    }
}
