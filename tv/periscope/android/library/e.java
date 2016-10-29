package tv.periscope.android.library;

import android.content.Intent;
import android.net.Uri;
import android.view.View;
import android.view.View.OnClickListener;

/* compiled from: Twttr */
class e implements OnClickListener {
    final /* synthetic */ PeriscopeInterstitialActivity a;

    e(PeriscopeInterstitialActivity periscopeInterstitialActivity) {
        this.a = periscopeInterstitialActivity;
    }

    public void onClick(View view) {
        this.a.startActivity(new Intent("android.intent.action.VIEW", Uri.parse(this.a.getString(o.ps__pp_url))));
    }
}
