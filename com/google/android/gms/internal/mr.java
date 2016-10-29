package com.google.android.gms.internal;

import android.content.Intent;
import android.os.IInterface;
import android.os.RemoteException;

public interface mr extends IInterface {
    void a() throws RemoteException;

    void a(int i, int i2, Intent intent) throws RemoteException;

    void b() throws RemoteException;
}
