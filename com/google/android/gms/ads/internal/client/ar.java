package com.google.android.gms.ads.internal.client;

import android.os.IInterface;
import android.os.RemoteException;
import com.google.android.gms.ads.internal.reward.client.g;
import com.google.android.gms.dynamic.j;
import com.google.android.gms.internal.de;
import com.google.android.gms.internal.mo;
import com.google.android.gms.internal.na;

public interface ar extends IInterface {
    j a() throws RemoteException;

    void a(AdSizeParcel adSizeParcel) throws RemoteException;

    void a(ac acVar) throws RemoteException;

    void a(af afVar) throws RemoteException;

    void a(ax axVar) throws RemoteException;

    void a(ba baVar) throws RemoteException;

    void a(g gVar) throws RemoteException;

    void a(de deVar) throws RemoteException;

    void a(mo moVar) throws RemoteException;

    void a(na naVar, String str) throws RemoteException;

    void a(String str) throws RemoteException;

    void a(boolean z) throws RemoteException;

    boolean a(AdRequestParcel adRequestParcel) throws RemoteException;

    void b() throws RemoteException;

    boolean c() throws RemoteException;

    void d() throws RemoteException;

    void d_() throws RemoteException;

    void f() throws RemoteException;

    void g() throws RemoteException;

    void h() throws RemoteException;

    AdSizeParcel i() throws RemoteException;

    String j() throws RemoteException;

    boolean k() throws RemoteException;
}
