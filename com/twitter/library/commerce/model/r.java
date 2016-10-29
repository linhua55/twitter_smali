package com.twitter.library.commerce.model;

import android.content.res.Resources;
import android.support.v7.recyclerview.BuildConfig;
import bdc;
import com.twitter.android.mx;
import com.twitter.util.serialization.n;
import java.math.BigDecimal;
import java.util.Calendar;
import java.util.Map;
import tv.periscope.chatman.api.WireMessage;

/* compiled from: Twttr */
public class r extends y {
    public static final n<r> a;
    private String c;
    private String d;
    private String e;
    private Calendar f;
    private String g;
    private String h;
    private Long i;
    private String j;
    private Long k;
    private String l;
    private BigDecimal m;
    private String n;
    private String o;
    private String p;
    private Long q;
    private Map<String, String> r;

    static {
        a = new t(null);
    }

    public String a() {
        return this.c;
    }

    public void a(String str) {
        this.c = str;
    }

    public String b() {
        return this.d;
    }

    public void b(String str) {
        this.d = str;
    }

    public String c() {
        return this.e;
    }

    public void c(String str) {
        this.e = str;
    }

    public Calendar d() {
        return this.f;
    }

    public void a(Calendar calendar) {
        this.f = calendar;
    }

    public String e() {
        return this.g;
    }

    public String a(Resources resources) {
        int i;
        String e = e();
        Object obj = -1;
        switch (e.hashCode()) {
            case 659453081:
                if (e.equals("CANCELED")) {
                    obj = 2;
                    break;
                }
                break;
            case 907287315:
                if (e.equals("PROCESSING")) {
                    obj = null;
                    break;
                }
                break;
            case 1184410076:
                if (e.equals("SENT_TO_SELLER")) {
                    obj = 1;
                    break;
                }
                break;
        }
        switch (obj) {
            case mx.View_android_theme /*0*/:
                i = bdc.commerce_order_status_processing;
                break;
            case WireMessage.WIRE_CHAT /*1*/:
                i = bdc.commerce_order_status_sent_to_seller;
                break;
            case WireMessage.WIRE_CONTROL /*2*/:
                i = bdc.commerce_order_status_cancelled;
                break;
            default:
                return BuildConfig.VERSION_NAME;
        }
        return resources.getString(i);
    }

    public void d(String str) {
        this.g = str;
    }

    public String f() {
        return this.h;
    }

    public void e(String str) {
        this.h = str;
    }

    public void a(Long l) {
        this.i = l;
    }

    public void f(String str) {
        this.l = str;
    }

    public Long g() {
        return this.k;
    }

    public void b(Long l) {
        this.k = l;
    }

    public Map<String, String> h() {
        return this.r;
    }

    public void a(Map<String, String> map) {
        this.r = map;
    }

    public BigDecimal i() {
        return this.m;
    }

    public void a(BigDecimal bigDecimal) {
        this.m = bigDecimal;
    }

    public void g(String str) {
        this.n = str;
    }

    public String j() {
        return this.j;
    }

    public void h(String str) {
        this.j = str;
    }

    public String k() {
        return this.o;
    }

    public void i(String str) {
        this.o = str;
    }

    public String l() {
        return this.p;
    }

    public void j(String str) {
        this.p = str;
    }

    public Long m() {
        return this.q;
    }

    public void c(Long l) {
        this.q = l;
    }
}
