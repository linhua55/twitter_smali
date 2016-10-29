package com.twitter.android.widget;

import android.view.View;
import android.view.View.OnClickListener;
import android.widget.LinearLayout;

/* compiled from: Twttr */
class cu implements OnClickListener {
    final /* synthetic */ LinearLayout a;
    final /* synthetic */ NetworkPerformanceSimulatorPreference b;

    cu(NetworkPerformanceSimulatorPreference networkPerformanceSimulatorPreference, LinearLayout linearLayout) {
        this.b = networkPerformanceSimulatorPreference;
        this.a = linearLayout;
    }

    public void onClick(View view) {
        this.b.f = "Custom";
        this.b.e.setChecked(true);
        this.a.setVisibility(0);
    }
}
