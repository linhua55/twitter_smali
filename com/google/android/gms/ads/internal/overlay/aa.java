package com.google.android.gms.ads.internal.overlay;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Color;
import android.os.Bundle;
import android.support.annotation.Nullable;
import android.support.v4.view.accessibility.AccessibilityNodeInfoCompat;
import android.text.TextUtils;
import android.view.TextureView;
import com.google.android.gms.ads.internal.ar;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.ads.internal.util.client.b;
import com.google.android.gms.internal.cj;
import com.google.android.gms.internal.cp;
import com.google.android.gms.internal.cu;
import com.google.android.gms.internal.cy;
import com.google.android.gms.internal.oi;
import com.google.android.gms.internal.rn;
import com.google.android.gms.internal.rp;
import com.google.android.gms.internal.rq;
import java.util.concurrent.TimeUnit;

@oi
public class aa {
    private final Context a;
    private final String b;
    private final VersionInfoParcel c;
    @Nullable
    private final cu d;
    @Nullable
    private final cy e;
    private final rn f;
    private final long[] g;
    private final String[] h;
    @Nullable
    private cu i;
    @Nullable
    private cu j;
    @Nullable
    private cu k;
    @Nullable
    private cu l;
    private boolean m;
    private zzi n;
    private boolean o;
    private boolean p;
    private long q;

    public aa(Context context, VersionInfoParcel versionInfoParcel, String str, @Nullable cy cyVar, @Nullable cu cuVar) {
        this.f = new rq().a("min_1", Double.MIN_VALUE, 1.0d).a("1_5", 1.0d, 5.0d).a("5_10", 5.0d, 10.0d).a("10_20", 10.0d, 20.0d).a("20_30", 20.0d, 30.0d).a("30_max", 30.0d, Double.MAX_VALUE).a();
        this.q = -1;
        this.a = context;
        this.c = versionInfoParcel;
        this.b = str;
        this.e = cyVar;
        this.d = cuVar;
        String str2 = (String) cj.v.c();
        if (str2 == null) {
            this.h = new String[0];
            this.g = new long[0];
            return;
        }
        String[] split = TextUtils.split(str2, ",");
        this.h = new String[split.length];
        this.g = new long[split.length];
        for (int i = 0; i < split.length; i++) {
            try {
                this.g[i] = Long.parseLong(split[i]);
            } catch (Throwable e) {
                b.d("Unable to parse frame hash target time number.", e);
                this.g[i] = -1;
            }
        }
    }

    private void c(zzi com_google_android_gms_ads_internal_overlay_zzi) {
        long longValue = ((Long) cj.w.c()).longValue();
        long currentPosition = (long) com_google_android_gms_ads_internal_overlay_zzi.getCurrentPosition();
        int i = 0;
        while (i < this.h.length) {
            if (this.h[i] == null && longValue > Math.abs(currentPosition - this.g[i])) {
                this.h[i] = a((TextureView) com_google_android_gms_ads_internal_overlay_zzi);
                return;
            }
            i++;
        }
    }

    private void e() {
        if (this.k != null && this.l == null) {
            cp.a(this.e, this.k, "vff");
            cp.a(this.e, this.d, "vtt");
            this.l = cp.a(this.e);
        }
        long c = ar.i().c();
        if (this.m && this.p && this.q != -1) {
            this.f.a(((double) TimeUnit.SECONDS.toNanos(1)) / ((double) (c - this.q)));
        }
        this.p = this.m;
        this.q = c;
    }

    String a(TextureView textureView) {
        Bitmap bitmap = textureView.getBitmap(8, 8);
        long j = 0;
        long j2 = 63;
        int i = 0;
        while (i < 8) {
            long j3 = j;
            j = j2;
            for (int i2 = 0; i2 < 8; i2++) {
                int pixel = bitmap.getPixel(i2, i);
                j3 |= (Color.green(pixel) + (Color.blue(pixel) + Color.red(pixel)) > AccessibilityNodeInfoCompat.ACTION_CLEAR_ACCESSIBILITY_FOCUS ? 1 : 0) << ((int) j);
                j--;
            }
            i++;
            j2 = j;
            j = j3;
        }
        return String.format("%016X", new Object[]{Long.valueOf(j)});
    }

    public void a() {
        if (this.i != null && this.j == null) {
            cp.a(this.e, this.i, "vfr");
            this.j = cp.a(this.e);
        }
    }

    public void a(zzi com_google_android_gms_ads_internal_overlay_zzi) {
        cp.a(this.e, this.d, "vpc");
        this.i = cp.a(this.e);
        this.n = com_google_android_gms_ads_internal_overlay_zzi;
    }

    public void b() {
        if (((Boolean) cj.u.c()).booleanValue() && !this.o) {
            Bundle bundle = new Bundle();
            bundle.putString("type", "native-player-metrics");
            bundle.putString("request", this.b);
            bundle.putString("player", this.n.a());
            for (rp rpVar : this.f.a()) {
                bundle.putString("fps_c_" + rpVar.a, Integer.toString(rpVar.e));
                bundle.putString("fps_p_" + rpVar.a, Double.toString(rpVar.d));
            }
            for (int i = 0; i < this.g.length; i++) {
                String str = this.h[i];
                if (str != null) {
                    bundle.putString("fh_" + Long.valueOf(this.g[i]), str);
                }
            }
            ar.e().a(this.a, this.c.b, "gmob-apps", bundle, true);
            this.o = true;
        }
    }

    public void b(zzi com_google_android_gms_ads_internal_overlay_zzi) {
        e();
        c(com_google_android_gms_ads_internal_overlay_zzi);
    }

    public void c() {
        this.m = true;
        if (this.j != null && this.k == null) {
            cp.a(this.e, this.j, "vfp");
            this.k = cp.a(this.e);
        }
    }

    public void d() {
        this.m = false;
    }
}
