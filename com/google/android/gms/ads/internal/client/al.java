package com.google.android.gms.ads.internal.client;

import android.os.IInterface;
import android.os.RemoteException;
import com.google.android.gms.ads.internal.formats.NativeAdOptionsParcel;
import com.google.android.gms.internal.ed;
import com.google.android.gms.internal.eg;
import com.google.android.gms.internal.ej;
import com.google.android.gms.internal.em;

public interface al extends IInterface {
    ai a() throws RemoteException;

    void a(af afVar) throws RemoteException;

    void a(ba baVar) throws RemoteException;

    void a(NativeAdOptionsParcel nativeAdOptionsParcel) throws RemoteException;

    void a(ed edVar) throws RemoteException;

    void a(eg egVar) throws RemoteException;

    void a(String str, em emVar, ej ejVar) throws RemoteException;
}
