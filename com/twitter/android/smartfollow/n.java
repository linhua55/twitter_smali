package com.twitter.android.smartfollow;

import android.content.Intent;
import android.view.View;
import com.twitter.android.ContactsUploadService;
import com.twitter.android.DispatchActivity;
import com.twitter.android.av.v;
import com.twitter.android.lf;
import com.twitter.android.runtimepermissions.c;
import com.twitter.android.smartfollow.interestsearch.InterestSearchActivity;
import com.twitter.android.util.t;
import com.twitter.app.common.base.BaseFragmentActivity;
import com.twitter.library.api.timeline.s;
import com.twitter.library.client.Session;
import com.twitter.library.client.az;
import com.twitter.library.client.bg;
import com.twitter.library.service.x;
import com.twitter.library.service.z;
import com.twitter.model.core.TwitterUser;
import com.twitter.model.json.stratostore.JsonInterestSelections;
import com.twitter.util.aj;
import defpackage.aom;
import defpackage.bnh;
import defpackage.boj;
import defpackage.cbx;

/* compiled from: Twttr */
public class n extends aom implements m {
    private final BaseFragmentActivity a;

    public n(BaseFragmentActivity baseFragmentActivity) {
        super(baseFragmentActivity);
        this.a = baseFragmentActivity;
    }

    public void a() {
        DispatchActivity.b(this.a, null);
    }

    public String a(long[] jArr, z zVar) {
        return az.a(this.a).a(new boj(this.a, bg.a().c(), jArr, false), zVar);
    }

    public boolean a(String str) {
        return ContactsUploadService.a(this.a, str, false);
    }

    public void b(String str) {
        Session c = bg.a().c();
        TwitterUser f = c.f();
        if (f != null) {
            x xVar = (s) new s(this.a, c, f, 1).f(v.a()).l("HTL request after completing Signup/NUX is considered to be user initiated action. The app may or may not be visible");
            if (aj.b((CharSequence) str)) {
                xVar.b(str);
            }
            az.a(this.a).a(xVar, null);
        }
    }

    public void a(JsonInterestSelections jsonInterestSelections) {
        az.a(this.a).a(new bnh(this.a, bg.a().c(), jsonInterestSelections), null);
    }

    public void a(long j, String str, int i) {
        this.a.startActivityForResult(new Intent(this.a, InterestSearchActivity.class).putExtra("extra_parent_id", j).putExtra("extra_scribe_page", str), i);
    }

    public void a(int i, String... strArr) {
        lf.a().a(i, this.a, strArr);
    }

    public void b() {
        t.a(this.a, "location_fatigue", bg.a().c().e()).b();
    }

    public void c() {
        if (cbx.a()) {
            t.a(this.a, "connect_fatigue", bg.a().c().e()).b();
        }
    }

    public void a(String[] strArr, View view) {
        c.a(this.a, view, lf.a().b(this.a, strArr));
    }
}
