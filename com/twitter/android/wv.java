package com.twitter.android;

import android.content.Context;
import android.content.res.Resources;
import android.database.Cursor;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import cgu;
import cni;
import com.google.android.exoplayer.util.extensions.Buffer;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.flags.ModuleDescriptor;
import com.twitter.library.client.bg;
import com.twitter.library.media.widget.UserImageView;
import com.twitter.library.util.FriendshipCache;
import com.twitter.model.core.p;
import com.twitter.util.aj;
import com.twitter.util.ak;
import defpackage.bcw;
import java.util.ArrayList;
import java.util.Iterator;

/* compiled from: Twttr */
public class wv extends am {
    private final Context b;
    private final bg c;
    private final FriendshipCache d;
    private final int e;
    private final xc f;
    private final LayoutInflater g;
    private final ArrayList<xa> h;
    private final xd i;
    private final boolean j;
    private Cursor k;

    public wv(Context context, FriendshipCache friendshipCache, int i, xd xdVar, xc xcVar, LayoutInflater layoutInflater) {
        this(context, friendshipCache, i, xdVar, xcVar, layoutInflater, true);
    }

    public wv(Context context, FriendshipCache friendshipCache, int i, xd xdVar, xc xcVar, LayoutInflater layoutInflater, boolean z) {
        this.h = new ArrayList();
        this.b = context;
        this.c = bg.a();
        this.d = friendshipCache;
        this.e = i;
        this.i = xdVar;
        this.f = xcVar;
        this.g = layoutInflater;
        this.j = z;
    }

    public int getCount() {
        return this.h.size();
    }

    public boolean isViewFromObject(View view, Object obj) {
        return view == obj;
    }

    public Object a(ViewGroup viewGroup, xa xaVar) {
        Context context = this.b;
        Resources resources = context.getResources();
        xc xcVar = this.f;
        RelativeLayout relativeLayout = (RelativeLayout) this.g.inflate(2130969503, null);
        Cursor cursor = this.k;
        cursor.moveToPosition(xaVar.b);
        long a = this.i.a(cursor);
        xb xbVar = new xb(context, relativeLayout, a);
        relativeLayout.setTag(xbVar);
        xbVar.i.a(this.i.d(cursor));
        String b = this.i.b(cursor);
        xbVar.a(b, this.i.c(cursor));
        xbVar.k.setText(this.i.e(cursor));
        xbVar.a(this.i.g(cursor));
        xbVar.b(this.i.f(cursor));
        cni h = this.i.h(cursor);
        xbVar.a(h, ak.f());
        xe xeVar = new xe(b, this.i.a(cursor, xaVar.b));
        if (a == this.c.c().g()) {
            xbVar.c.setVisibility(8);
        } else {
            xbVar.c.setVisibility(0);
            FriendshipCache friendshipCache = this.d;
            int i = this.i.i(cursor);
            if (friendshipCache != null) {
                if (friendshipCache.a(a)) {
                    xbVar.a(friendshipCache.j(a).intValue(), resources);
                } else {
                    xbVar.a(i, resources);
                }
            }
            xeVar.b = xbVar.a;
            if (xcVar != null) {
                xbVar.c.setOnClickListener(new ww(this, xcVar, a, h, xeVar, xbVar, resources));
            }
            if (p.b(xbVar.a)) {
                xbVar.a((int) bcw.ic_activity_follow_tweet_default, ak.f());
            } else {
                xbVar.a(this.i.k(cursor), bcw.ic_activity_follow_tweet_default, this.i.j(cursor), 0, ak.f());
            }
        }
        xbVar.a();
        if (xcVar != null) {
            relativeLayout.setOnClickListener(new wx(this, xcVar, a, h, xeVar));
        }
        viewGroup.addView(relativeLayout);
        return relativeLayout;
    }

    public Object b(ViewGroup viewGroup, xa xaVar) {
        Object obj;
        Resources resources = this.b.getResources();
        LayoutInflater layoutInflater = this.g;
        xc xcVar = this.f;
        LinearLayout linearLayout = (LinearLayout) layoutInflater.inflate(2130969502, null);
        if (xcVar != null) {
            linearLayout.findViewById(2131953352).setOnClickListener(new wy(this, xcVar));
        }
        LinearLayout linearLayout2 = (LinearLayout) linearLayout.findViewById(2131953350);
        linearLayout.setTag(linearLayout2);
        Cursor cursor = this.k;
        ArrayList arrayList = new ArrayList(xaVar.c.size());
        Iterator it = xaVar.c.iterator();
        while (it.hasNext()) {
            Integer num = (Integer) it.next();
            cursor.moveToPosition(num.intValue());
            CharSequence c = this.i.c(cursor);
            arrayList.add(c);
            Object d = this.i.d(cursor);
            if (aj.b(d)) {
                long a = this.i.a(cursor);
                UserImageView userImageView = (UserImageView) layoutInflater.inflate(2130969501, linearLayout2, false);
                userImageView.a(d);
                userImageView.setContentDescription(c);
                String b = this.i.b(cursor);
                cni h = this.i.h(cursor);
                xe xeVar = new xe(b, this.i.a(cursor, num.intValue()));
                if (xcVar != null) {
                    userImageView.setOnClickListener(new wz(this, xcVar, a, h, xeVar));
                }
                linearLayout2.addView(userImageView);
            }
        }
        int size = arrayList.size();
        if (size > 1) {
            obj = (String) arrayList.get(1);
        } else {
            obj = null;
        }
        ((TextView) linearLayout.findViewById(2131953351)).setText(resources.getQuantityString(2131492889, size, new Object[]{arrayList.get(0), obj}));
        viewGroup.addView(linearLayout);
        return linearLayout;
    }

    public Object instantiateItem(ViewGroup viewGroup, int i) {
        xa xaVar = (xa) this.h.get(i);
        switch (xaVar.a) {
            case ModuleDescriptor.MODULE_VERSION /*1*/:
                return a(viewGroup, xaVar);
            case Buffer.FLAG_DECODE_ONLY /*2*/:
                return b(viewGroup, xaVar);
            default:
                return null;
        }
    }

    public void destroyItem(ViewGroup viewGroup, int i, Object obj) {
        viewGroup.removeView((View) obj);
    }

    public xa a(int i) {
        return !this.h.isEmpty() ? (xa) this.h.get(i) : null;
    }

    public cgu a(Cursor cursor) {
        if (this.k != cursor) {
            this.a.clear();
            ArrayList arrayList = this.h;
            this.k = cursor;
            arrayList.clear();
            if (cursor != null && cursor.moveToFirst()) {
                ArrayList arrayList2 = new ArrayList();
                do {
                    int position = cursor.getPosition();
                    this.a.add(String.valueOf(this.i.a(cursor)));
                    if (!this.j) {
                        arrayList.add(new xa(position, this.i.a(cursor), this.i.h(cursor)));
                    } else if (Boolean.valueOf(this.i.l(cursor)).booleanValue() && arrayList.size() < 4) {
                        arrayList.add(new xa(position, this.i.a(cursor), this.i.h(cursor)));
                    } else if (arrayList2.size() < 5) {
                        arrayList2.add(Integer.valueOf(position));
                    }
                } while (cursor.moveToNext());
                if (!arrayList2.isEmpty() && this.j) {
                    arrayList.add(new xa(arrayList2));
                }
            }
            notifyDataSetChanged();
        }
        return cgu.f();
    }
}
