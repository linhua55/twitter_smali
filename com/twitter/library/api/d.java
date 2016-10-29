package com.twitter.library.api;

import android.content.Context;
import android.support.v7.recyclerview.BuildConfig;
import com.google.android.gms.ads.identifier.AdvertisingIdClient;
import com.google.android.gms.ads.identifier.AdvertisingIdClient.Info;

/* compiled from: Twttr */
public class d {
    private final String a;
    private final boolean b;

    public d(String str, boolean z) {
        if (str == null) {
            this.a = BuildConfig.VERSION_NAME;
        } else {
            this.a = str;
        }
        this.b = z;
    }

    public String a() {
        return this.a;
    }

    public boolean b() {
        return this.b;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof d)) {
            return false;
        }
        d dVar = (d) obj;
        if (this.b == dVar.b) {
            return this.a.equals(dVar.a);
        }
        return false;
    }

    public int hashCode() {
        return (this.b ? 1 : 0) + (this.a.hashCode() * 31);
    }

    public static d a(Context context) {
        Info b = b(context);
        if (b != null) {
            return new d(b.getId(), b.isLimitAdTrackingEnabled());
        }
        return null;
    }

    private static Info b(Context context) {
        Info info = null;
        try {
            info = AdvertisingIdClient.getAdvertisingIdInfo(context);
        } catch (Exception e) {
        }
        return info;
    }
}
