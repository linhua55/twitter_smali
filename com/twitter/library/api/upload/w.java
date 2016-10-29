package com.twitter.library.api.upload;

import android.content.Context;
import boo;
import com.twitter.library.network.an;
import com.twitter.library.service.aa;
import com.twitter.library.service.ab;
import com.twitter.model.core.TwitterUser;
import com.twitter.model.geo.TwitterPlace;
import com.twitter.model.profile.d;
import com.twitter.util.collection.x;
import java.util.ArrayList;
import org.apache.http.message.BasicNameValuePair;

/* compiled from: Twttr */
public class w extends p {
    public w(Context context, ab abVar, TwitterUser twitterUser) {
        super(context, w.class.getName(), abVar, twitterUser);
    }

    protected void a(aa aaVar) {
        ab N = N();
        ArrayList arrayList = new ArrayList();
        if (this.b.d != null) {
            arrayList.add(new BasicNameValuePair("name", this.b.d));
        }
        if (this.b.f != null) {
            arrayList.add(new BasicNameValuePair("url", this.b.f));
        }
        x xVar = this.b.h;
        if (xVar.c()) {
            arrayList.add(new BasicNameValuePair("location", ((TwitterPlace) xVar.b()).d));
            arrayList.add(new BasicNameValuePair("location_place_id", ((TwitterPlace) xVar.b()).b));
        } else if (this.b.g != null) {
            arrayList.add(new BasicNameValuePair("location", this.b.g));
        }
        if (this.b.e != null) {
            arrayList.add(new BasicNameValuePair("description", this.b.e));
        }
        if (boo.c() && this.b.l != null) {
            arrayList.add(new BasicNameValuePair("birthdate_year", Integer.toString(this.b.l.e)));
            arrayList.add(new BasicNameValuePair("birthdate_month", Integer.toString(this.b.l.d)));
            arrayList.add(new BasicNameValuePair("birthdate_day", Integer.toString(this.b.l.c)));
            arrayList.add(new BasicNameValuePair("birthdate_visibility", this.b.l.f.toString()));
            arrayList.add(new BasicNameValuePair("birthdate_year_visibility", this.b.l.g.toString()));
        }
        d a = boo.a(this.b.l);
        int i = a != null ? 1 : 0;
        if (boo.e() && (i != 0 || this.b.m)) {
            boolean z;
            String str = "vine_profile_visible";
            if (i == 0 || a.e) {
                z = true;
            } else {
                z = false;
            }
            arrayList.add(new BasicNameValuePair(str, Boolean.toString(z)));
        }
        ab a2 = new ab(this.p, N).a(an.a(this.q.a, new Object[]{"1.1", "account", "update_profile"}).append(".json")).a(arrayList).a(t());
        w();
        a2.a(a2.a().c(), aaVar);
        x();
        c(aaVar);
    }
}
