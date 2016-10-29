package com.twitter.android.trends;

import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.view.LayoutInflater;
import android.view.View;
import com.twitter.android.SelectionFragment;
import com.twitter.android.autocomplete.adapters.i;
import com.twitter.android.client.bu;
import com.twitter.library.api.TwitterLocation;
import sy;
import tc;

/* compiled from: Twttr */
public class TrendsLocationFragment extends SelectionFragment<String, TwitterLocation> {
    private d a;

    public TrendsLocationFragment() {
        super(new e(null));
    }

    public void a(d dVar) {
        this.a = dVar;
    }

    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Context activity = getActivity();
        this.g = new tc(new sy(activity, this.d.c(), (long) bu.h(), new Handler(Looper.getMainLooper())));
        this.h = new i(activity);
        activity.setTitle(2131363960);
    }

    public void onStart() {
        super.onStart();
        p();
    }

    protected View a(LayoutInflater layoutInflater) {
        return super.a(layoutInflater, 2130969456);
    }

    protected void a(long j, String str, TwitterLocation twitterLocation) {
        if (this.a != null) {
            this.a.a(twitterLocation);
        }
    }

    public boolean a(String str, long j, TwitterLocation twitterLocation, int i) {
        a(j, twitterLocation.a(), twitterLocation);
        return true;
    }
}
