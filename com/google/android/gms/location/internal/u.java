package com.google.android.gms.location.internal;

import android.os.IInterface;
import android.os.RemoteException;
import com.google.android.gms.location.LocationSettingsResult;

public interface u extends IInterface {
    void a(LocationSettingsResult locationSettingsResult) throws RemoteException;
}
