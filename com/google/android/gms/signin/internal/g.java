package com.google.android.gms.signin.internal;

import android.accounts.Account;
import android.os.IInterface;
import android.os.RemoteException;
import com.google.android.gms.common.internal.AuthAccountRequest;
import com.google.android.gms.common.internal.ResolveAccountRequest;
import com.google.android.gms.common.internal.as;
import com.google.android.gms.common.internal.bc;

public interface g extends IInterface {
    void a(int i) throws RemoteException;

    void a(int i, Account account, d dVar) throws RemoteException;

    void a(AuthAccountRequest authAccountRequest, d dVar) throws RemoteException;

    void a(ResolveAccountRequest resolveAccountRequest, bc bcVar) throws RemoteException;

    void a(as asVar, int i, boolean z) throws RemoteException;

    void a(CheckServerAuthResult checkServerAuthResult) throws RemoteException;

    void a(RecordConsentRequest recordConsentRequest, d dVar) throws RemoteException;

    void a(SignInRequest signInRequest, d dVar) throws RemoteException;

    void a(d dVar) throws RemoteException;

    void a(boolean z) throws RemoteException;
}
