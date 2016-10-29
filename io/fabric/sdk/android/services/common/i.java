package io.fabric.sdk.android.services.common;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import io.fabric.sdk.android.f;

/* compiled from: Twttr */
final class i implements IInterface {
    private final IBinder a;

    public boolean b() throws android.os.RemoteException {
        /* JADX: method processing error */
/*
        Error: java.lang.NullPointerException
	at jadx.core.dex.visitors.ssa.SSATransform.placePhi(SSATransform.java:82)
	at jadx.core.dex.visitors.ssa.SSATransform.process(SSATransform.java:50)
	at jadx.core.dex.visitors.ssa.SSATransform.visit(SSATransform.java:42)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:31)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:17)
	at jadx.core.ProcessClass.process(ProcessClass.java:37)
	at jadx.core.ProcessClass.processDependencies(ProcessClass.java:59)
	at jadx.core.ProcessClass.process(ProcessClass.java:42)
	at jadx.api.JadxDecompiler.processClass(JadxDecompiler.java:281)
	at jadx.api.JavaClass.decompile(JavaClass.java:59)
	at jadx.api.JadxDecompiler$1.run(JadxDecompiler.java:161)
*/
        /*
        r7 = this;
        r0 = 1;
        r1 = 0;
        r2 = android.os.Parcel.obtain();
        r3 = android.os.Parcel.obtain();
        r4 = "com.google.android.gms.ads.identifier.internal.IAdvertisingIdService";	 Catch:{ Exception -> 0x002d, all -> 0x0043 }
        r2.writeInterfaceToken(r4);	 Catch:{ Exception -> 0x002d, all -> 0x0043 }
        r4 = 1;	 Catch:{ Exception -> 0x002d, all -> 0x0043 }
        r2.writeInt(r4);	 Catch:{ Exception -> 0x002d, all -> 0x0043 }
        r4 = r7.a;	 Catch:{ Exception -> 0x002d, all -> 0x0043 }
        r5 = 2;	 Catch:{ Exception -> 0x002d, all -> 0x0043 }
        r6 = 0;	 Catch:{ Exception -> 0x002d, all -> 0x0043 }
        r4.transact(r5, r2, r3, r6);	 Catch:{ Exception -> 0x002d, all -> 0x0043 }
        r3.readException();	 Catch:{ Exception -> 0x002d, all -> 0x0043 }
        r4 = r3.readInt();	 Catch:{ Exception -> 0x002d, all -> 0x0043 }
        if (r4 == 0) goto L_0x002b;
    L_0x0024:
        r3.recycle();
        r2.recycle();
    L_0x002a:
        return r0;
    L_0x002b:
        r0 = r1;
        goto L_0x0024;
    L_0x002d:
        r0 = move-exception;
        r0 = io.fabric.sdk.android.f.h();	 Catch:{ Exception -> 0x002d, all -> 0x0043 }
        r4 = "Fabric";	 Catch:{ Exception -> 0x002d, all -> 0x0043 }
        r5 = "Could not get parcel from Google Play Service to capture Advertising limitAdTracking";	 Catch:{ Exception -> 0x002d, all -> 0x0043 }
        r0.a(r4, r5);	 Catch:{ Exception -> 0x002d, all -> 0x0043 }
        r3.recycle();
        r2.recycle();
        r0 = r1;
        goto L_0x002a;
    L_0x0043:
        r0 = move-exception;
        r3.recycle();
        r2.recycle();
        throw r0;
        */
        throw new UnsupportedOperationException("Method not decompiled: io.fabric.sdk.android.services.common.i.b():boolean");
    }

    public i(IBinder iBinder) {
        this.a = iBinder;
    }

    public IBinder asBinder() {
        return this.a;
    }

    public String a() throws RemoteException {
        Parcel obtain = Parcel.obtain();
        Parcel obtain2 = Parcel.obtain();
        String str = null;
        try {
            obtain.writeInterfaceToken("com.google.android.gms.ads.identifier.internal.IAdvertisingIdService");
            this.a.transact(1, obtain, obtain2, 0);
            obtain2.readException();
            str = obtain2.readString();
        } catch (Exception e) {
            f.h().a("Fabric", "Could not get parcel from Google Play Service to capture AdvertisingId");
        } finally {
            obtain2.recycle();
            obtain.recycle();
        }
        return str;
    }
}
