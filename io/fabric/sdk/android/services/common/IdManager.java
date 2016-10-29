package io.fabric.sdk.android.services.common;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Build;
import android.os.Build.VERSION;
import android.provider.Settings.Secure;
import defpackage.cse;
import io.fabric.sdk.android.f;
import io.fabric.sdk.android.p;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import java.util.Map.Entry;
import java.util.UUID;
import java.util.concurrent.locks.ReentrantLock;
import java.util.regex.Pattern;

/* compiled from: Twttr */
public class IdManager {
    private static final Pattern d;
    private static final String e;
    c a;
    b b;
    boolean c;
    private final ReentrantLock f;
    private final w g;
    private final boolean h;
    private final boolean i;
    private final Context j;
    private final String k;
    private final String l;
    private final Collection<p> m;

    /* compiled from: Twttr */
    public enum DeviceIdentifierType {
        WIFI_MAC_ADDRESS(1),
        BLUETOOTH_MAC_ADDRESS(2),
        FONT_TOKEN(53),
        ANDROID_ID(100),
        ANDROID_DEVICE_ID(cse.AppCompatTheme_buttonStyleSmall),
        ANDROID_SERIAL(cse.AppCompatTheme_checkboxStyle),
        ANDROID_ADVERTISING_ID(cse.AppCompatTheme_checkedTextViewStyle);
        
        public final int protobufIndex;

        private DeviceIdentifierType(int i) {
            this.protobufIndex = i;
        }
    }

    static {
        d = Pattern.compile("[^\\p{Alnum}]");
        e = Pattern.quote("/");
    }

    public IdManager(Context context, String str, String str2, Collection<p> collection) {
        this.f = new ReentrantLock();
        if (context == null) {
            throw new IllegalArgumentException("appContext must not be null");
        } else if (str == null) {
            throw new IllegalArgumentException("appIdentifier must not be null");
        } else if (collection == null) {
            throw new IllegalArgumentException("kits must not be null");
        } else {
            this.j = context;
            this.k = str;
            this.l = str2;
            this.m = collection;
            this.g = new w();
            this.a = new c(context);
            this.h = CommonUtils.a(context, "com.crashlytics.CollectDeviceIdentifiers", true);
            if (!this.h) {
                f.h().a("Fabric", "Device ID collection disabled for " + context.getPackageName());
            }
            this.i = CommonUtils.a(context, "com.crashlytics.CollectUserIdentifiers", true);
            if (!this.i) {
                f.h().a("Fabric", "User information collection disabled for " + context.getPackageName());
            }
        }
    }

    public boolean a() {
        return this.i;
    }

    private String a(String str) {
        return str == null ? null : d.matcher(str).replaceAll("").toLowerCase(Locale.US);
    }

    public String b() {
        String str = this.l;
        if (str != null) {
            return str;
        }
        SharedPreferences a = CommonUtils.a(this.j);
        str = a.getString("crashlytics.installation.id", null);
        if (str == null) {
            return a(a);
        }
        return str;
    }

    public String c() {
        return this.k;
    }

    public String d() {
        return e() + "/" + f();
    }

    public String e() {
        return b(VERSION.RELEASE);
    }

    public String f() {
        return b(VERSION.INCREMENTAL);
    }

    public String g() {
        return String.format(Locale.US, "%s/%s", new Object[]{b(Build.MANUFACTURER), b(Build.MODEL)});
    }

    private String b(String str) {
        return str.replaceAll(e, "");
    }

    public String h() {
        String str = "";
        if (!this.h) {
            return str;
        }
        str = n();
        if (str != null) {
            return str;
        }
        SharedPreferences a = CommonUtils.a(this.j);
        str = a.getString("crashlytics.installation.id", null);
        if (str == null) {
            return a(a);
        }
        return str;
    }

    private String a(SharedPreferences sharedPreferences) {
        this.f.lock();
        try {
            String string = sharedPreferences.getString("crashlytics.installation.id", null);
            if (string == null) {
                string = a(UUID.randomUUID().toString());
                sharedPreferences.edit().putString("crashlytics.installation.id", string).commit();
            }
            this.f.unlock();
            return string;
        } catch (Throwable th) {
            this.f.unlock();
        }
    }

    public Map<DeviceIdentifierType, String> i() {
        Map hashMap = new HashMap();
        for (p pVar : this.m) {
            if (pVar instanceof r) {
                for (Entry entry : ((r) pVar).e().entrySet()) {
                    a(hashMap, (DeviceIdentifierType) entry.getKey(), (String) entry.getValue());
                }
            }
        }
        a(hashMap, DeviceIdentifierType.ANDROID_ID, n());
        a(hashMap, DeviceIdentifierType.ANDROID_ADVERTISING_ID, m());
        return Collections.unmodifiableMap(hashMap);
    }

    public String j() {
        return this.g.a(this.j);
    }

    synchronized b k() {
        if (!this.c) {
            this.b = this.a.a();
            this.c = true;
        }
        return this.b;
    }

    public Boolean l() {
        if (!this.h) {
            return null;
        }
        b k = k();
        if (k != null) {
            return Boolean.valueOf(k.b);
        }
        return null;
    }

    public String m() {
        if (!this.h) {
            return null;
        }
        b k = k();
        if (k != null) {
            return k.a;
        }
        return null;
    }

    private void a(Map<DeviceIdentifierType, String> map, DeviceIdentifierType deviceIdentifierType, String str) {
        if (str != null) {
            map.put(deviceIdentifierType, str);
        }
    }

    public String n() {
        if (!this.h) {
            return null;
        }
        String string = Secure.getString(this.j.getContentResolver(), "android_id");
        if ("9774d56d682e549c".equals(string)) {
            return null;
        }
        return a(string);
    }
}
