package com.twitter.android.ads;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.view.View;
import android.webkit.WebView;
import com.twitter.android.client.TwitterWebViewActivity;
import com.twitter.app.common.base.t;
import com.twitter.internal.android.widget.ToolBar;
import com.twitter.internal.android.widget.ToolBar.LayoutParams;
import com.twitter.util.aj;

/* compiled from: Twttr */
public class AdsCompanionWebViewActivity extends TwitterWebViewActivity {
    public static Intent a(Context context) {
        return new Intent(context, AdsCompanionWebViewActivity.class).setData(Uri.parse(context.getString(2131364273)));
    }

    public static Intent a(Context context, long j) {
        return new Intent(context, AdsCompanionWebViewActivity.class).setData(Uri.parse(context.getString(2131364272, new Object[]{Long.valueOf(j)})));
    }

    public t a(Bundle bundle, t tVar) {
        super.a(bundle, tVar);
        tVar.b(14);
        tVar.b(false);
        return tVar;
    }

    public void b(Bundle bundle, t tVar) {
        super.b(bundle, tVar);
        View inflate = getLayoutInflater().inflate(2130968623, null, false);
        ToolBar X = X();
        if (X != null) {
            X.a(inflate, new LayoutParams(5));
        }
        inflate.findViewById(2131951937).setOnClickListener(new d(this));
        Uri data = getIntent().getData();
        setTitle(2131361881);
        a(data.toString());
    }

    protected void a(WebView webView, String str) {
        CharSequence title = webView.getTitle();
        if (aj.b(title)) {
            setTitle(title);
        }
    }

    public void onBackPressed() {
        if (f()) {
            i();
        } else {
            super.onBackPressed();
        }
    }

    protected void o() {
        if (f()) {
            i();
        } else {
            super.o();
        }
    }
}
