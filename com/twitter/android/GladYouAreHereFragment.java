package com.twitter.android;

import android.app.Activity;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.CheckBox;
import android.widget.TextView;
import bbu;
import buc;
import cbx;
import com.twitter.android.dialog.c;
import com.twitter.config.d;
import com.twitter.library.client.AbsFragment;
import com.twitter.library.scribe.TwitterScribeLog;
import com.twitter.util.object.e;
import defpackage.bcu;

/* compiled from: Twttr */
public class GladYouAreHereFragment extends AbsFragment implements OnClickListener {
    private kn a;
    private qj b;
    private CheckBox c;
    private boolean d;
    private boolean e;

    public View a(LayoutInflater layoutInflater, Bundle bundle) {
        boolean z = cbx.a() && d.a("people_discovery_allow_nux_live_sync_opt_in_enabled");
        this.e = z;
        View inflate = layoutInflater.inflate(2130968852, null);
        inflate.findViewById(2131952523).setOnClickListener(this);
        this.c = (CheckBox) inflate.findViewById(2131952524);
        this.d = qh.a(o());
        if (this.e) {
            this.c.setText(2131363807);
            TextView textView = (TextView) e.a(inflate.findViewById(2131952525));
            c.a(getContext(), textView, bcu.app_background, "phone100_glad_you_are_here");
            textView.setVisibility(0);
        }
        return inflate;
    }

    public void onAttach(Activity activity) {
        super.onAttach(activity);
        this.a = (kn) activity;
        this.b = (qj) activity;
    }

    public void onClick(View view) {
        if (view.getId() == 2131952523) {
            this.a.b();
        }
    }

    public void b() {
        boolean isChecked = this.c.isChecked();
        TwitterScribeLog twitterScribeLog = new TwitterScribeLog(aT().g());
        String[] strArr = new String[5];
        strArr[0] = "phone100_glad_you_are_here";
        strArr[1] = "form";
        strArr[2] = qh.a(this.d);
        strArr[3] = null;
        strArr[4] = isChecked ? "opt_in" : "opt_out";
        bbu.a(twitterScribeLog.b(strArr));
        this.b.e(isChecked);
        if (this.e && isChecked) {
            buc.a(getContext(), (String) e.a(aT().e()), 2);
            this.b.f(true);
        }
        this.a.u_();
    }
}
