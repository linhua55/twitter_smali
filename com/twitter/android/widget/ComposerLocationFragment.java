package com.twitter.android.widget;

import android.app.Activity;
import android.content.Context;
import android.location.Location;
import android.os.Bundle;
import com.twitter.android.client.c;
import com.twitter.android.geo.GeoTagState;
import com.twitter.android.geo.PlacePickerModel;
import com.twitter.android.geo.e;
import com.twitter.library.client.AbsFragment;
import com.twitter.library.client.Session;
import com.twitter.library.client.bg;
import com.twitter.library.scribe.TwitterScribeLog;
import com.twitter.model.geo.d;
import defpackage.bbu;
import defpackage.bvs;
import defpackage.bvv;
import defpackage.bvy;

/* compiled from: Twttr */
public abstract class ComposerLocationFragment extends AbsFragment implements bvv, e, ak {
    protected final PlacePickerModel a;
    protected c b;
    protected bvy c;
    protected Session d;
    protected long e;
    protected q f;
    protected d g;
    protected boolean h;
    protected boolean i;
    private boolean j;

    public ComposerLocationFragment() {
        this.a = new PlacePickerModel();
    }

    public void onAttach(Activity activity) {
        super.onAttach(activity);
        this.b = c.a((Context) activity);
        this.c = bvy.a((Context) activity);
        this.d = bg.a().c();
        this.e = this.d.g();
    }

    public void onCreate(Bundle bundle) {
        String str;
        super.onCreate(bundle);
        super.setRetainInstance(true);
        if (h()) {
            str = "compose:::autotag:enabled";
        } else {
            str = "compose:::autotag:disabled";
        }
        bbu.a(new TwitterScribeLog(this.e).b(str));
    }

    public void a() {
        super.a();
        b(h());
    }

    public void e() {
        this.c.b((bvv) this);
        super.e();
    }

    public void a(Location location) {
    }

    public void b(Location location) {
        this.i = false;
    }

    public void a(float f) {
    }

    public void d(int i) {
    }

    public void A() {
    }

    public void a(q qVar) {
        this.f = qVar;
    }

    public void a(GeoTagState geoTagState) {
        if (geoTagState.c()) {
            b(true);
        }
        this.a.a(geoTagState);
        if (this.f != null) {
            String str = null;
            if (geoTagState.c()) {
                str = geoTagState.e().d;
            }
            this.f.a(str);
        }
    }

    public GeoTagState b() {
        return this.a.c();
    }

    protected void b(boolean z) {
        if (this.h != z) {
            this.h = z;
            bvs.a().a(this.d, z);
            if (this.f != null) {
                this.f.a(z);
            }
        }
        if (this.h) {
            this.i = true;
            this.c.a((bvv) this);
            return;
        }
        this.i = false;
        this.c.b((bvv) this);
        this.g = null;
        a(GeoTagState.a());
    }

    public String f() {
        String str;
        GeoTagState b = b();
        if (b.c()) {
            str = b.e().d;
        } else {
            str = "none";
        }
        return "geoSelectedPlaceId: " + str + "\nisGeoAutoTagEnabled: " + h();
    }

    public void g() {
        this.d = bg.a().c();
        this.e = this.d.g();
        b(h());
    }

    public void c() {
        this.j = true;
    }

    protected boolean h() {
        boolean z;
        if (this.j || bvs.a().c(this.d)) {
            z = true;
        } else {
            z = false;
        }
        this.j = false;
        return z && bvs.a().a(bg.a().c());
    }
}
