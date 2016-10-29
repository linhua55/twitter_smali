package com.twitter.android;

import android.app.Activity;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import com.twitter.android.client.bm;
import com.twitter.android.client.bn;
import com.twitter.app.common.base.g;
import com.twitter.library.client.AbsFragment;
import com.twitter.ui.widget.TwitterButton;
import com.twitter.ui.widget.TypefacesTextView;

/* compiled from: Twttr */
public class PinWaitingFragment extends AbsFragment implements OnClickListener, bn {
    private lx a;
    private boolean b;

    public void a() {
        super.a();
        if (this.b) {
            bm.a(this.T).a((bn) this);
        }
    }

    public void e() {
        if (this.b) {
            bm.a(this.T).b();
        }
        super.e();
    }

    public View a(LayoutInflater layoutInflater, Bundle bundle) {
        View inflate = layoutInflater.inflate(2130969534, null);
        inflate.findViewById(2131953387).setOnClickListener(this);
        TwitterButton twitterButton = (TwitterButton) inflate.findViewById(2131953388);
        twitterButton.setOnClickListener(this);
        g o = o();
        if (o.a("is_phone100_flow", false)) {
            twitterButton.setText(2131363304);
            ((TypefacesTextView) inflate.findViewById(2131953385)).setText(String.format(getString(2131363320), new Object[]{this.a.q()}));
            ((TypefacesTextView) inflate.findViewById(2131953386)).setText(2131363316);
        } else if (o.a("1fa_login", false)) {
            twitterButton.setText(2131362966);
            ((TypefacesTextView) inflate.findViewById(2131953385)).setText(getString(2131362980));
            ((TypefacesTextView) inflate.findViewById(2131953386)).setText(2131362981);
        }
        boolean a = lf.a().a(this.T, "android.permission.RECEIVE_SMS");
        if (o.a("should_intercept_pin", false) && a) {
            a = true;
        } else {
            a = false;
        }
        this.b = a;
        return inflate;
    }

    public void onAttach(Activity activity) {
        super.onAttach(activity);
        this.a = (lx) activity;
    }

    public void onClick(View view) {
        switch (view.getId()) {
            case 2131953387:
                this.a.U_();
            case 2131953388:
                this.a.p();
            default:
        }
    }

    public void a(String str) {
        this.a.a(str, 0);
    }
}
