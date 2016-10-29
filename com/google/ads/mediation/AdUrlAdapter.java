package com.google.ads.mediation;

import android.os.Bundle;
import com.google.android.gms.common.annotation.KeepName;
import ij;
import il;
import in;

@KeepName
public final class AdUrlAdapter extends a implements ij, il, in {
    protected Bundle a(Bundle bundle, Bundle bundle2) {
        if (bundle == null) {
            bundle = new Bundle();
        }
        bundle.putBundle("sdk_less_server_data", bundle2);
        bundle.putBoolean("_noRefresh", true);
        return bundle;
    }

    public String a(Bundle bundle) {
        return "adurl";
    }
}
