package defpackage;

import android.annotation.TargetApi;
import android.app.Application;
import android.content.Context;
import android.os.Build.VERSION;
import android.support.v7.recyclerview.BuildConfig;
import android.text.TextUtils;
import cwm;
import io.fabric.sdk.android.f;
import io.fabric.sdk.android.p;
import io.fabric.sdk.android.services.common.CommonUtils;
import io.fabric.sdk.android.services.common.IdManager;
import io.fabric.sdk.android.services.common.IdManager.DeviceIdentifierType;
import io.fabric.sdk.android.services.common.ae;
import io.fabric.sdk.android.services.common.r;
import io.fabric.sdk.android.services.network.b;
import io.fabric.sdk.android.services.settings.q;
import io.fabric.sdk.android.services.settings.v;
import java.io.InputStream;
import java.util.HashMap;
import java.util.Map;
import x;

/* compiled from: Twttr */
/* renamed from: aa */
public class aa extends p<Boolean> implements r {
    private final cwm<String> a;
    private final af b;
    private ah c;

    public aa() {
        this.a = new cwm();
        this.b = new af();
    }

    protected /* synthetic */ Object f() {
        return d();
    }

    @TargetApi(14)
    protected boolean a_() {
        this.c = a(VERSION.SDK_INT, (Application) E().getApplicationContext());
        return true;
    }

    protected Boolean d() {
        f.h().a("Beta", "Beta kit initializing...");
        Context E = E();
        IdManager D = D();
        if (TextUtils.isEmpty(a(E, D.j()))) {
            f.h().a("Beta", "A Beta device token was not found for this app");
            return Boolean.valueOf(false);
        }
        f.h().a("Beta", "Beta device token is present, checking for app updates.");
        io.fabric.sdk.android.services.settings.f h = h();
        ab a = a(E);
        if (a(h, a)) {
            this.c.a(E, this, D, h, a, new cxi(this), new ae(), new b(f.h()));
        }
        return Boolean.valueOf(true);
    }

    @TargetApi(14)
    ah a(int i, Application application) {
        if (i >= 14) {
            return new x(F().e(), F().f());
        }
        return new ag();
    }

    public Map<DeviceIdentifierType, String> e() {
        CharSequence a = a(E(), D().j());
        Map<DeviceIdentifierType, String> hashMap = new HashMap();
        if (!TextUtils.isEmpty(a)) {
            hashMap.put(DeviceIdentifierType.c, a);
        }
        return hashMap;
    }

    public String b() {
        return "com.crashlytics.sdk.android:beta";
    }

    public String a() {
        return "1.1.6.127";
    }

    @TargetApi(11)
    boolean a(String str, int i) {
        if (i < 11) {
            return str == null;
        } else {
            return "io.crash.air".equals(str);
        }
    }

    boolean a(io.fabric.sdk.android.services.settings.f fVar, ab abVar) {
        return (fVar == null || TextUtils.isEmpty(fVar.a) || abVar == null) ? false : true;
    }

    private String a(Context context, String str) {
        if (a(str, VERSION.SDK_INT)) {
            f.h().a("Beta", "App was possibly installed by Beta. Getting device token");
            try {
                String str2 = (String) this.a.a(context, this.b);
                if (BuildConfig.VERSION_NAME.equals(str2)) {
                    str2 = null;
                }
                return str2;
            } catch (Throwable e) {
                f.h().e("Beta", "Failed to load the Beta device token", e);
                return null;
            }
        }
        f.h().a("Beta", "App was not installed by Beta. Skipping device token");
        return null;
    }

    private io.fabric.sdk.android.services.settings.f h() {
        v b = q.a().b();
        if (b != null) {
            return b.f;
        }
        return null;
    }

    private ab a(Context context) {
        ab a;
        Throwable th;
        Throwable e;
        Object obj;
        Throwable th2;
        ab abVar;
        InputStream inputStream = null;
        InputStream open;
        try {
            open = context.getAssets().open("crashlytics-build.properties");
            if (open != null) {
                try {
                    a = ab.a(open);
                } catch (Throwable e2) {
                    th = e2;
                    obj = inputStream;
                    th2 = th;
                    try {
                        f.h().e("Beta", "Error reading Beta build properties", th2);
                        if (open != null) {
                            try {
                                open.close();
                            } catch (Throwable th22) {
                                f.h().e("Beta", "Error closing Beta build properties asset", th22);
                            }
                        }
                        return abVar;
                    } catch (Throwable th3) {
                        e2 = th3;
                        if (open != null) {
                            try {
                                open.close();
                            } catch (Throwable th222) {
                                f.h().e("Beta", "Error closing Beta build properties asset", th222);
                            }
                        }
                        throw e2;
                    }
                }
                try {
                    f.h().a("Beta", a.d + " build properties: " + a.b + " (" + a.a + ")" + " - " + a.c);
                    abVar = a;
                } catch (Throwable e22) {
                    th = e22;
                    abVar = a;
                    th222 = th;
                    f.h().e("Beta", "Error reading Beta build properties", th222);
                    if (open != null) {
                        open.close();
                    }
                    return abVar;
                }
            }
            obj = inputStream;
            if (open != null) {
                try {
                    open.close();
                } catch (Throwable th2222) {
                    f.h().e("Beta", "Error closing Beta build properties asset", th2222);
                }
            }
        } catch (Throwable e222) {
            open = inputStream;
            InputStream inputStream2 = inputStream;
            th2222 = e222;
            abVar = inputStream2;
            f.h().e("Beta", "Error reading Beta build properties", th2222);
            if (open != null) {
                open.close();
            }
            return abVar;
        } catch (Throwable th4) {
            e222 = th4;
            open = inputStream;
            if (open != null) {
                open.close();
            }
            throw e222;
        }
        return abVar;
    }

    String g() {
        return CommonUtils.b(E(), "com.crashlytics.ApiEndpoint");
    }
}
