package com.google.android.gms.ads.internal.client;

import android.os.RemoteException;
import com.google.android.gms.ads.internal.util.client.a;
import com.google.android.gms.ads.internal.util.client.b;

class i extends aj {
    final /* synthetic */ g a;

    private i(g gVar) {
        this.a = gVar;
    }

    public void a(AdRequestParcel adRequestParcel) throws RemoteException {
        b.b("This app is using a lightweight version of the Google Mobile Ads SDK that requires the latest Google Play services to be installed, but Google Play services is either missing or out of date.");
        a.a.post(new j(this));
    }

    public boolean a() throws RemoteException {
        return false;
    }

    public String b() throws RemoteException {
        return null;
    }
}
