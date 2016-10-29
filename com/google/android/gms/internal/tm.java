package com.google.android.gms.internal;

import android.annotation.TargetApi;
import android.app.AlertDialog.Builder;
import android.content.Context;
import android.os.Message;
import android.view.View;
import android.webkit.ConsoleMessage;
import android.webkit.GeolocationPermissions.Callback;
import android.webkit.JsPromptResult;
import android.webkit.JsResult;
import android.webkit.WebChromeClient;
import android.webkit.WebChromeClient.CustomViewCallback;
import android.webkit.WebStorage.QuotaUpdater;
import android.webkit.WebView;
import android.webkit.WebView.WebViewTransport;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.google.android.gms.ads.internal.ar;
import com.google.android.gms.ads.internal.overlay.zzd;
import com.google.android.gms.ads.internal.util.client.b;
import com.twitter.android.mx;
import tv.periscope.chatman.api.ControlMessage;
import tv.periscope.chatman.api.WireMessage;

@TargetApi(11)
@oi
public class tm extends WebChromeClient {
    private final sz a;

    public tm(sz szVar) {
        this.a = szVar;
    }

    private final Context a(WebView webView) {
        if (!(webView instanceof sz)) {
            return webView.getContext();
        }
        sz szVar = (sz) webView;
        Context f = szVar.f();
        return f == null ? szVar.getContext() : f;
    }

    private static void a(Builder builder, String str, JsResult jsResult) {
        builder.setMessage(str).setPositiveButton(17039370, new tp(jsResult)).setNegativeButton(17039360, new to(jsResult)).setOnCancelListener(new tn(jsResult)).create().show();
    }

    private static void a(Context context, Builder builder, String str, String str2, JsPromptResult jsPromptResult) {
        View linearLayout = new LinearLayout(context);
        linearLayout.setOrientation(1);
        View textView = new TextView(context);
        textView.setText(str);
        View editText = new EditText(context);
        editText.setText(str2);
        linearLayout.addView(textView);
        linearLayout.addView(editText);
        builder.setView(linearLayout).setPositiveButton(17039370, new ts(jsPromptResult, editText)).setNegativeButton(17039360, new tr(jsPromptResult)).setOnCancelListener(new tq(jsPromptResult)).create().show();
    }

    private final boolean a() {
        return ar.e().a(this.a.getContext().getPackageManager(), this.a.getContext().getPackageName(), "android.permission.ACCESS_FINE_LOCATION") || ar.e().a(this.a.getContext().getPackageManager(), this.a.getContext().getPackageName(), "android.permission.ACCESS_COARSE_LOCATION");
    }

    protected final void a(View view, int i, CustomViewCallback customViewCallback) {
        zzd i2 = this.a.i();
        if (i2 == null) {
            b.d("Could not get ad overlay when showing custom view.");
            customViewCallback.onCustomViewHidden();
            return;
        }
        i2.a(view, customViewCallback);
        i2.a(i);
    }

    protected boolean a(Context context, String str, String str2, String str3, JsResult jsResult, JsPromptResult jsPromptResult, boolean z) {
        try {
            Builder builder = new Builder(context);
            builder.setTitle(str);
            if (z) {
                a(context, builder, str2, str3, jsPromptResult);
            } else {
                a(builder, str2, jsResult);
            }
        } catch (Throwable e) {
            b.d("Fail to display Dialog.", e);
        }
        return true;
    }

    public final void onCloseWindow(WebView webView) {
        if (webView instanceof sz) {
            zzd i = ((sz) webView).i();
            if (i == null) {
                b.d("Tried to close an AdWebView not associated with an overlay.");
                return;
            } else {
                i.a();
                return;
            }
        }
        b.d("Tried to close a WebView that wasn't an AdWebView.");
    }

    public final boolean onConsoleMessage(ConsoleMessage consoleMessage) {
        String str = "JS: " + consoleMessage.message() + " (" + consoleMessage.sourceId() + ":" + consoleMessage.lineNumber() + ")";
        if (str.contains("Application Cache")) {
            return super.onConsoleMessage(consoleMessage);
        }
        switch (tt.a[consoleMessage.messageLevel().ordinal()]) {
            case WireMessage.WIRE_CHAT /*1*/:
                b.b(str);
                break;
            case WireMessage.WIRE_CONTROL /*2*/:
                b.d(str);
                break;
            case WireMessage.WIRE_AUTH /*3*/:
            case ControlMessage.CONTROL_PRESENCE /*4*/:
                b.c(str);
                break;
            case mx.UserView_actionButtonPaddingRight /*5*/:
                b.a(str);
                break;
            default:
                b.c(str);
                break;
        }
        return super.onConsoleMessage(consoleMessage);
    }

    public final boolean onCreateWindow(WebView webView, boolean z, boolean z2, Message message) {
        WebViewTransport webViewTransport = (WebViewTransport) message.obj;
        WebView webView2 = new WebView(webView.getContext());
        webView2.setWebViewClient(this.a.l());
        webViewTransport.setWebView(webView2);
        message.sendToTarget();
        return true;
    }

    public final void onExceededDatabaseQuota(String str, String str2, long j, long j2, long j3, QuotaUpdater quotaUpdater) {
        long j4 = 5242880 - j3;
        if (j4 <= 0) {
            quotaUpdater.updateQuota(j);
            return;
        }
        if (j == 0) {
            if (j2 > j4 || j2 > 1048576) {
                j2 = 0;
            }
        } else if (j2 == 0) {
            j2 = Math.min(Math.min(131072, j4) + j, 1048576);
        } else {
            if (j2 <= Math.min(1048576 - j, j4)) {
                j += j2;
            }
            j2 = j;
        }
        quotaUpdater.updateQuota(j2);
    }

    public final void onGeolocationPermissionsShowPrompt(String str, Callback callback) {
        if (callback != null) {
            callback.invoke(str, a(), true);
        }
    }

    public final void onHideCustomView() {
        zzd i = this.a.i();
        if (i == null) {
            b.d("Could not get ad overlay when hiding custom view.");
        } else {
            i.b();
        }
    }

    public final boolean onJsAlert(WebView webView, String str, String str2, JsResult jsResult) {
        return a(a(webView), str, str2, null, jsResult, null, false);
    }

    public final boolean onJsBeforeUnload(WebView webView, String str, String str2, JsResult jsResult) {
        return a(a(webView), str, str2, null, jsResult, null, false);
    }

    public final boolean onJsConfirm(WebView webView, String str, String str2, JsResult jsResult) {
        return a(a(webView), str, str2, null, jsResult, null, false);
    }

    public final boolean onJsPrompt(WebView webView, String str, String str2, String str3, JsPromptResult jsPromptResult) {
        return a(a(webView), str, str2, str3, null, jsPromptResult, true);
    }

    public final void onReachedMaxAppCacheSize(long j, long j2, QuotaUpdater quotaUpdater) {
        long j3 = 131072 + j;
        if (5242880 - j2 < j3) {
            quotaUpdater.updateQuota(0);
        } else {
            quotaUpdater.updateQuota(j3);
        }
    }

    public final void onShowCustomView(View view, CustomViewCallback customViewCallback) {
        a(view, -1, customViewCallback);
    }
}
