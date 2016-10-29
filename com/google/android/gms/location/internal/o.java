package com.google.android.gms.location.internal;

import android.app.PendingIntent;
import android.os.IInterface;
import android.os.RemoteException;

public interface o extends IInterface {
    void a(int i, PendingIntent pendingIntent) throws RemoteException;

    void a(int i, String[] strArr) throws RemoteException;

    void b(int i, String[] strArr) throws RemoteException;
}
