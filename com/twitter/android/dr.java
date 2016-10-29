package com.twitter.android;

import android.app.Activity;
import android.os.Bundle;
import android.support.v4.content.Loader;
import android.view.MotionEvent;
import android.view.View;
import android.widget.AdapterView;
import com.twitter.library.client.Session;
import com.twitter.library.widget.SlidingPanel;
import com.twitter.library.widget.UserView;

/* compiled from: Twttr */
public class dr extends xf {
    public /* bridge */ /* synthetic */ void a(UserView userView, long j, int i, int i2) {
        super.a(userView, j, i, i2);
    }

    public /* bridge */ /* synthetic */ void b() {
        super.b();
    }

    public /* bridge */ /* synthetic */ void b(Bundle bundle) {
        super.b(bundle);
    }

    public /* bridge */ /* synthetic */ boolean c() {
        return super.c();
    }

    public /* bridge */ /* synthetic */ void onClick(View view) {
        super.onClick(view);
    }

    public /* bridge */ /* synthetic */ Loader onCreateLoader(int i, Bundle bundle) {
        return super.onCreateLoader(i, bundle);
    }

    public /* bridge */ /* synthetic */ void onItemClick(AdapterView adapterView, View view, int i, long j) {
        super.onItemClick(adapterView, view, i, j);
    }

    public /* bridge */ /* synthetic */ void onLoaderReset(Loader loader) {
        super.onLoaderReset(loader);
    }

    public /* bridge */ /* synthetic */ boolean onTouch(View view, MotionEvent motionEvent) {
        return super.onTouch(view, motionEvent);
    }

    public dr(Activity activity, Session session, SlidingPanel slidingPanel) {
        super(activity, session, null, slidingPanel);
    }

    protected xs a() {
        return new ds(this.d, this.e, this, this.c, false);
    }
}
