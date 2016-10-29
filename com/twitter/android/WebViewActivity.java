package com.twitter.android;

import android.app.ProgressDialog;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.net.Uri;
import android.os.Bundle;
import android.preference.PreferenceManager;
import android.support.v7.recyclerview.BuildConfig;
import android.view.LayoutInflater;
import android.view.View;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.widget.LinearLayout;
import com.twitter.android.client.OpenUriHelper;
import com.twitter.android.client.o;
import com.twitter.android.util.bz;
import com.twitter.android.widget.TurnOffReadabilityFragment;
import com.twitter.app.common.base.TwitterFragmentActivity;
import com.twitter.app.common.base.t;
import com.twitter.internal.android.widget.ToolBar;
import com.twitter.internal.network.HttpOperation.RequestMethod;
import com.twitter.library.client.navigation.ac;
import com.twitter.library.network.an;
import com.twitter.library.network.w;
import com.twitter.library.scribe.TwitterScribeLog;
import com.twitter.library.util.aq;
import com.twitter.model.account.OAuthToken;
import com.twitter.util.n;
import defpackage.bbu;
import defpackage.bca;
import defpackage.bcx;
import defpackage.bdj;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import org.apache.http.message.BasicNameValuePair;

/* compiled from: Twttr */
public class WebViewActivity extends TwitterFragmentActivity {
    protected WebView a;
    protected boolean b;
    private String c;
    private ToolBar d;

    public WebViewActivity() {
        this.b = true;
    }

    public t a(Bundle bundle, t tVar) {
        tVar.b(6);
        tVar.d(true);
        tVar.d(2130969540);
        tVar.c(false);
        return tVar;
    }

    protected void onResume() {
        super.onResume();
        if (this.b) {
            this.d.d();
        } else {
            this.d.e();
        }
    }

    public void b(Bundle bundle, t tVar) {
        ProgressDialog show;
        Resources resources = getResources();
        Intent intent = getIntent();
        Uri data = intent.getData();
        Bundle extras = intent.getExtras();
        OAuthToken oAuthToken = (OAuthToken) intent.getParcelableExtra("token");
        HashMap hashMap = (HashMap) intent.getSerializableExtra("headers");
        HashMap hashMap2 = (HashMap) intent.getSerializableExtra("com.twitter.android.EXTRA_POST_PARAMS");
        if (OpenUriHelper.b((Context) this)) {
            show = ProgressDialog.show(this, BuildConfig.VERSION_NAME, getString(2131362928), true, true, new yf(this));
        } else {
            show = null;
        }
        this.a = (WebView) findViewById(bcx.webview);
        WebSettings settings = this.a.getSettings();
        settings.setSaveFormData(false);
        boolean z = extras == null || !extras.getBoolean("set_disable_javascript");
        settings.setJavaScriptEnabled(z);
        settings.setAllowFileAccess(false);
        this.a.setWebViewClient(new yg(this, show, resources, data, oAuthToken, hashMap));
        if (bundle != null) {
            this.c = bundle.getString("url");
        } else if (hashMap2 != null) {
            this.b = true;
            List arrayList = new ArrayList();
            for (Entry entry : hashMap2.entrySet()) {
                String str = (String) entry.getKey();
                String str2 = (String) entry.getValue();
                arrayList.add(new BasicNameValuePair(str, str2));
                if ("url".equals(str.trim())) {
                    this.c = str2;
                }
            }
            bbu.a(new TwitterScribeLog(aa().c().g()).b("quick_read::::impression"));
            aq.a(this.a, data.toString(), aq.a(arrayList).getBytes());
        } else {
            X().e();
            Y().h();
            this.b = false;
            this.c = data.toString();
            aq.a(this.a, data.toString(), a(oAuthToken, data, bz.a(this.c), hashMap));
        }
    }

    public boolean onSearchRequested() {
        return false;
    }

    Map<String, String> a(OAuthToken oAuthToken, Uri uri, boolean z, Map<String, String> map) {
        Map a = an.a((Context) this).a(n.a(uri.toString()));
        if (oAuthToken != null && z) {
            a.put("Authorization", new w(oAuthToken).a(RequestMethod.GET, n.a(uri.toString()), null, 0));
            if (map != null) {
                a.putAll(map);
            }
        }
        return a;
    }

    public boolean a(com.twitter.library.client.navigation.w wVar) {
        super.a(wVar);
        ToolBar j = wVar.j();
        this.d = j;
        if (this.c != null) {
            wVar.a(2132017182);
            View view = (LinearLayout) LayoutInflater.from(this).inflate(2130968994, null);
            bca bca = new bca(j);
            bca.a(view);
            bca.c(2);
            Collection arrayList = new ArrayList();
            arrayList.add(bca);
            j.a(arrayList);
        }
        return true;
    }

    public boolean a(ac acVar) {
        switch (acVar.a()) {
            case 2131953469:
                bbu.a(new TwitterScribeLog(aa().c().g()).b("settings::::disable_quick_read"));
                PreferenceManager.getDefaultSharedPreferences(this).edit().putBoolean("readability_mode", false).apply();
                TurnOffReadabilityFragment.a(this.c, this).show(getSupportFragmentManager(), null);
                return true;
            default:
                return super.a(acVar);
        }
    }

    public int b(com.twitter.library.client.navigation.w wVar) {
        ToolBar j = wVar.j();
        j.a(2131953426).b(false);
        j.a(2131953425).b(false);
        return super.b(wVar);
    }

    public void openBrowser(View view) {
        if (this.c != null) {
            bbu.a(new TwitterScribeLog(aa().c().g()).b("quick_read::::open_in_browser"));
            o yhVar = new yh(this, this.c);
            if (bdj.a((Context) this).g()) {
                OpenUriHelper.a((Context) this, yhVar);
            } else {
                yhVar.a();
            }
        }
    }

    protected void onRestoreInstanceState(Bundle bundle) {
        super.onRestoreInstanceState(bundle);
        this.a.restoreState(bundle);
    }

    protected void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        this.a.saveState(bundle);
        bundle.putString("url", this.c);
    }
}
