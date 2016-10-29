package com.twitter.android;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import com.twitter.internal.android.widget.NavItemView;
import com.twitter.library.client.at;
import java.util.List;

/* compiled from: Twttr */
public class km extends BaseAdapter {
    protected List<at> a;
    protected int b;
    private int c;

    public km(List<at> list) {
        this.b = 1;
        this.a = list;
    }

    public int getCount() {
        return this.a.size();
    }

    public Object getItem(int i) {
        return this.a.get(i);
    }

    public long getItemId(int i) {
        return (long) i;
    }

    public View getView(int i, View view, ViewGroup viewGroup) {
        View inflate;
        Context context = viewGroup.getContext();
        if (view == null) {
            inflate = LayoutInflater.from(context).inflate(c(), viewGroup, false);
        } else {
            inflate = view;
        }
        NavItemView navItemView = (NavItemView) inflate;
        at atVar = (at) this.a.get(i);
        navItemView.setTextColor(atVar.j);
        navItemView.setText(atVar.c);
        navItemView.setIconResource(atVar.f);
        navItemView.setTag(atVar.g);
        navItemView.setBadgeMode(this.b);
        CharSequence string = context.getString(2131363930, new Object[]{atVar.c});
        if (this.c == i) {
            string = context.getString(2131363596) + ". " + string;
        }
        navItemView.setContentDescription(string);
        navItemView.setBadgeNumber(atVar.i);
        return inflate;
    }

    public void a(int i) {
        if (this.c != i) {
            this.c = i;
            notifyDataSetChanged();
        }
    }

    public int a() {
        return this.c;
    }

    public List<at> b() {
        return this.a;
    }

    protected int c() {
        return 2130969115;
    }
}
