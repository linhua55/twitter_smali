package com.google.android.gms.measurement.internal;

import android.os.IInterface;
import android.os.RemoteException;
import java.util.List;

public interface ax extends IInterface {
    List<UserAttributeParcel> a(AppMetadata appMetadata, boolean z) throws RemoteException;

    void a(AppMetadata appMetadata) throws RemoteException;

    void a(EventParcel eventParcel, AppMetadata appMetadata) throws RemoteException;

    void a(EventParcel eventParcel, String str, String str2) throws RemoteException;

    void a(UserAttributeParcel userAttributeParcel, AppMetadata appMetadata) throws RemoteException;

    void b(AppMetadata appMetadata) throws RemoteException;
}
