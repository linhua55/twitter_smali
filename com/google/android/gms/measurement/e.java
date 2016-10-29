package com.google.android.gms.measurement;

import android.content.Context;
import android.content.res.Resources;
import android.text.TextUtils;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.bm;
import ie;

public final class e {
    private static volatile e e;
    private final String a;
    private final Status b;
    private final boolean c;
    private final boolean d;

    e(Context context) {
        boolean z = true;
        Resources resources = context.getResources();
        String resourcePackageName = resources.getResourcePackageName(ie.common_google_play_services_unknown_issue);
        int identifier = resources.getIdentifier("google_app_measurement_enable", "integer", resourcePackageName);
        if (identifier != 0) {
            boolean z2 = resources.getInteger(identifier) != 0;
            if (z2) {
                z = false;
            }
            this.d = z;
            z = z2;
        } else {
            this.d = false;
        }
        this.c = z;
        int identifier2 = resources.getIdentifier("google_app_id", "string", resourcePackageName);
        if (identifier2 == 0) {
            if (this.c) {
                this.b = new Status(10, "Missing an expected resource: 'R.string.google_app_id' for initializing Google services.  Possible causes are missing google-services.json or com.google.gms.google-services gradle plugin.");
            } else {
                this.b = Status.a;
            }
            this.a = null;
            return;
        }
        String string = resources.getString(identifier2);
        if (TextUtils.isEmpty(string)) {
            if (this.c) {
                this.b = new Status(10, "The resource 'R.string.google_app_id' is invalid, expected an app  identifier and found: '" + string + "'.");
            } else {
                this.b = Status.a;
            }
            this.a = null;
            return;
        }
        this.a = string;
        this.b = Status.a;
    }

    e(Context context, String str, boolean z) {
        this.a = str;
        this.b = Status.a;
        this.c = z;
        this.d = !z;
    }

    public static Status a(Context context) {
        bm.a(context, "Context must not be null.");
        if (e == null) {
            synchronized (e.class) {
                if (e == null) {
                    e = new e(context);
                }
            }
        }
        return e.b;
    }

    public static Status a(Context context, String str, boolean z) {
        bm.a(context, "Context must not be null.");
        bm.a(str, "App ID must be nonempty.");
        synchronized (e.class) {
            if (e != null) {
                Status a = e.a(str);
                return a;
            }
            e = new e(context, str, z);
            return e.b;
        }
    }

    public static String a() {
        if (e == null) {
            synchronized (e.class) {
                if (e == null) {
                    throw new IllegalStateException("Initialize must be called before getGoogleAppId.");
                }
            }
        }
        return e.b();
    }

    public static boolean c() {
        if (e == null) {
            synchronized (e.class) {
                if (e == null) {
                    throw new IllegalStateException("Initialize must be called before isMeasurementEnabled.");
                }
            }
        }
        return e.e();
    }

    public static boolean d() {
        if (e == null) {
            synchronized (e.class) {
                if (e == null) {
                    throw new IllegalStateException("Initialize must be called before isMeasurementExplicitlyDisabled.");
                }
            }
        }
        return e.d;
    }

    Status a(String str) {
        return (this.a == null || this.a.equals(str)) ? Status.a : new Status(10, "Initialize was called with two different Google App IDs.  Only the first app ID will be used: '" + this.a + "'.");
    }

    String b() {
        return this.a;
    }

    boolean e() {
        return this.b.e() && this.c;
    }
}
