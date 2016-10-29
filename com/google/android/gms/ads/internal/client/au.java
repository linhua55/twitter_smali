package com.google.android.gms.ads.internal.client;

import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import com.google.android.gms.dynamic.j;
import com.google.android.gms.internal.kd;

public interface au extends IInterface {
    IBinder a(j jVar, AdSizeParcel adSizeParcel, String str, kd kdVar, int i) throws RemoteException;

    IBinder a(j jVar, AdSizeParcel adSizeParcel, String str, kd kdVar, int i, int i2) throws RemoteException;
}
