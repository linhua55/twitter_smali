package com.google.android.gms.internal;

import android.content.Context;
import com.google.android.gms.ads.identifier.AdvertisingIdClient;
import com.google.android.gms.ads.identifier.AdvertisingIdClient.Info;
import hv;
import java.io.IOException;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;

public class v extends zzal {
    private static AdvertisingIdClient r;
    private static CountDownLatch s;
    private boolean t;

    static {
        r = null;
        s = new CountDownLatch(1);
    }

    protected v(Context context, z zVar, boolean z) {
        super(context, zVar);
        this.t = z;
    }

    public static v a(String str, Context context, boolean z) {
        z dVar = new d();
        zzal.a(str, context, dVar);
        if (z) {
            synchronized (v.class) {
                if (r == null) {
                    new Thread(new x(context)).start();
                }
            }
        }
        return new v(context, dVar, z);
    }

    private void a(Context context, hv hvVar) {
        if (this.t) {
            try {
                if (a()) {
                    w f = f();
                    String a = f.a();
                    if (a != null) {
                        hvVar.O = Boolean.valueOf(f.b());
                        hvVar.N = Integer.valueOf(5);
                        hvVar.M = a;
                        zzal.a(28, m);
                        return;
                    }
                    return;
                }
                hvVar.M = zzal.d(context);
                zzal.a(24, m);
            } catch (IOException e) {
            } catch (zza e2) {
            }
        }
    }

    protected hv b(Context context) {
        hv b = super.b(context);
        a(context, b);
        return b;
    }

    w f() throws IOException {
        try {
            if (!s.await(2, TimeUnit.SECONDS)) {
                return new w(this, null, false);
            }
            synchronized (v.class) {
                if (r == null) {
                    w wVar = new w(this, null, false);
                    return wVar;
                }
                Info info = r.getInfo();
                return new w(this, a(info.getId()), info.isLimitAdTrackingEnabled());
            }
        } catch (InterruptedException e) {
            return new w(this, null, false);
        }
    }
}
