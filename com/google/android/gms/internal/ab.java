package com.google.android.gms.internal;

import android.accounts.Account;
import android.os.Bundle;
import android.os.IInterface;
import android.os.RemoteException;
import com.google.android.gms.auth.AccountChangeEventsRequest;
import com.google.android.gms.auth.AccountChangeEventsResponse;

public interface ab extends IInterface {
    Bundle a(Account account) throws RemoteException;

    Bundle a(Account account, String str, Bundle bundle) throws RemoteException;

    Bundle a(Bundle bundle) throws RemoteException;

    Bundle a(String str, Bundle bundle) throws RemoteException;

    Bundle a(String str, String str2, Bundle bundle) throws RemoteException;

    AccountChangeEventsResponse a(AccountChangeEventsRequest accountChangeEventsRequest) throws RemoteException;
}
