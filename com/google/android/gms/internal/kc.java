package com.google.android.gms.internal;

import android.os.RemoteException;
import com.google.ads.mediation.AdUrlAdapter;
import com.google.ads.mediation.MediationServerParameters;
import com.google.ads.mediation.admob.AdMobAdapter;
import com.google.ads.mediation.i;
import com.google.ads.mediation.o;
import com.google.android.gms.ads.internal.util.client.b;
import com.google.android.gms.ads.mediation.customevent.CustomEventAdapter;
import com.google.android.gms.ads.mediation.customevent.a;
import com.google.android.gms.ads.mediation.customevent.g;
import ih;
import java.util.Map;

@oi
public final class kc extends ke {
    private Map<Class<? extends Object>, Object> a;

    private <NETWORK_EXTRAS extends o, SERVER_PARAMETERS extends MediationServerParameters> kg c(String str) throws RemoteException {
        try {
            Class cls = Class.forName(str, false, kc.class.getClassLoader());
            if (i.class.isAssignableFrom(cls)) {
                i iVar = (i) cls.newInstance();
                return new lc(iVar, (o) this.a.get(iVar.b()));
            } else if (ih.class.isAssignableFrom(cls)) {
                return new kx((ih) cls.newInstance());
            } else {
                b.d("Could not instantiate mediation adapter: " + str + " (not a valid adapter).");
                throw new RemoteException();
            }
        } catch (Throwable th) {
            return d(str);
        }
    }

    private kg d(String str) throws RemoteException {
        try {
            b.a("Reflection failed, retrying using direct instantiation");
            if ("com.google.ads.mediation.admob.AdMobAdapter".equals(str)) {
                return new kx(new AdMobAdapter());
            }
            if ("com.google.ads.mediation.AdUrlAdapter".equals(str)) {
                return new kx(new AdUrlAdapter());
            }
            if ("com.google.android.gms.ads.mediation.customevent.CustomEventAdapter".equals(str)) {
                return new kx(new CustomEventAdapter());
            }
            if ("com.google.ads.mediation.customevent.CustomEventAdapter".equals(str)) {
                com.google.ads.mediation.customevent.CustomEventAdapter customEventAdapter = new com.google.ads.mediation.customevent.CustomEventAdapter();
                return new lc(customEventAdapter, (g) this.a.get(customEventAdapter.b()));
            }
            throw new RemoteException();
        } catch (Throwable th) {
            b.d("Could not instantiate mediation adapter: " + str + ". ", th);
        }
    }

    public kg a(String str) throws RemoteException {
        return c(str);
    }

    public void a(Map<Class<? extends Object>, Object> map) {
        this.a = map;
    }

    public boolean b(String str) throws RemoteException {
        boolean z = false;
        try {
            z = a.class.isAssignableFrom(Class.forName(str, false, kc.class.getClassLoader()));
        } catch (Throwable th) {
            b.d("Could not load custom event implementation class: " + str + ", assuming old implementation.");
        }
        return z;
    }
}
