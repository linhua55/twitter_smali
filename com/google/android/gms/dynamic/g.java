package com.google.android.gms.dynamic;

import android.content.Context;
import android.view.View;
import android.view.View.OnClickListener;
import com.google.android.gms.common.GooglePlayServicesUtil;

final class g implements OnClickListener {
    final /* synthetic */ Context a;
    final /* synthetic */ int b;

    g(Context context, int i) {
        this.a = context;
        this.b = i;
    }

    public void onClick(View view) {
        this.a.startActivity(GooglePlayServicesUtil.zzbv(this.b));
    }
}
