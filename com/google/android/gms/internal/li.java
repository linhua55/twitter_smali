package com.google.android.gms.internal;

import android.annotation.TargetApi;
import android.app.AlertDialog.Builder;
import android.content.Context;
import android.content.Intent;
import android.provider.CalendarContract.Events;
import android.support.v7.recyclerview.BuildConfig;
import android.text.TextUtils;
import com.google.android.gms.ads.internal.ar;
import ie;
import java.util.Map;

@oi
public class li extends lv {
    private final Map<String, String> a;
    private final Context b;
    private String c;
    private long d;
    private long e;
    private String f;
    private String g;

    public li(sz szVar, Map<String, String> map) {
        super(szVar, "createCalendarEvent");
        this.a = map;
        this.b = szVar.f();
        c();
    }

    private String a(String str) {
        return TextUtils.isEmpty((CharSequence) this.a.get(str)) ? BuildConfig.VERSION_NAME : (String) this.a.get(str);
    }

    private void c() {
        this.c = a("description");
        this.f = a("summary");
        this.d = e("start_ticks");
        this.e = e("end_ticks");
        this.g = a("location");
    }

    private long e(String str) {
        String str2 = (String) this.a.get(str);
        if (str2 == null) {
            return -1;
        }
        try {
            return Long.parseLong(str2);
        } catch (NumberFormatException e) {
            return -1;
        }
    }

    public void a() {
        if (this.b == null) {
            b("Activity context is not available.");
        } else if (ar.e().e(this.b).f()) {
            Builder d = ar.e().d(this.b);
            d.setTitle(ar.h().a(ie.create_calendar_title, "Create calendar event"));
            d.setMessage(ar.h().a(ie.create_calendar_message, "Allow Ad to create a calendar event?"));
            d.setPositiveButton(ar.h().a(ie.accept, "Accept"), new lj(this));
            d.setNegativeButton(ar.h().a(ie.decline, "Decline"), new lk(this));
            d.create().show();
        } else {
            b("This feature is not available on the device.");
        }
    }

    @TargetApi(14)
    Intent b() {
        Intent data = new Intent("android.intent.action.EDIT").setData(Events.CONTENT_URI);
        data.putExtra("title", this.c);
        data.putExtra("eventLocation", this.g);
        data.putExtra("description", this.f);
        if (this.d > -1) {
            data.putExtra("beginTime", this.d);
        }
        if (this.e > -1) {
            data.putExtra("endTime", this.e);
        }
        data.setFlags(268435456);
        return data;
    }
}
