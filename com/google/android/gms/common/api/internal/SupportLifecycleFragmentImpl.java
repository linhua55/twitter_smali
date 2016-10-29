package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.GooglePlayServicesUtil;
import com.google.android.gms.common.annotation.KeepName;
import com.google.android.gms.common.b;
import com.google.android.gms.common.f;

@KeepName
public class SupportLifecycleFragmentImpl extends zzw {
    protected b a() {
        return b.a();
    }

    protected void a(int i, ConnectionResult connectionResult) {
        GooglePlayServicesUtil.showErrorDialogFragment(connectionResult.c(), getActivity(), this, 2, this);
    }

    protected /* synthetic */ f b() {
        return a();
    }

    protected void b(int i, ConnectionResult connectionResult) {
        this.a = al.a(getActivity().getApplicationContext(), new a(this, a().a(getActivity(), this)));
    }
}
