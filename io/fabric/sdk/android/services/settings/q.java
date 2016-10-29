package io.fabric.sdk.android.services.settings;

import android.content.Context;
import io.fabric.sdk.android.f;
import io.fabric.sdk.android.p;
import io.fabric.sdk.android.services.common.CommonUtils;
import io.fabric.sdk.android.services.common.DeliveryMechanism;
import io.fabric.sdk.android.services.common.IdManager;
import io.fabric.sdk.android.services.common.ae;
import io.fabric.sdk.android.services.common.k;
import io.fabric.sdk.android.services.network.j;
import java.util.Locale;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: Twttr */
public class q {
    private final AtomicReference<v> a;
    private final CountDownLatch b;
    private u c;
    private boolean d;

    public static q a() {
        return s.a;
    }

    private q() {
        this.a = new AtomicReference();
        this.b = new CountDownLatch(1);
        this.d = false;
    }

    public synchronized q a(p pVar, IdManager idManager, j jVar, String str, String str2, String str3) {
        q qVar;
        if (this.d) {
            qVar = this;
        } else {
            if (this.c == null) {
                Context E = pVar.E();
                String c = idManager.c();
                String a = new k().a(E);
                String j = idManager.j();
                ae aeVar = new ae();
                k kVar = new k();
                i iVar = new i(pVar);
                String k = CommonUtils.k(E);
                p pVar2 = pVar;
                String str4 = str3;
                l lVar = new l(pVar2, str4, String.format(Locale.US, "https://settings.crashlytics.com/spi/v2/platforms/android/apps/%s/settings", new Object[]{c}), jVar);
                j = str2;
                String str5 = str;
                this.c = new j(pVar, new y(a, idManager.g(), idManager.f(), idManager.e(), idManager.m(), idManager.b(), idManager.n(), CommonUtils.a(CommonUtils.m(E)), j, str5, DeliveryMechanism.a(j).a(), k), aeVar, kVar, iVar, lVar);
            }
            this.d = true;
            qVar = this;
        }
        return qVar;
    }

    public <T> T a(t<T> tVar, T t) {
        v vVar = (v) this.a.get();
        return vVar == null ? t : tVar.b(vVar);
    }

    public v b() {
        try {
            this.b.await();
            return (v) this.a.get();
        } catch (InterruptedException e) {
            f.h().e("Fabric", "Interrupted while waiting for settings data.");
            return null;
        }
    }

    public synchronized boolean c() {
        v a;
        a = this.c.a();
        a(a);
        return a != null;
    }

    public synchronized boolean d() {
        v a;
        a = this.c.a(SettingsCacheBehavior.SKIP_CACHE_LOOKUP);
        a(a);
        if (a == null) {
            f.h().e("Fabric", "Failed to force reload of settings from Crashlytics.", null);
        }
        return a != null;
    }

    private void a(v vVar) {
        this.a.set(vVar);
        this.b.countDown();
    }
}
