package com.google.android.gms.ads.identifier;

import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.content.pm.PackageManager.NameNotFoundException;
import android.util.Log;
import com.google.android.exoplayer.util.Util;
import com.google.android.exoplayer.util.extensions.Buffer;
import com.google.android.gms.common.GooglePlayServicesNotAvailableException;
import com.google.android.gms.common.GooglePlayServicesRepairableException;
import com.google.android.gms.common.d;
import com.google.android.gms.common.f;
import com.google.android.gms.common.internal.bm;
import com.google.android.gms.common.stats.b;
import com.google.android.gms.internal.ae;
import com.google.android.gms.internal.af;
import java.io.IOException;

public class AdvertisingIdClient {
    private final Context mContext;
    d zzoS;
    ae zzoT;
    boolean zzoU;
    Object zzoV;
    a zzoW;
    final long zzoX;

    public final class Info {
        private final String zzpc;
        private final boolean zzpd;

        public Info(String str, boolean z) {
            this.zzpc = str;
            this.zzpd = z;
        }

        public String getId() {
            return this.zzpc;
        }

        public boolean isLimitAdTrackingEnabled() {
            return this.zzpd;
        }

        public String toString() {
            return "{" + this.zzpc + "}" + this.zzpd;
        }
    }

    public AdvertisingIdClient(Context context) {
        this(context, 30000);
    }

    public AdvertisingIdClient(Context context, long j) {
        this.zzoV = new Object();
        bm.a(context);
        this.mContext = context;
        this.zzoU = false;
        this.zzoX = j;
    }

    public static Info getAdvertisingIdInfo(Context context) throws IOException, IllegalStateException, GooglePlayServicesNotAvailableException, GooglePlayServicesRepairableException {
        AdvertisingIdClient advertisingIdClient = new AdvertisingIdClient(context, -1);
        try {
            advertisingIdClient.zzb(false);
            Info info = advertisingIdClient.getInfo();
            return info;
        } finally {
            advertisingIdClient.finish();
        }
    }

    public static void setShouldSkipGmsCoreVersionCheck(boolean z) {
    }

    static ae zza(Context context, d dVar) throws IOException {
        try {
            return af.a(dVar.a());
        } catch (InterruptedException e) {
            throw new IOException("Interrupted exception");
        } catch (Throwable th) {
            IOException iOException = new IOException(th);
        }
    }

    private void zzaJ() {
        synchronized (this.zzoV) {
            if (this.zzoW != null) {
                this.zzoW.a();
                try {
                    this.zzoW.join();
                } catch (InterruptedException e) {
                }
            }
            if (this.zzoX > 0) {
                this.zzoW = new a(this, this.zzoX);
            }
        }
    }

    static d zzp(Context context) throws IOException, GooglePlayServicesNotAvailableException, GooglePlayServicesRepairableException {
        try {
            context.getPackageManager().getPackageInfo("com.android.vending", 0);
            switch (f.b().a(context)) {
                case Util.TYPE_DASH /*0*/:
                case Buffer.FLAG_DECODE_ONLY /*2*/:
                    ServiceConnection dVar = new d();
                    Intent intent = new Intent("com.google.android.gms.ads.identifier.service.START");
                    intent.setPackage("com.google.android.gms");
                    try {
                        if (b.a().a(context, intent, dVar, 1)) {
                            return dVar;
                        }
                        throw new IOException("Connection failure");
                    } catch (Throwable th) {
                        IOException iOException = new IOException(th);
                    }
                default:
                    throw new IOException("Google Play services not available");
            }
        } catch (NameNotFoundException e) {
            throw new GooglePlayServicesNotAvailableException(9);
        }
    }

    protected void finalize() throws Throwable {
        finish();
        super.finalize();
    }

    public void finish() {
        bm.c("Calling this from your main thread can lead to deadlock");
        synchronized (this) {
            if (this.mContext == null || this.zzoS == null) {
                return;
            }
            try {
                if (this.zzoU) {
                    b.a().a(this.mContext, this.zzoS);
                }
            } catch (Throwable e) {
                Log.i("AdvertisingIdClient", "AdvertisingIdClient unbindService failed.", e);
            }
            this.zzoU = false;
            this.zzoT = null;
            this.zzoS = null;
        }
    }

    public Info getInfo() throws IOException {
        Info info;
        bm.c("Calling this from your main thread can lead to deadlock");
        synchronized (this) {
            if (!this.zzoU) {
                synchronized (this.zzoV) {
                    if (this.zzoW == null || !this.zzoW.b()) {
                        throw new IOException("AdvertisingIdClient is not connected.");
                    }
                }
                try {
                    zzb(false);
                    if (!this.zzoU) {
                        throw new IOException("AdvertisingIdClient cannot reconnect.");
                    }
                } catch (Throwable e) {
                    Log.i("AdvertisingIdClient", "GMS remote exception ", e);
                    throw new IOException("Remote exception");
                } catch (Throwable e2) {
                    throw new IOException("AdvertisingIdClient cannot reconnect.", e2);
                }
            }
            bm.a(this.zzoS);
            bm.a(this.zzoT);
            info = new Info(this.zzoT.a(), this.zzoT.a(true));
        }
        zzaJ();
        return info;
    }

    public void start() throws IOException, IllegalStateException, GooglePlayServicesNotAvailableException, GooglePlayServicesRepairableException {
        zzb(true);
    }

    protected void zzb(boolean z) throws IOException, IllegalStateException, GooglePlayServicesNotAvailableException, GooglePlayServicesRepairableException {
        bm.c("Calling this from your main thread can lead to deadlock");
        synchronized (this) {
            if (this.zzoU) {
                finish();
            }
            this.zzoS = zzp(this.mContext);
            this.zzoT = zza(this.mContext, this.zzoS);
            this.zzoU = true;
            if (z) {
                zzaJ();
            }
        }
    }
}
