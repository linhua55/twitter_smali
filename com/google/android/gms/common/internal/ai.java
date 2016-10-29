package com.google.android.gms.common.internal;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import android.support.annotation.BinderThread;
import android.util.Log;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.internal.ab$com.google.android.gms.common.internal.ac;

public final class ai extends ac {
    public final IBinder e;
    final /* synthetic */ ab f;

    @BinderThread
    public ai(ab abVar, int i, IBinder iBinder, Bundle bundle) {
        this.f = abVar;
        super(abVar, i, bundle);
        this.e = iBinder;
    }

    protected void a(ConnectionResult connectionResult) {
        if (this.f.y != null) {
            this.f.y.a(connectionResult);
        }
        this.f.a(connectionResult);
    }

    protected boolean a() {
        try {
            String interfaceDescriptor = this.e.getInterfaceDescriptor();
            if (this.f.b().equals(interfaceDescriptor)) {
                IInterface b = this.f.b(this.e);
                if (b == null || !this.f.a(2, 3, b)) {
                    return false;
                }
                Bundle c_ = this.f.c_();
                if (this.f.x != null) {
                    this.f.x.a(c_);
                }
                return true;
            }
            Log.e("GmsClient", "service descriptor mismatch: " + this.f.b() + " vs. " + interfaceDescriptor);
            return false;
        } catch (RemoteException e) {
            Log.w("GmsClient", "service probably died");
            return false;
        }
    }
}
