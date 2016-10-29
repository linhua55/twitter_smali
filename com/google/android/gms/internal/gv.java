package com.google.android.gms.internal;

import android.os.RemoteException;

class gv implements hl {
    final /* synthetic */ String a;
    final /* synthetic */ String b;
    final /* synthetic */ gu c;

    gv(gu guVar, String str, String str2) {
        this.c = guVar;
        this.a = str;
        this.b = str2;
    }

    public void a(hm hmVar) throws RemoteException {
        if (hmVar.b != null) {
            hmVar.b.a(this.a, this.b);
        }
    }
}
