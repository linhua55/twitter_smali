package com.twitter.android.highlights;

import android.content.Context;
import android.database.Cursor;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CursorAdapter;
import android.widget.TextView;
import ccc;
import com.twitter.model.core.Tweet;
import com.twitter.model.core.TwitterUser;
import com.twitter.model.core.cp;

/* compiled from: Twttr */
public class be extends CursorAdapter {
    private final bb a;
    private final ak b;
    private final LayoutInflater c;
    private final String d;
    private final String e;
    private boolean f;

    public be(bb bbVar, Context context, ak akVar, String str, String str2) {
        super(context, null, 0);
        this.a = bbVar;
        this.b = akVar;
        this.c = LayoutInflater.from(context);
        this.d = str;
        this.e = str2;
    }

    public int getCount() {
        if (this.f) {
            return super.getCount() + 1;
        }
        return super.getCount();
    }

    public int getViewTypeCount() {
        return 2;
    }

    public int getItemViewType(int i) {
        if (this.f && i == super.getCount()) {
            return 1;
        }
        return 0;
    }

    public View getView(int i, View view, ViewGroup viewGroup) {
        if (getItemViewType(i) == 1) {
            return this.c.inflate(2130969247, viewGroup, false);
        }
        return super.getView(i, view, viewGroup);
    }

    public View newView(Context context, Cursor cursor, ViewGroup viewGroup) {
        View inflate = this.c.inflate(2130968915, viewGroup, false);
        bg bgVar = new bg(inflate);
        inflate.setTag(bgVar);
        inflate.setOnClickListener(this.b);
        bgVar.h.setOnMediaClickListener(this.b);
        bgVar.b.setOnClickListener(this.b);
        au.a(true, true, bgVar.i, this.b);
        au.a(true, true, bgVar.j, this.b);
        TextView textView = (TextView) viewGroup.findViewById(2131952646);
        if (textView != null) {
            textView.setVisibility(0);
        }
        return inflate;
    }

    public void bindView(View view, Context context, Cursor cursor) {
        boolean z;
        Tweet a = ccc.a.a(cursor);
        bg bgVar = (bg) view.getTag();
        boolean z2 = bgVar.k == null || bgVar.k.H != a.H;
        if (z2 || !a.a(bgVar.k)) {
            z = true;
        } else {
            z = false;
        }
        ao aoVar;
        if (z2) {
            TwitterUser twitterUser = (TwitterUser) new cp().a(a.s).f(a.v).i(a.m).b(a.r).q();
            bgVar.b.a(twitterUser);
            bgVar.b.setTag(twitterUser);
            bgVar.f.setText(bo.a(context, a, true, this.b));
            aoVar = new ao(context, a, bgVar.i, bgVar.j, StoryScribeItem.a(this.a, a), this.d, this.e);
            bgVar.i.setTag(aoVar);
            bgVar.j.setTag(aoVar);
        } else if (z) {
            aoVar = (ao) bgVar.i.getTag();
            if (aoVar.c) {
                aoVar.c = false;
            } else {
                aoVar.a(a);
            }
        }
        if (z) {
            bgVar.c.setText(a.d());
            bgVar.d.setVisibility(a.M ? 0 : 8);
            bgVar.e.setText(au.a(context, a));
            bi.a(bgVar.h, bgVar.g, a);
            if (this.b != null) {
                this.b.a(this.a, a);
            }
            bgVar.k = a;
        }
    }

    public void a(boolean z) {
        this.f = z;
        notifyDataSetChanged();
    }
}
