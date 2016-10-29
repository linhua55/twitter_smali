package com.google.android.gms.internal;

import android.app.Activity;
import android.content.Context;
import android.support.annotation.Nullable;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.View.OnTouchListener;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewParent;
import android.webkit.WebChromeClient;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.google.android.gms.ads.internal.client.AdSizeParcel;
import com.google.android.gms.ads.internal.k;
import com.google.android.gms.ads.internal.overlay.zzd;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import java.util.Map;
import org.json.JSONObject;

@oi
public interface sz extends aq, jh {
    OnClickListener A();

    WebView a();

    void a(int i);

    void a(Context context);

    void a(Context context, AdSizeParcel adSizeParcel, cy cyVar);

    void a(AdSizeParcel adSizeParcel);

    void a(zzd com_google_android_gms_ads_internal_overlay_zzd);

    void a(String str);

    void a(String str, String str2);

    void a(String str, Map<String, ?> map);

    void a(String str, JSONObject jSONObject);

    void a(boolean z);

    View b();

    void b(int i);

    void b(zzd com_google_android_gms_ads_internal_overlay_zzd);

    void b(String str);

    void b(boolean z);

    void c();

    void c(boolean z);

    void clearCache(boolean z);

    void d();

    void destroy();

    void e();

    Activity f();

    Context g();

    Context getContext();

    LayoutParams getLayoutParams();

    void getLocationOnScreen(int[] iArr);

    int getMeasuredHeight();

    int getMeasuredWidth();

    ViewParent getParent();

    k h();

    zzd i();

    zzd j();

    AdSizeParcel k();

    ta l();

    void loadData(String str, String str2, String str3);

    void loadDataWithBaseURL(String str, String str2, String str3, String str4, String str5);

    void loadUrl(String str);

    boolean m();

    void measure(int i, int i2);

    y n();

    VersionInfoParcel o();

    void onPause();

    void onResume();

    boolean p();

    int q();

    boolean r();

    void s();

    void setBackgroundColor(int i);

    void setOnClickListener(OnClickListener onClickListener);

    void setOnTouchListener(OnTouchListener onTouchListener);

    void setWebChromeClient(WebChromeClient webChromeClient);

    void setWebViewClient(WebViewClient webViewClient);

    void stopLoading();

    boolean t();

    String u();

    @Nullable
    sy v();

    @Nullable
    cu w();

    cx x();

    void y();

    void z();
}
