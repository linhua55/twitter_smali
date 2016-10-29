package com.twitter.android.widget;

import android.view.View;
import android.view.View.OnClickListener;
import android.widget.LinearLayout;
import com.twitter.library.network.s;

/* compiled from: Twttr */
class ct implements OnClickListener {
    final /* synthetic */ s a;
    final /* synthetic */ String b;
    final /* synthetic */ LinearLayout c;
    final /* synthetic */ NetworkPerformanceSimulatorPreference d;

    ct(NetworkPerformanceSimulatorPreference networkPerformanceSimulatorPreference, s sVar, String str, LinearLayout linearLayout) {
        this.d = networkPerformanceSimulatorPreference;
        this.a = sVar;
        this.b = str;
        this.c = linearLayout;
    }

    public void onClick(View view) {
        this.d.c.setText(Integer.toString(this.a.b()));
        this.d.d.setText(Integer.toString(this.a.c()));
        this.d.f = this.b;
        this.d.e.setChecked(true);
        this.c.setVisibility(8);
    }
}
