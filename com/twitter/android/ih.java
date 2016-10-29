package com.twitter.android;

import android.content.Context;
import android.support.v4.util.LruCache;
import android.text.Editable;
import android.widget.ArrayAdapter;
import com.twitter.config.d;
import com.twitter.library.api.geo.a;
import com.twitter.library.api.geo.b;
import com.twitter.library.client.az;
import com.twitter.library.client.bg;
import com.twitter.library.scribe.TwitterScribeLog;
import com.twitter.library.service.x;
import com.twitter.library.service.z;
import com.twitter.model.geo.TwitterPlace;
import com.twitter.util.aj;
import com.twitter.util.collection.n;
import com.twitter.util.j;
import defpackage.bbu;
import java.util.List;

/* compiled from: Twttr */
public class ih extends z implements if {
    private final Context a;
    private final bg b;
    private final String c;
    private final String d;
    private ArrayAdapter<TwitterPlace> e;
    private final LruCache<String, List<TwitterPlace>> f;
    private TwitterPlace g;
    private TwitterPlace h;
    private String i;
    private ig j;

    public ih(Context context, String str, String str2) {
        this.a = context;
        this.c = str;
        this.d = str2;
        this.b = bg.a();
        this.f = new LruCache(30);
    }

    public ArrayAdapter<TwitterPlace> a() {
        if (this.e == null) {
            this.e = new ii(this.a, 2130969444);
        }
        return this.e;
    }

    public void a(Editable editable) {
        if (this.h != null && !this.h.d.equals(editable.toString())) {
            this.h = null;
        }
    }

    public void a(String str) {
        this.i = str;
    }

    public String b() {
        return this.i;
    }

    public void a(LocationState locationState) {
        this.g = locationState.a;
        this.h = locationState.b;
    }

    public TwitterPlace c() {
        return this.h;
    }

    public TwitterPlace d() {
        return this.g;
    }

    private static int g() {
        return 30;
    }

    public void a(String str, long j, long j2) {
        if (d.a("profile_structured_location_enabled") && !aj.a(this.i, str)) {
            bbu.a(((TwitterScribeLog) ((TwitterScribeLog) ((TwitterScribeLog) new TwitterScribeLog(j).b(this.c, this.d, "structured_location:location_picker:input")).i("typeahead")).a(str)).j(String.valueOf(j2)));
        }
    }

    public String b(String str) {
        if (this.h != null) {
            j.b(str.equals(this.h.d));
        }
        return str;
    }

    public boolean e() {
        return (this.g == null && this.h != null) || !(this.g == null || this.g.equals(this.h));
    }

    public boolean a(int i) {
        return this.h == null && i > g();
    }

    public boolean f() {
        return this.e.isEmpty();
    }

    public void c(String str) {
        if (d.a("profile_structured_location_enabled")) {
            List list = (List) this.f.get(str);
            if (list != null) {
                a(list);
            } else {
                az.a(this.a).a(new a(this.a, this.b.c()).b(str).a("profile_location"), (z) this);
            }
        }
    }

    public void a(x xVar) {
        super.a(xVar);
        a aVar = (a) xVar;
        b h = aVar.h();
        if (h != null) {
            List a = h.a();
            if (aVar.e() != null) {
                this.f.put(aVar.e(), a);
            }
            a(a);
            return;
        }
        a(n.g());
    }

    private void a(List<TwitterPlace> list) {
        ArrayAdapter arrayAdapter = this.e;
        arrayAdapter.setNotifyOnChange(false);
        arrayAdapter.clear();
        for (TwitterPlace add : list) {
            arrayAdapter.add(add);
        }
        if (!(arrayAdapter.isEmpty() || this.j == null)) {
            this.j.x();
        }
        arrayAdapter.notifyDataSetChanged();
        if (this.j != null) {
            this.j.y();
        }
    }

    public void a(int i, String str, long j, long j2) {
        TwitterPlace twitterPlace = (TwitterPlace) this.e.getItem(i);
        if (!twitterPlace.equals(this.g)) {
            String str2;
            if (str.isEmpty()) {
                str2 = "default";
            } else {
                str2 = "typeahead";
            }
            bbu.a(((TwitterScribeLog) ((TwitterScribeLog) ((TwitterScribeLog) ((TwitterScribeLog) new TwitterScribeLog(j).b(this.c, this.d, "structured_location:location_picker:select")).i(str2)).a(str)).d(twitterPlace.b)).j(String.valueOf(j2)));
        }
        this.h = twitterPlace;
    }

    public void a(ig igVar) {
        this.j = igVar;
    }
}
