package com.twitter.android.trends;

import android.content.Intent;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import com.twitter.app.common.base.TwitterFragmentActivity;
import com.twitter.app.common.base.t;
import com.twitter.library.api.TwitterLocation;
import com.twitter.library.client.d;

/* compiled from: Twttr */
public class TrendsLocationsActivity extends TwitterFragmentActivity implements d {
    private TrendsLocationFragment a;

    public t a(Bundle bundle, t tVar) {
        tVar.b(14);
        tVar.a(false);
        return tVar;
    }

    public void b(Bundle bundle, t tVar) {
        super.b(bundle, tVar);
        Fragment findFragmentByTag = getSupportFragmentManager().findFragmentByTag("trends_location_fragment");
        if (findFragmentByTag != null) {
            this.a = (TrendsLocationFragment) findFragmentByTag;
        } else {
            this.a = new TrendsLocationFragment();
            getSupportFragmentManager().beginTransaction().add(2131951923, this.a, "trends_location_fragment").commit();
        }
        this.a.a((d) this);
    }

    protected void onDestroy() {
        this.a.a(null);
        super.onDestroy();
    }

    public void a(Bundle bundle, d dVar) {
        super.a(bundle, dVar);
        h(false);
    }

    public void a(TwitterLocation twitterLocation) {
        setResult(-1, new Intent().putExtra("woeid", twitterLocation.d()).putExtra("loc_name", twitterLocation.a()));
        finish();
    }
}
