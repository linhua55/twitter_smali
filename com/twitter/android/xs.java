package com.twitter.android;

import android.content.Context;
import android.database.Cursor;
import android.os.Bundle;
import android.support.annotation.DrawableRes;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import bdk;
import cgu;
import cni;
import com.twitter.android.util.bf;
import com.twitter.library.client.bg;
import com.twitter.library.provider.ParcelableMatrixCursor;
import com.twitter.library.provider.cb;
import com.twitter.library.provider.di;
import com.twitter.library.util.FriendshipCache;
import com.twitter.library.view.m;
import com.twitter.library.widget.BaseUserView;
import com.twitter.library.widget.UserView;
import com.twitter.library.widget.e;
import com.twitter.model.core.TwitterUser;
import com.twitter.util.ak;
import defpackage.cdk;
import defpackage.cgq;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;

/* compiled from: Twttr */
public class xs extends bdk<Cursor> {
    private final Map<Long, Long> a;
    private final Animation b;
    protected boolean c;
    protected final boolean d;
    @DrawableRes
    protected final int e;
    final e<UserView> f;
    final FriendshipCache g;
    long h;
    private final xt i;
    private final bg j;
    private kr<BaseUserView, cni> k;
    private m l;
    private boolean m;
    private boolean n;
    private boolean o;
    private boolean p;

    public xs(Context context, @DrawableRes int i, e<UserView> eVar, FriendshipCache friendshipCache, boolean z) {
        super(context, 2);
        this.e = i;
        this.f = eVar;
        this.g = friendshipCache;
        this.j = bg.a();
        this.h = this.j.c().g();
        this.m = false;
        this.d = z;
        this.c = true;
        this.a = new HashMap();
        this.b = AnimationUtils.loadAnimation(context, 2131034158);
        this.i = new xt(this);
    }

    public View a(Context context, Cursor cursor, ViewGroup viewGroup) {
        return a(context, viewGroup);
    }

    UserView a(Context context, ViewGroup viewGroup) {
        return a((UserView) LayoutInflater.from(context).inflate(this.d ? 2130968673 : 2130969508, viewGroup, false));
    }

    protected UserView a(UserView userView) {
        if (this.d) {
            userView.setCheckBoxClickListener(this.f);
        } else if (this.e > 0) {
            userView.a(this.e, this.i);
            if (2130837689 == this.e) {
                userView.r.setBackgroundResource(2130837690);
            } else if (2130837694 == this.e) {
                userView.r.setBackgroundResource(2130837695);
            }
        }
        userView.setBlockButtonClickListener(this.f);
        userView.setTag(new xp(userView));
        return userView;
    }

    protected void a(BaseUserView baseUserView, Cursor cursor, long j, int i) {
        String string;
        boolean z;
        boolean z2;
        int columnIndex = cursor.getColumnIndex("user_metadata_token");
        int columnIndex2 = cursor.getColumnIndex("user_groups_type");
        int i2 = columnIndex2 != -1 ? cursor.getInt(columnIndex2) : 0;
        if (columnIndex != -1) {
            string = cursor.getString(columnIndex);
        } else {
            string = null;
        }
        columnIndex = cursor.getInt(6);
        String string2 = cursor.getString(5);
        String string3 = cursor.getString(4);
        String string4 = cursor.getString(3);
        String string5 = cursor.getString(8);
        com.twitter.model.core.bg a = com.twitter.model.core.bg.a(cursor.getBlob(9));
        cni cni = (cni) com.twitter.util.serialization.m.a(cursor.getBlob(10), cni.a);
        long j2 = (long) cursor.getInt(0);
        int i3 = cursor.getInt(7);
        if ((columnIndex & 1) != 0) {
            z = true;
        } else {
            z = false;
        }
        if ((columnIndex & 2) != 0) {
            z2 = true;
        } else {
            z2 = false;
        }
        a(baseUserView, j, string2, string3, string4, string5, a, cni, j2, string, i3, z, z2, i, i2);
    }

    protected void a(BaseUserView baseUserView, long j, String str, String str2, String str3, String str4, com.twitter.model.core.bg bgVar, cni cni, long j2, String str5, int i, boolean z, boolean z2, int i2, int i3) {
        baseUserView.setUserId(j);
        baseUserView.a(str2, str3);
        baseUserView.setProtected(z);
        baseUserView.setVerified(z2);
        baseUserView.setUserImageUrl(str);
        baseUserView.a(str4, bgVar);
        baseUserView.a(this.c);
        baseUserView.a(cni, ak.f());
        xp xpVar = (xp) baseUserView.getTag();
        if (str3 == null) {
            str3 = str2;
        }
        xpVar.h = str3;
        xpVar.d = j2;
        xpVar.g = str5;
        if (this.k != null) {
            Bundle bundle = new Bundle(1);
            bundle.putInt("position", i2);
            this.k.a(baseUserView, cni, bundle);
        }
        xpVar.f = i;
        xpVar.i = i3;
    }

