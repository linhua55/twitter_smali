package com.google.android.gms.internal;

import android.app.Activity;
import android.content.Context;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.View.OnTouchListener;
import android.webkit.WebChromeClient;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.FrameLayout;
import com.google.android.gms.ads.internal.client.AdSizeParcel;
import com.google.android.gms.ads.internal.k;
import com.google.android.gms.ads.internal.overlay.zzd;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import java.util.Map;
import org.json.JSONObject;

@oi
class th extends FrameLayout implements sz {
    private final sz a;
    private final sy b;

    public th(sz szVar) {
        super(szVar.getContext());
        this.a = szVar;
        this.b = new sy(szVar.g(), this, this);
        ta l = this.a.l();
        if (l != null) {
            l.a((sz) this);
        }
        addView(this.a.b());
    }

    public OnClickListener A() {
        return this.a.A();
    }

    public WebView a() {
        return this.a.a();
    }

    public void a(int i) {
        this.a.a(i);
    }

    public void a(Context context) {
        this.a.a(context);
    }

    public void a(Context context, AdSizeParcel adSizeParcel, cy cyVar) {
        this.a.a(context, adSizeParcel, cyVar);
    }

    public void a(AdSizeParcel adSizeParcel) {
        this.a.a(adSizeParcel);
    }

    public void a(zzd com_google_android_gms_ads_internal_overlay_zzd) {
        this.a.a(com_google_android_gms_ads_internal_overlay_zzd);
    }

    public void a(ah ahVar, boolean z) {
        this.a.a(ahVar, z);
    }

    public void a(String str) {
        this.a.a(str);
    }

    public void a(String str, fj fjVar) {
        this.a.a(str, fjVar);
    }

    public void a(String str, String str2) {
        this.a.a(str, str2);
    }

    public void a(String str, Map<String, ?> map) {
        this.a.a(str, (Map) map);
    }

    public void a(String str, JSONObject jSONObject) {
        this.a.a(str, jSONObject);
    }

    public void a(boolean z) {
        this.a.a(z);
    }

    public View b() {
        return this;
    }

    public void b(int i) {
        this.a.b(i);
    }

    public void b(zzd com_google_android_gms_ads_internal_overlay_zzd) {
        this.a.b(com_google_android_gms_ads_internal_overlay_zzd);
    }

    public void b(String str) {
        this.a.b(str);
    }

    public void b(String str, fj fjVar) {
        this.a.b(str, fjVar);
    }

    public void b(String str, JSONObject jSONObject) {
        this.a.b(str, jSONObject);
    }

    public void b(boolean z) {
        this.a.b(z);
    }

    public void c() {
        this.a.c();
    }

    public void c(boolean z) {
        this.a.c(z);
    }

    public void clearCache(boolean z) {
        this.a.clearCache(z);
    }

    public void d() {
        this.a.d();
    }

    public void destroy() {
        this.a.destroy();
    }

    public void e() {
        this.a.e();
    }

    public Activity f() {
        return this.a.f();
    }

    public Context g() {
        return this.a.g();
    }

    public k h() {
        return this.a.h();
    }

    public zzd i() {
        return this.a.i();
    }

    public zzd j() {
        return this.a.j();
    }

    public AdSizeParcel k() {
        return this.a.k();
    }

    public ta l() {
        return this.a.l();
    }

    public void loadData(String str, String str2, String str3) {
        this.a.loadData(str, str2, str3);
    }

    public void loadDataWithBaseURL(String str, String str2, String str3, String str4, String str5) {
        this.a.loadDataWithBaseURL(str, str2, str3, str4, str5);
    }

    public void loadUrl(String str) {
        this.a.loadUrl(str);
    }

    public boolean m() {
        return this.a.m();
    }

    public y n() {
        return this.a.n();
    }

    public VersionInfoParcel o() {
        return this.a.o();
    }

    public void onPause() {
        this.b.b();
        this.a.onPause();
    }

    public void onResume() {
        this.a.onResume();
    }

    public boolean p() {
        return this.a.p();
    }

    public int q() {
        return this.a.q();
    }

    public boolean r() {
        return this.a.r();
    }

    public void s() {
        this.b.c();
        this.a.s();
    }

    public void setBackgroundColor(int i) {
        this.a.setBackgroundColor(i);
    }

    public void setOnClickListener(OnClickListener onClickListener) {
        this.a.setOnClickListener(onClickListener);
    }

    public void setOnTouchListener(OnTouchListener onTouchListener) {
        this.a.setOnTouchListener(onTouchListener);
    }

    public void setWebChromeClient(WebChromeClient webChromeClient) {
        this.a.setWebChromeClient(webChromeClient);
    }

    public void setWebViewClient(WebViewClient webViewClient) {
        this.a.setWebViewClient(webViewClient);
    }

    public void stopLoading() {
        this.a.stopLoading();
    }

    public boolean t() {
        return this.a.t();
    }

    public String u() {
        return this.a.u();
    }

    public sy v() {
        return this.b;
    }

    public cu w() {
        return this.a.w();
    }

    public cx x() {
        return this.a.x();
    }

    public void y() {
        this.a.y();
    }

    public void z() {
        this.a.z();
    }
}
