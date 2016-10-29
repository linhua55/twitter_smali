package com.twitter.library.platform;

import android.annotation.TargetApi;
import android.net.wifi.ScanResult;
import android.os.Build.VERSION;
import com.twitter.util.aj;
import com.twitter.util.al;
import com.twitter.util.collection.x;
import java.util.concurrent.TimeUnit;

/* compiled from: Twttr */
public class e {
    private static final boolean a;
    private final String b;
    private final String c;
    private final int d;
    private final int e;
    private final x<Long> f;

    static {
        a = VERSION.SDK_INT >= 17;
    }

    public e(String str, String str2, int i, int i2, x<Long> xVar) {
        this.b = str;
        this.c = str2;
        this.d = i;
        this.e = i2;
        this.f = xVar;
    }

    @TargetApi(17)
    public static e a(ScanResult scanResult) {
        x a;
        if (a) {
            a = x.a(Long.valueOf(al.a(scanResult.timestamp, TimeUnit.MICROSECONDS)));
        } else {
            a = x.a();
        }
        return new e(scanResult.SSID, scanResult.BSSID, scanResult.level, scanResult.frequency, a);
    }

    public String a() {
        return this.c;
    }

    public int b() {
        return this.d;
    }

    public int c() {
        return this.e;
    }

    public x<Long> d() {
        return this.f;
    }

    public boolean e() {
        Object obj = this.b;
        return aj.a(obj) || obj.toLowerCase().endsWith("_nomap");
    }
}
