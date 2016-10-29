package com.google.ads.mediation;

import android.content.Context;
import android.location.Location;
import android.os.Bundle;
import android.view.View;
import com.google.ads.mediation.admob.AdMobAdapter;
import com.google.android.gms.ads.AdView;
import com.google.android.gms.ads.b;
import com.google.android.gms.ads.c;
import com.google.android.gms.ads.d;
import com.google.android.gms.ads.f;
import com.google.android.gms.ads.g;
import com.google.android.gms.ads.i;
import com.google.android.gms.ads.internal.client.aa;
import com.google.android.gms.internal.oi;
import com.google.android.gms.internal.tz;
import ig;
import ii;
import ij;
import ik;
import im;
import in;
import io;
import is;
import iu;
import iv;
import iw;
import java.util.Date;
import java.util.Set;

@oi
public abstract class a implements tz, ij, in, iv {
    protected AdView a;
    protected i b;
    final iu c;
    private b d;
    private Context e;
    private i f;
    private iw g;
    private String h;

    public a() {
        this.c = new b(this);
    }

    protected abstract Bundle a(Bundle bundle, Bundle bundle2);

    c a(Context context, String str) {
        return new c(context, str);
    }

    d a(Context context, ig igVar, Bundle bundle, Bundle bundle2) {
        f fVar = new f();
        Date a = igVar.a();
        if (a != null) {
            fVar.a(a);
        }
        int b = igVar.b();
        if (b != 0) {
            fVar.a(b);
        }
        Set<String> c = igVar.c();
        if (c != null) {
            for (String a2 : c) {
                fVar.a(a2);
            }
        }
        Location d = igVar.d();
        if (d != null) {
            fVar.a(d);
        }
        if (igVar.f()) {
            fVar.b(aa.a().a(context));
        }
        if (igVar.e() != -1) {
            fVar.a(igVar.e() == 1);
        }
        fVar.b(igVar.g());
        fVar.a(AdMobAdapter.class, a(bundle, bundle2));
        return fVar.a();
    }

    public String a(Bundle bundle) {
        return bundle.getString("pubid");
    }

    public void a() {
        if (this.a != null) {
            this.a.c();
            this.a = null;
        }
        if (this.b != null) {
            this.b = null;
        }
        if (this.d != null) {
            this.d = null;
        }
        if (this.f != null) {
            this.f = null;
        }
    }

    public void a(Context context, ig igVar, String str, iw iwVar, Bundle bundle, Bundle bundle2) {
        this.e = context.getApplicationContext();
        this.h = str;
        this.g = iwVar;
        this.g.a(this);
    }

    public void a(Context context, ik ikVar, Bundle bundle, g gVar, ig igVar, Bundle bundle2) {
        this.a = new AdView(context);
        this.a.setAdSize(new g(gVar.b(), gVar.a()));
        this.a.setAdUnitId(a(bundle));
        this.a.setAdListener(new e(this, ikVar));
        this.a.a(a(context, igVar, bundle2, bundle));
    }

    public void a(Context context, im imVar, Bundle bundle, ig igVar, Bundle bundle2) {
        this.b = new i(context);
        this.b.a(a(bundle));
        this.b.a(new f(this, imVar));
        this.b.a(a(context, igVar, bundle2, bundle));
    }

    public void a(Context context, io ioVar, Bundle bundle, is isVar, Bundle bundle2) {
        g gVar = new g(this, ioVar);
        c a = a(context, bundle.getString("pubid")).a(gVar);
        com.google.android.gms.ads.formats.c h = isVar.h();
        if (h != null) {
            a.a(h);
        }
        if (isVar.i()) {
            a.a(gVar);
        }
        if (isVar.j()) {
            a.a(gVar);
        }
        this.d = a.a();
        this.d.a(a(context, isVar, bundle2, bundle));
    }

    public void a(ig igVar, Bundle bundle, Bundle bundle2) {
        if (this.e == null || this.g == null) {
            com.google.android.gms.ads.internal.util.client.b.b("AdMobAdapter.loadAd called before initialize.");
            return;
        }
        this.f = new i(this.e);
        this.f.a(true);
        this.f.a(a(bundle));
        this.f.a(this.c);
        this.f.b(this.h);
        this.f.a(a(this.e, igVar, bundle2, bundle));
    }

    public void b() {
        if (this.a != null) {
            this.a.b();
        }
    }

    public void c() {
        if (this.a != null) {
            this.a.a();
        }
    }

    public View d() {
        return this.a;
    }

    public void e() {
        this.b.a();
    }

    public Bundle f() {
        return new ii().a(1).a();
    }

    public void g() {
        this.f.a();
    }

    public boolean h() {
        return this.g != null;
    }
}
