package defpackage;

import android.content.Context;
import android.util.Log;
import com.google.android.gms.common.GooglePlayServicesNotAvailableException;
import com.google.android.gms.common.GooglePlayServicesRepairableException;
import com.google.android.gms.common.f;
import com.google.android.gms.common.internal.bm;
import com.google.android.gms.common.n;
import java.lang.reflect.Method;

/* renamed from: ok */
public class ok {
    private static final f a;
    private static final Object b;
    private static Method c;

    static {
        a = f.b();
        b = new Object();
        c = null;
    }

    public static void a(Context context) throws GooglePlayServicesRepairableException, GooglePlayServicesNotAvailableException {
        bm.a(context, "Context must not be null");
        a.c(context);
        Context remoteContext = n.getRemoteContext(context);
        if (remoteContext == null) {
            Log.e("ProviderInstaller", "Failed to get remote context");
            throw new GooglePlayServicesNotAvailableException(8);
        }
        synchronized (b) {
            try {
                if (c == null) {
                    ok.b(remoteContext);
                }
                c.invoke(null, new Object[]{remoteContext});
            } catch (Exception e) {
                Log.e("ProviderInstaller", "Failed to install provider: " + e.getMessage());
                throw new GooglePlayServicesNotAvailableException(8);
            }
        }
    }

    public static void a(Context context, om omVar) {
        bm.a(context, "Context must not be null");
        bm.a(omVar, "Listener must not be null");
        bm.b("Must be called on the UI thread");
        new ol(context, omVar).execute(new Void[0]);
    }

    private static void b(Context context) throws ClassNotFoundException, NoSuchMethodException {
        c = context.getClassLoader().loadClass("com.google.android.gms.common.security.ProviderInstallerImpl").getMethod("insertProvider", new Class[]{Context.class});
    }
}
