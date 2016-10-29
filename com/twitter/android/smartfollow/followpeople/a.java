package com.twitter.android.smartfollow.followpeople;

import android.os.Parcelable;
import android.support.annotation.VisibleForTesting;
import cgu;
import com.twitter.android.qn;
import com.twitter.android.qo;
import com.twitter.android.qs;
import com.twitter.android.smartfollow.ac;
import com.twitter.android.smartfollow.b;
import com.twitter.model.core.TwitterUser;
import com.twitter.model.core.av;
import com.twitter.util.collection.CollectionUtils;
import defpackage.chd;
import defpackage.che;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;

/* compiled from: Twttr */
public class a extends b<FollowPeopleState, FollowPeopleScreen> implements qs {
    protected boolean i;
    protected HashSet<Long> j;
    protected qo k;
    protected com.twitter.refresh.widget.a l;

    public /* synthetic */ Parcelable c() {
        return u();
    }

    public a(FollowPeopleState followPeopleState) {
        this.i = false;
        this.j = new HashSet();
        if (followPeopleState != null) {
            this.j = followPeopleState.a;
            this.i = followPeopleState.b;
            this.l = new com.twitter.refresh.widget.a(followPeopleState.c, Long.MIN_VALUE, followPeopleState.d);
            return;
        }
        this.l = new com.twitter.refresh.widget.a(-1, Long.MIN_VALUE, 0);
    }

    public String aF_() {
        return "presenter_follow_people";
    }

    protected void q() {
        super.q();
        List c = e().c();
        if (!this.i) {
            this.i = true;
            a(c);
        }
        if (this.k == null) {
            this.k = new qo(((FollowPeopleScreen) b()).getContext(), this, this.j);
            this.k.a(b(c));
        }
        ((FollowPeopleScreen) b()).a(this.k, this.l);
        a();
    }

    @VisibleForTesting
    protected void a(List<TwitterUser> list) {
        this.j.clear();
        for (TwitterUser twitterUser : list) {
            if (ac.b(twitterUser.R)) {
                this.j.add(Long.valueOf(twitterUser.bf_()));
            }
        }
    }

    @VisibleForTesting
    protected static String a(av avVar) {
        if (avVar == null || avVar.b == null) {
            return "PYMK";
        }
        if ("INTEREST".equalsIgnoreCase(avVar.b)) {
            return avVar.c;
        }
        if ("LOCATION_COUNTRY".equalsIgnoreCase(avVar.b)) {
            return "LOCATION_GEO";
        }
        return avVar.b;
    }

    @VisibleForTesting
    protected cgu<qn> b(List<TwitterUser> list) {
        Map linkedHashMap = new LinkedHashMap();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            Object obj = (TwitterUser) it.next();
            if (obj.R != null) {
                String a = a(obj.R.b);
                Iterable iterable = (cgu) linkedHashMap.get(a);
                che che = new che();
                if (iterable instanceof chd) {
                    che.a(iterable);
                }
                linkedHashMap.put(a, che.a(obj).a());
            }
        }
        che che2 = new che();
        for (Entry entry : linkedHashMap.entrySet()) {
            String str = (String) entry.getKey();
            che2.a(new qn(null, str, 2)).a(new qn(null, str, 1));
            Iterator it2 = ((cgu) entry.getValue()).iterator();
            while (it2.hasNext()) {
                che2.a(new qn((TwitterUser) it2.next(), str, 0));
            }
        }
        return che2.a();
    }

    protected void o() {
        super.o();
        this.l = ((FollowPeopleScreen) b()).getFirstVisibleItem();
    }

    public FollowPeopleState u() {
        return new FollowPeopleState(this.j, this.i, this.l);
    }

    protected String p() {
        return "follow_people_screen";
    }

    public void a() {
        String string;
        if (this.j.isEmpty()) {
            string = g().getString(2131362312);
        } else {
            string = g().getString(2131362710, new Object[]{Integer.valueOf(this.j.size())});
        }
        ((FollowPeopleScreen) b()).setCtaCopy(string);
    }

    public void a(String str, boolean z) {
        a("category", z ? "select" : "unselect", str);
    }

    public void t() {
        long[] e = CollectionUtils.e(this.j);
        if (e != null) {
            e().a(e);
        }
        if (e == null || e.length <= 0) {
            a(null, "follow_none");
        } else {
            a(null, "follow_many", String.valueOf(e.length), ac.a(e().c(), this.j));
        }
        this.j.clear();
        super.t();
    }

    public void s() {
        this.j.clear();
        super.s();
    }
}
