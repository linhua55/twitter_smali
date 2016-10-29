package com.crashlytics.android.core;

import io.fabric.sdk.android.f;
import io.fabric.sdk.android.services.common.CommonUtils;
import io.fabric.sdk.android.services.common.y;
import java.io.File;
import java.util.Locale;

/* compiled from: Twttr */
class bv implements az {
    private final File a;
    private final int b;
    private y c;

    public bv(File file, int i) {
        this.a = file;
        this.b = i;
    }

    public void a(long j, String str) {
        d();
        b(j, str);
    }

    public b a() {
        if (!this.a.exists()) {
            return null;
        }
        d();
        if (this.c == null) {
            return null;
        }
        int[] iArr = new int[]{0};
        byte[] bArr = new byte[this.c.a()];
        try {
            this.c.a(new bw(this, bArr, iArr));
        } catch (Throwable e) {
            f.h().e("CrashlyticsCore", "A problem occurred while reading the Crashlytics log file.", e);
        }
        return b.a(bArr, 0, iArr[0]);
    }

    public void b() {
        CommonUtils.a(this.c, "There was a problem closing the Crashlytics log file.");
        this.c = null;
    }

    public void c() {
        b();
        this.a.delete();
    }

    private void d() {
        if (this.c == null) {
            try {
                this.c = new y(this.a);
            } catch (Throwable e) {
                f.h().e("CrashlyticsCore", "Could not open log file: " + this.a, e);
            }
        }
    }

    private void b(long j, String str) {
        if (this.c != null) {
            String str2;
            if (str == null) {
                str2 = "null";
            } else {
                str2 = str;
            }
            try {
                int i = this.b / 4;
                if (str2.length() > i) {
                    str2 = "..." + str2.substring(str2.length() - i);
                }
                str2 = str2.replaceAll("\r", " ").replaceAll("\n", " ");
                this.c.a(String.format(Locale.US, "%d %s%n", new Object[]{Long.valueOf(j), str2}).getBytes(Util.UTF_8));
                while (!this.c.b() && this.c.a() > this.b) {
                    this.c.c();
                }
            } catch (Throwable e) {
                f.h().e("CrashlyticsCore", "There was a problem writing to the Crashlytics log.", e);
            }
        }
    }
}
