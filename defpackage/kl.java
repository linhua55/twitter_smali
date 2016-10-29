package defpackage;

import android.content.Context;
import android.os.IBinder;
import android.os.RemoteException;
import android.util.Log;
import com.google.android.gms.common.GooglePlayServicesNotAvailableException;
import com.google.android.gms.common.GooglePlayServicesUtil;
import com.google.android.gms.common.internal.bm;
import com.google.android.gms.dynamic.m;
import com.google.android.gms.maps.model.RuntimeRemoteException;
import tv.periscope.android.library.p;

/* renamed from: kl */
public class kl {
    private static Context a;
    private static kp b;

    private static <T> T a(Class<?> cls) {
        try {
            return cls.newInstance();
        } catch (InstantiationException e) {
            throw new IllegalStateException("Unable to instantiate the dynamic class " + cls.getName());
        } catch (IllegalAccessException e2) {
            throw new IllegalStateException("Unable to call the default constructor of " + cls.getName());
        }
    }

    private static <T> T a(ClassLoader classLoader, String str) {
        try {
            return kl.a(((ClassLoader) bm.a(classLoader)).loadClass(str));
        } catch (ClassNotFoundException e) {
            throw new IllegalStateException("Unable to find dynamic class " + str);
        }
    }

    public static kp a(Context context) throws GooglePlayServicesNotAvailableException {
        bm.a(context);
        if (b != null) {
            return b;
        }
        kl.b(context);
        b = kl.c(context);
        try {
            b.a(m.a(kl.d(context).getResources()), GooglePlayServicesUtil.GOOGLE_PLAY_SERVICES_VERSION_CODE);
            return b;
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public static boolean a() {
        return false;
    }

    private static Class<?> b() {
        try {
            return Class.forName("com.google.android.gms.maps.internal.CreatorImpl");
        } catch (Throwable e) {
            throw new RuntimeException(e);
        }
    }

    private static void b(Context context) throws GooglePlayServicesNotAvailableException {
        int isGooglePlayServicesAvailable = GooglePlayServicesUtil.isGooglePlayServicesAvailable(context);
        switch (isGooglePlayServicesAvailable) {
            case p.View_android_theme /*0*/:
            default:
                throw new GooglePlayServicesNotAvailableException(isGooglePlayServicesAvailable);
        }
    }

    private static kp c(Context context) {
        if (kl.a()) {
            Log.i(kl.class.getSimpleName(), "Making Creator statically");
            return (kp) kl.a(kl.b());
        }
        Log.i(kl.class.getSimpleName(), "Making Creator dynamically");
        return kq.a((IBinder) kl.a(kl.d(context).getClassLoader(), "com.google.android.gms.maps.internal.CreatorImpl"));
    }

    private static Context d(Context context) {
        if (a == null) {
            if (kl.a()) {
                a = context.getApplicationContext();
            } else {
                a = GooglePlayServicesUtil.getRemoteContext(context);
            }
        }
        return a;
    }
}
