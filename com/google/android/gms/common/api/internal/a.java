package com.google.android.gms.common.api.internal;

import android.app.Dialog;

class a extends al {
    final /* synthetic */ Dialog a;
    final /* synthetic */ SupportLifecycleFragmentImpl b;

    a(SupportLifecycleFragmentImpl supportLifecycleFragmentImpl, Dialog dialog) {
        this.b = supportLifecycleFragmentImpl;
        this.a = dialog;
    }

    protected void a() {
        this.b.c();
        this.a.dismiss();
    }
}
