package com.twitter.android;

import android.content.Context;
import android.support.annotation.LayoutRes;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.TextView;
import com.twitter.model.core.TwitterUser;
import java.util.List;

/* compiled from: Twttr */
final class mv extends BaseAdapter {
    private final LayoutInflater a;
    private List<TwitterUser> b;

    public /* synthetic */ Object getItem(int i) {
        return a(i);
    }

    mv(Context context) {
        this.a = LayoutInflater.from(context);
    }

    public void a(List<TwitterUser> list) {
        this.b = list;
    }

    public int getCount() {
        if (this.b != null) {
            return this.b.size();
        }
        return -1;
    }

    public TwitterUser a(int i) {
        if (i < 0 || i >= getCount()) {
            return null;
        }
        return (TwitterUser) this.b.get(i);
    }

    public long getItemId(int i) {
        return (long) i;
    }

    public View getView(int i, View view, ViewGroup viewGroup) {
        return a(i, view, viewGroup, 17367048);
    }

    public View getDropDownView(int i, View view, ViewGroup viewGroup) {
        return a(i, view, viewGroup, 17367049);
    }

    private View a(int i, View view, ViewGroup viewGroup, @LayoutRes int i2) {
        if (view != null) {
            view = (TextView) view;
        } else {
            view = (TextView) this.a.inflate(i2, viewGroup, false);
        }
        TwitterUser a = a(i);
        view.setText(a != null ? '@' + a.k : TtmlNode.ANONYMOUS_REGION_ID);
        return view;
    }
}
