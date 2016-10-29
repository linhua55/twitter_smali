package tv.periscope.android.library;

import android.content.Intent;
import android.net.Uri;
import android.view.View;
import android.view.View.OnClickListener;

/* compiled from: Twttr */
class d implements OnClickListener {
    final /* synthetic */ PeriscopeInterstitialActivity a;

    d(PeriscopeInterstitialActivity periscopeInterstitialActivity) {
        this.a = periscopeInterstitialActivity;
    }

    public void onClick(View view) {
        this.a.startActivity(new Intent("android.intent.action.VIEW", Uri.parse(this.a.getString(o.ps__tos_url))));
    }
}
