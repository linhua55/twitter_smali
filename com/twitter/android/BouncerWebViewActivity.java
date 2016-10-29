package com.twitter.android;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.webkit.WebView;
import com.twitter.android.client.TwitterWebViewActivity;
import com.twitter.app.common.base.t;
import com.twitter.app.common.util.c;
import com.twitter.app.common.util.f;
import com.twitter.config.d;
import com.twitter.internal.android.widget.ToolBar;
import com.twitter.library.client.Session;
import com.twitter.library.client.az;
import com.twitter.library.client.navigation.ac;
import com.twitter.library.client.navigation.w;
import com.twitter.library.network.an;
import com.twitter.library.scribe.TwitterScribeLog;
import com.twitter.library.service.aa;
import com.twitter.util.aj;
import defpackage.bbu;
import defpackage.bca;
import defpackage.bpo;
import java.net.URI;
import java.net.URISyntaxException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import tv.periscope.chatman.api.WireMessage;

/* compiled from: Twttr */
public class BouncerWebViewActivity extends TwitterWebViewActivity {
    private boolean a;
    private boolean b;
    private ToolBar c;

    public BouncerWebViewActivity() {
        this.a = false;
        this.b = false;
    }

    public static void a(Context context, String str, boolean z) {
        if (f.a().c() && !(c.a().b() instanceof PasswordResetActivity)) {
            context.startActivity(b(context, str, z));
        }
    }

    public static Intent a(Context context, aa aaVar) {
        return b(context, an.b(aaVar), an.c(aaVar));
    }

    private static Intent b(Context context, String str, boolean z) {
        Intent intent = new Intent(context, BouncerWebViewActivity.class);
        intent.putExtra("bounce_location", str);
        intent.putExtra("bouncer_skippable", z);
        intent.setFlags(268435456);
        return intent;
    }

    static boolean a(Context context, Uri uri) {
        try {
            return a(context, new URI(uri.toString()));
        } catch (URISyntaxException e) {
            return false;
        }
    }

    static boolean a(Context context, URI uri) {
        List c = d.c("bouncer_url_whitelist_entrances");
        String string = context.getString(2131364298);
        String toLowerCase = uri.getHost().toLowerCase();
        String toLowerCase2 = uri.getPath().toLowerCase();
        return context.getString(2131364412).equals(toLowerCase) && (c.contains(toLowerCase2) || string.equals(toLowerCase2));
    }

    public t a(Bundle bundle, t tVar) {
        t a = super.a(bundle, tVar);
        if (getIntent().getBooleanExtra("bouncer_skippable", false)) {
            a.b(6);
        } else {
            a.b(2);
        }
        return a;
    }

    @SuppressLint({"SetJavaScriptEnabled"})
    public void b(Bundle bundle, t tVar) {
        super.b(bundle, tVar);
        Intent intent = getIntent();
        this.b = intent.getBooleanExtra("bouncer_skippable", false);
        String stringExtra = intent.getStringExtra("bounce_location");
        if (stringExtra == null) {
            stringExtra = getString(2131364298);
        }
        try {
            URI resolve = new URI(getString(2131364415)).resolve(stringExtra);
            if (a((Context) this, resolve)) {
                a(resolve.toString());
            } else {
                finish();
            }
        } catch (URISyntaxException e) {
            finish();
        }
    }

    public boolean a(w wVar) {
        super.a(wVar);
        this.c = wVar.j();
        j();
        return true;
    }

    public boolean a(ac acVar) {
        Intent m = acVar.m();
        if (m == null) {
            return super.a(acVar);
        }
        int intExtra = m.getIntExtra("extra_request_code", -1);
        if (intExtra > 0) {
            if (intExtra == 1) {
                bbu.a(new TwitterScribeLog(aa().c().g()).b("bouncer:::sign_out:click"));
            }
            startActivityForResult(m, intExtra);
            return true;
        }
        startActivity(m);
        return true;
    }

    protected void onActivityResult(int i, int i2, Intent intent) {
        switch (i) {
            case WireMessage.WIRE_CHAT /*1*/:
                if (i2 != -1) {
                    return;
                }
                if (intent.getBooleanExtra("is_last", false)) {
                    DispatchActivity.a((Activity) this);
                } else {
                    finish();
                }
            default:
                super.onActivityResult(i, i2, intent);
        }
    }

    protected void onStart() {
        super.onStart();
        if (this.a) {
            e();
        }
        this.a = true;
    }

