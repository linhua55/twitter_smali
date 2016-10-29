package com.google.android.gms.ads.internal.request;

import android.os.IInterface;
import android.os.RemoteException;

public interface u extends IInterface {
    AdResponseParcel a(AdRequestInfoParcel adRequestInfoParcel) throws RemoteException;

    void a(AdRequestInfoParcel adRequestInfoParcel, x xVar) throws RemoteException;
}
