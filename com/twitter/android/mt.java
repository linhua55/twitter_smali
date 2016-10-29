package com.twitter.android;

import android.content.Context;
import android.content.Intent;
import android.database.Cursor;
import android.support.annotation.LayoutRes;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.AbsListView.LayoutParams;
import bbu;
import cgu;
import com.google.android.exoplayer.upstream.NetworkLock;
import com.squareup.okhttp.v_1_5_1.internal.http.HttpURLConnectionImpl;
import com.twitter.android.profiles.as;
import com.twitter.android.widget.bl;
import com.twitter.app.users.q;
import com.twitter.internal.android.widget.GroupedRowView;
import com.twitter.library.client.bg;
import com.twitter.library.scribe.TwitterScribeAssociation;
import com.twitter.library.scribe.TwitterScribeLog;
import com.twitter.model.core.TwitterUser;
import com.twitter.util.ak;
import defpackage.bcv;
import defpackage.cgq;
import java.io.Serializable;

/* compiled from: Twttr */
public class mt extends bl<my> {
    private final Context b;
    private final ql c;
    private final int d;
    private final bg e;
    @LayoutRes
    private final int f;
    @LayoutRes
    private final int g;
    private final int h;
    private final float i;
    private TwitterUser j;
    private boolean k;
    private boolean l;
    private OnClickListener m;

    public mt(Context context, my myVar, int i, int i2) {
        super(myVar, i2);
        this.k = false;
        this.m = null;
        myVar.c(false);
        this.b = context;
        this.c = new ql(context.getString(2131363418), new q().a(i).a(true).a(context));
        this.e = bg.a();
        this.d = i;
        if (e()) {
            this.f = ak.f() ? 2130969307 : 2130968868;
        } else {
            this.f = ak.f() ? 2130969333 : 2130969241;
        }
        this.h = 2130968674;
        this.i = this.b.getResources().getDimension(bcv.font_size_small);
        this.g = ak.f() ? 2130969335 : 2130969244;
        ((my) this.a).b();
    }

    public static View a(View view, ViewGroup viewGroup, String str, int i, OnClickListener onClickListener, int i2) {
        View a = bl.a(view, viewGroup, str, i);
        if (onClickListener != null) {
            View findViewById = a.findViewById(i2);
            if (findViewById != null) {
                findViewById.setOnClickListener(onClickListener);
            }
        }
        return a;
    }

    public View getView(int i, View view, ViewGroup viewGroup) {
        if (!this.k) {
            String str;
            switch (this.d) {
                case NetworkLock.DOWNLOAD_PRIORITY /*10*/:
                    str = "similar_to:::impression";
                    break;
                case HttpURLConnectionImpl.MAX_REDIRECTS /*20*/:
                    str = "user_similarities_list:::impression";
                    break;
                default:
                    str = null;
                    break;
            }
            if (str != null) {
                bbu.a(new TwitterScribeLog(this.e.c().g()).b(new String[]{a(str)}));
                this.k = true;
            }
        }
        return super.getView(i, view, viewGroup);
    }

    protected Object a() {
        return Boolean.TRUE;
    }

    protected Object b() {
        return this.c.c;
    }

    protected Object a(int i) {
        if (this.j == null) {
            return null;
        }
        long itemId = ((my) this.a).getItemId(i);
        Intent putExtra = new Intent(this.b, ProfileActivity.class).putExtra("user_id", itemId).putExtra("type", 10).putExtra("association", ((TwitterScribeAssociation) ((TwitterScribeAssociation) ((TwitterScribeAssociation) new TwitterScribeAssociation().a(5)).a(this.j.c)).b(as.a(this.l))).c("similar_to"));
        Serializable j = ((my) this.a).g.j(itemId);
        if (j != null) {
            putExtra.putExtra("friendship", j);
        }
        return putExtra;
    }

    protected View a(View view, ViewGroup viewGroup) {
        switch (this.d) {
            case NetworkLock.DOWNLOAD_PRIORITY /*10*/:
                View a = bl.a(view, viewGroup, this.b.getString(2131364198), this.f);
                if (!e()) {
                    return a;
                }
                GroupedRowView groupedRowView = (GroupedRowView) a;
                groupedRowView.setStyle(1);
                groupedRowView.setGroupStyle(2);
                return a;
            case HttpURLConnectionImpl.MAX_REDIRECTS /*20*/:
                return a(view, viewGroup, this.b.getString(2131363384), this.h, this.m, 2131951646);
            default:
                return bl.a(view, viewGroup, null);
        }
    }

    protected View b(View view, ViewGroup viewGroup) {
        switch (this.d) {
            case HttpURLConnectionImpl.MAX_REDIRECTS /*20*/:
                View view2 = new View(viewGroup.getContext());
                view2.setLayoutParams(new LayoutParams(-1, 0));
                return view2;
            default:
                return qm.a(this.g, view, viewGroup, this.c, this.i);
        }
    }

    public void a(TwitterUser twitterUser, boolean z) {
        this.l = z;
        if (this.j == null || !this.j.a(twitterUser)) {
            this.c.c.putExtras(q.a(this.c.c).c(twitterUser.d).a(twitterUser.c).a(this.b));
            this.j = twitterUser;
            notifyDataSetChanged();
        }
    }

    private String a(String str) {
        return as.a(this.l) + ":" + str;
    }

    public void a(OnClickListener onClickListener) {
        this.m = onClickListener;
    }

    public void a(Cursor cursor) {
        ((my) c()).a((cgu) new cgq(cursor));
        notifyDataSetChanged();
    }
}