    public void onBackPressed() {
        if (this.b) {
            super.onBackPressed();
            return;
        }
        Intent intent = new Intent("android.intent.action.MAIN");
        intent.addCategory("android.intent.category.HOME");
        intent.setFlags(268435456);
        startActivity(intent);
    }

    public void onDestroy() {
        Session c = aa().c();
        if (!(c.g() == 0 && c.e() == null)) {
            az.a((Context) this).a(new bpo((Context) this, c, c.g(), c.e()));
        }
        super.onDestroy();
    }

    private void j() {
        this.c.b();
        Collection arrayList = new ArrayList();
        bca bca = new bca(this.c);
        bca.a(0);
        bca.d(2131362755);
        bca.a(new Intent("android.intent.action.VIEW", Uri.parse(getString(2131364287))));
        arrayList.add(bca);
        bca bca2 = new bca(this.c);
        Intent putExtra = new Intent(this, RemoveAccountDialogActivity.class).putExtra("RemoveAccountDialogActivity_account_name", ab().e()).putExtra("extra_request_code", 1);
        bca2.d(2131362934);
        bca2.a(1);
        bca2.a(putExtra);
        arrayList.add(bca2);
        this.c.a(arrayList);
    }

    private static boolean a(JSONObject jSONObject) throws JSONException {
        return "href-action".equals(jSONObject.optString("data-action-type"));
    }

    private static boolean b(JSONObject jSONObject) throws JSONException {
        return "native-action".equals(jSONObject.optString("data-action-type"));
    }

    private static boolean c(JSONObject jSONObject) throws JSONException {
        return "signout".equals(jSONObject.optString("data-action-id"));
    }

    private static boolean d(JSONObject jSONObject) throws JSONException {
        return "dismiss".equals(jSONObject.optString("data-action-id"));
    }

    private List<bca> a(JSONArray jSONArray) throws JSONException {
        int i = 0;
        List<bca> arrayList = new ArrayList();
        boolean z = false;
        while (i < jSONArray.length()) {
            JSONObject jSONObject = jSONArray.getJSONObject(i);
            CharSequence optString = jSONObject.optString("content");
            bca bca;
            if (a(jSONObject)) {
                CharSequence optString2 = jSONObject.optString("data-href");
                if (!(aj.a(optString2) || aj.a(optString))) {
                    bca = new bca(this.c);
                    bca.a(optString);
                    bca.a(new Intent("android.intent.action.VIEW", Uri.parse(optString2)));
                    bca.a(i);
                    arrayList.add(bca);
                }
            } else if (b(jSONObject)) {
                if (c(jSONObject)) {
                    Intent putExtra = new Intent(this, RemoveAccountDialogActivity.class).putExtra("RemoveAccountDialogActivity_account_name", ab().e()).putExtra("extra_request_code", 1);
                    bca = new bca(this.c);
                    if (aj.a(optString)) {
                        bca.d(2131362934);
                    } else {
                        bca.a(optString);
                    }
                    bca.a(putExtra);
                    bca.a(i);
                    arrayList.add(bca);
                } else if (d(jSONObject)) {
                    z = true;
                }
            }
            i++;
        }
        this.b = z;
        if (this.b) {
            this.c.b(4);
        } else {
            this.c.c(4);
        }
        return arrayList;
    }

    @TargetApi(19)
    @SuppressLint({"SetJavaScriptEnabled"})
    protected void a(WebView webView, String str) {
        if (VERSION.SDK_INT >= 19) {
            String str2 = "(function() {  var keys = ['name', 'content', 'data-action-type',               'data-is-external', 'data-href', 'data-action-id'];   var metaArray = $('meta[name=\"web-view-action\"');  var results = $.map(metaArray, function(metaObj) { var result = {}; $.map(keys,                 function(key){ if (metaObj.hasAttribute(key))                 { result[key] = metaObj.getAttribute(key);}});  return result; });  return results; })()";
            webView.evaluateJavascript("(function() {  var keys = ['name', 'content', 'data-action-type',               'data-is-external', 'data-href', 'data-action-id'];   var metaArray = $('meta[name=\"web-view-action\"');  var results = $.map(metaArray, function(metaObj) { var result = {}; $.map(keys,                 function(key){ if (metaObj.hasAttribute(key))                 { result[key] = metaObj.getAttribute(key);}});  return result; });  return results; })()", new au(this));
        }
    }
}
