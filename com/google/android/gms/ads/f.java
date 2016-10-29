package com.google.android.gms.ads;

import android.location.Location;
import android.os.Bundle;
import com.google.ads.mediation.admob.AdMobAdapter;
import com.google.android.gms.ads.internal.client.c;
import ih;
import java.util.Date;

public final class f {
    private final c a;

    public f() {
        this.a = new c();
        this.a.b(d.a);
    }

    public d a() {
        return new d();
    }

    public f a(int i) {
        this.a.a(i);
        return this;
    }

    public f a(Location location) {
        this.a.a(location);
        return this;
    }

    public f a(Class<? extends ih> cls, Bundle bundle) {
        this.a.a(cls, bundle);
        if (cls.equals(AdMobAdapter.class) && bundle.getBoolean("_emulatorLiveAds")) {
            this.a.c(d.a);
        }
        return this;
    }

    public f a(String str) {
        this.a.a(str);
        return this;
    }

    public f a(Date date) {
        this.a.a(date);
        return this;
    }

    public f a(boolean z) {
        this.a.a(z);
        return this;
    }

    public f b(String str) {
        this.a.b(str);
        return this;
    }

    public f b(boolean z) {
        this.a.b(z);
        return this;
    }
}
