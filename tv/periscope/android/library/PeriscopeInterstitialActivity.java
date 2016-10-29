package tv.periscope.android.library;

import android.app.Activity;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.view.View;
import tv.periscope.android.view.TosView;

/* compiled from: Twttr */
public class PeriscopeInterstitialActivity extends Activity {
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(m.ps__interstitial_activity);
        ((TosView) findViewById(k.tos_line)).a(o.ps__interstitial_tos, h.ps__dark_blue, new d(this), new e(this));
    }

    public void onBackPressed() {
        setResult(3309);
        super.onBackPressed();
    }

    public void onCancelClick(View view) {
        onBackPressed();
    }

    public void onInstallClick(View view) {
        Uri parse = Uri.parse("https://b.pscp.tv/g97c");
        if (!(getIntent() == null || getIntent().getParcelableExtra("create_broadcast") == null)) {
            parse = (Uri) getIntent().getParcelableExtra("create_broadcast");
        }
        setResult(3310, new Intent("android.intent.action.VIEW", parse));
        finish();
    }
}