    protected void a(View view, Context context, Cursor cursor) {
    }

    public void a(View view, Context context, Cursor cursor, int i) {
        long j = cursor.getLong(2);
        a(view, j, cursor.getLong(0));
        BaseUserView a = a(view);
        xp xpVar = (xp) a.getTag();
        a(a, cursor, j, i);
        FriendshipCache friendshipCache = this.g;
        if (!(friendshipCache == null || friendshipCache.a(j))) {
            friendshipCache.b(j, xpVar.f);
        }
        if (this.p) {
            a.r.setVisibility(8);
            a.s.setChecked(friendshipCache != null ? friendshipCache.l(j) : false);
            a.s.setVisibility(0);
        } else if (this.e <= 0) {
        } else {
            if (this.m || this.h != j) {
                a.r.setVisibility(0);
                if (friendshipCache != null) {
                    if (friendshipCache.l(j)) {
                        a.r.setVisibility(8);
                        a.s.setChecked(true);
                        a.s.setVisibility(0);
                    } else {
                        a.s.setVisibility(8);
                        a.r.setChecked(friendshipCache.k(j));
                    }
                    if (this.n) {
                        a.a(bf.a(friendshipCache.j(j)), this.o);
                        a.setMutedViewClickListener(this.f);
                        return;
                    }
                    return;
                }
                return;
            }
            a.r.setVisibility(4);
        }
    }

    public int getViewTypeCount() {
        return 2;
    }

    public cgu<Cursor> a(cgu<Cursor> cgu_android_database_Cursor) {
        this.h = this.j.c().g();
        return super.a(cgu_android_database_Cursor);
    }

    public UserView a(View view) {
        return (UserView) view;
    }

    public void a(kr<BaseUserView, cni> krVar) {
        this.k = krVar;
    }

    public void a(m mVar) {
        if (this.l != null) {
            throw new IllegalStateException("Bio click listener already set");
        }
        this.l = mVar;
    }

    public void b(boolean z) {
        this.m = z;
    }

    public void c(boolean z) {
        this.c = z;
    }

    public void a(boolean z, boolean z2) {
        this.n = z;
        this.o = z2;
    }

    public void d(boolean z) {
        this.p = z;
    }

    public void a(long j, long j2) {
        this.a.put(Long.valueOf(j), Long.valueOf(j2));
    }

    public Long a(long j) {
        return (Long) this.a.get(Long.valueOf(j));
    }

    public Long b(long j) {
        return (Long) this.a.remove(Long.valueOf(j));
    }

    public void c() {
        this.a.clear();
    }

    private void a(View view, long j, long j2) {
        view.clearAnimation();
        for (Entry entry : this.a.entrySet()) {
            if (j2 == ((Long) entry.getValue()).longValue()) {
                Long l = (Long) entry.getKey();
                if (j != l.longValue()) {
                    this.a.remove(l);
                    view.startAnimation(this.b);
                    return;
                }
            }
        }
    }

    public void a(List<TwitterUser> list) {
        ParcelableMatrixCursor parcelableMatrixCursor = new ParcelableMatrixCursor(cdk.a);
        int i = 0;
        for (TwitterUser twitterUser : list) {
            cb a = parcelableMatrixCursor.a();
            int i2 = i + 1;
            a.a(Integer.valueOf(i));
            a.a(Integer.valueOf(0));
            a.a(Long.valueOf(twitterUser.c));
            a.a(twitterUser.d);
            a.a(twitterUser.k);
            a.a(twitterUser.e);
            a.a(Integer.valueOf(di.a(twitterUser)));
            a.a(Integer.valueOf(twitterUser.S));
            a.a(twitterUser.g);
            a.a(twitterUser.D == null ? null : com.twitter.util.serialization.m.a(twitterUser.D, com.twitter.model.core.bg.b));
            a.a(twitterUser.B == null ? null : twitterUser.B.e());
            a.a(Integer.valueOf(0));
            i = i2;
        }
        a(new cgq(parcelableMatrixCursor));
    }
}
