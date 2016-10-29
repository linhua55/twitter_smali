package com.google.android.gms.internal;

import android.os.IInterface;
import android.os.RemoteException;
import com.google.android.gms.common.api.Status;

public interface um extends IInterface {
    void a(Status status) throws RemoteException;
}
