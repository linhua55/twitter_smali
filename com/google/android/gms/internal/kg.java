package com.google.android.gms.internal;

import android.os.Bundle;
import android.os.IInterface;
import android.os.RemoteException;
import com.google.android.gms.ads.internal.client.AdRequestParcel;
import com.google.android.gms.ads.internal.client.AdSizeParcel;
import com.google.android.gms.ads.internal.formats.NativeAdOptionsParcel;
import com.google.android.gms.ads.internal.reward.mediation.client.a;
import com.google.android.gms.dynamic.j;
import java.util.List;

public interface kg extends IInterface {
    j a() throws RemoteException;

    void a(AdRequestParcel adRequestParcel, String str) throws RemoteException;

    void a(AdRequestParcel adRequestParcel, String str, String str2) throws RemoteException;

    void a(j jVar, AdRequestParcel adRequestParcel, String str, a aVar, String str2) throws RemoteException;

    void a(j jVar, AdRequestParcel adRequestParcel, String str, kj kjVar) throws RemoteException;

    void a(j jVar, AdRequestParcel adRequestParcel, String str, String str2, kj kjVar) throws RemoteException;

    void a(j jVar, AdRequestParcel adRequestParcel, String str, String str2, kj kjVar, NativeAdOptionsParcel nativeAdOptionsParcel, List<String> list) throws RemoteException;

    void a(j jVar, AdSizeParcel adSizeParcel, AdRequestParcel adRequestParcel, String str, kj kjVar) throws RemoteException;

    void a(j jVar, AdSizeParcel adSizeParcel, AdRequestParcel adRequestParcel, String str, String str2, kj kjVar) throws RemoteException;

    void b() throws RemoteException;

    void c() throws RemoteException;

    void d() throws RemoteException;

    void e() throws RemoteException;

    void f() throws RemoteException;

    boolean g() throws RemoteException;

    kq h() throws RemoteException;

    kt i() throws RemoteException;

    Bundle j() throws RemoteException;

    Bundle k() throws RemoteException;

    Bundle l() throws RemoteException;
}
