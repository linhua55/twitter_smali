package com.twitter.android;

import android.app.Activity;
import android.net.Uri;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import com.twitter.app.common.base.BaseFragment;
import com.twitter.app.common.base.g;
import org.apache.http.impl.client.DefaultHttpClient;

/* compiled from: Twttr */
public class RedirectServiceFragment extends BaseFragment {
    private na a;

    public void onAttach(Activity activity) {
        super.onAttach(activity);
        this.a = (na) activity;
    }

    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setRetainInstance(true);
        g o = o();
        String f = o.f("redirect_uri");
        if (f != null) {
            new mz(this.a, new DefaultHttpClient(), Uri.parse(f), o.a("wait_for_response", false)).execute(new Void[0]);
        }
    }

    public View a(LayoutInflater layoutInflater, Bundle bundle) {
        return layoutInflater.inflate(2130969247, null);
    }

    public void onDetach() {
        super.onDetach();
        this.a = null;
    }
}
