package com.google.android.gms.location.internal;

import android.app.PendingIntent;
import android.location.Location;
import android.os.IInterface;
import android.os.RemoteException;
import com.google.android.gms.common.api.internal.am;
import com.google.android.gms.location.ActivityRecognitionResult;
import com.google.android.gms.location.GeofencingRequest;
import com.google.android.gms.location.GestureRequest;
import com.google.android.gms.location.LocationAvailability;
import com.google.android.gms.location.LocationRequest;
import com.google.android.gms.location.LocationSettingsRequest;
import java.util.List;

public interface r extends IInterface {
    Location a() throws RemoteException;

    ActivityRecognitionResult a(String str) throws RemoteException;

    void a(long j, boolean z, PendingIntent pendingIntent) throws RemoteException;

    void a(PendingIntent pendingIntent) throws RemoteException;

    void a(PendingIntent pendingIntent, am amVar) throws RemoteException;

    void a(PendingIntent pendingIntent, o oVar, String str) throws RemoteException;

    void a(Location location) throws RemoteException;

    void a(Location location, int i) throws RemoteException;

    void a(GeofencingRequest geofencingRequest, PendingIntent pendingIntent, o oVar) throws RemoteException;

    void a(GestureRequest gestureRequest, PendingIntent pendingIntent, am amVar) throws RemoteException;

    void a(LocationRequest locationRequest, PendingIntent pendingIntent) throws RemoteException;

    void a(LocationRequest locationRequest, com.google.android.gms.location.r rVar) throws RemoteException;

    void a(LocationRequest locationRequest, com.google.android.gms.location.r rVar, String str) throws RemoteException;

    void a(LocationSettingsRequest locationSettingsRequest, u uVar, String str) throws RemoteException;

    void a(LocationRequestInternal locationRequestInternal, PendingIntent pendingIntent) throws RemoteException;

    void a(LocationRequestInternal locationRequestInternal, com.google.android.gms.location.r rVar) throws RemoteException;

    void a(LocationRequestUpdateData locationRequestUpdateData) throws RemoteException;

    void a(l lVar) throws RemoteException;

    void a(o oVar, String str) throws RemoteException;

    void a(com.google.android.gms.location.r rVar) throws RemoteException;

    void a(List<ParcelableGeofence> list, PendingIntent pendingIntent, o oVar, String str) throws RemoteException;

    void a(boolean z) throws RemoteException;

    void a(String[] strArr, o oVar, String str) throws RemoteException;

    Location b(String str) throws RemoteException;

    void b(PendingIntent pendingIntent) throws RemoteException;

    void b(PendingIntent pendingIntent, am amVar) throws RemoteException;

    LocationAvailability c(String str) throws RemoteException;

    void c(PendingIntent pendingIntent, am amVar) throws RemoteException;

    void d(PendingIntent pendingIntent, am amVar) throws RemoteException;

    void e(PendingIntent pendingIntent, am amVar) throws RemoteException;
}
