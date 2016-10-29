package com.google.android.gms.internal;

import android.app.Activity;
import android.app.AlertDialog.Builder;
import android.content.Context;
import android.net.Uri;
import android.text.TextUtils;
import android.view.MotionEvent;
import com.google.android.gms.ads.internal.ar;
import com.google.android.gms.ads.internal.util.client.b;
import java.util.Map;

@oi
public class rk {
    private final Context a;
    private String b;
    private final float c;
    private float d;
    private float e;
    private float f;
    private int g;

    public rk(Context context) {
        this.g = 0;
        this.a = context;
        this.c = context.getResources().getDisplayMetrics().density;
    }

    public rk(Context context, String str) {
        this(context);
        this.b = str;
    }

    private void a() {
        if (this.a instanceof Activity) {
            Object b = b(this.b);
            Builder builder = new Builder(this.a);
            builder.setMessage(b);
            builder.setTitle("Ad Information");
            builder.setPositiveButton("Share", new rl(this, b));
            builder.setNegativeButton("Close", new rm(this));
            builder.create().show();
            return;
        }
        b.c("Can not create dialog without Activity Context");
    }

    static String b(String str) {
        if (TextUtils.isEmpty(str)) {
            return "No debug information";
        }
        Uri build = new Uri.Builder().encodedQuery(str.replaceAll("\\+", "%20")).build();
        StringBuilder stringBuilder = new StringBuilder();
        Map a = ar.e().a(build);
        for (String str2 : a.keySet()) {
            stringBuilder.append(str2).append(" = ").append((String) a.get(str2)).append("\n\n");
        }
        Object trim = stringBuilder.toString().trim();
        return TextUtils.isEmpty(trim) ? "No debug information" : trim;
    }

    void a(int i, float f, float f2) {
        if (i == 0) {
            this.g = 0;
            this.d = f;
            this.e = f2;
            this.f = f2;
        } else if (this.g == -1) {
        } else {
            if (i == 2) {
                if (f2 > this.e) {
                    this.e = f2;
                } else if (f2 < this.f) {
                    this.f = f2;
                }
                if (this.e - this.f > 30.0f * this.c) {
                    this.g = -1;
                    return;
                }
                if (this.g == 0 || this.g == 2) {
                    if (f - this.d >= 50.0f * this.c) {
                        this.d = f;
                        this.g++;
                    }
                } else if ((this.g == 1 || this.g == 3) && f - this.d <= -50.0f * this.c) {
                    this.d = f;
                    this.g++;
                }
                if (this.g == 1 || this.g == 3) {
                    if (f > this.d) {
                        this.d = f;
                    }
                } else if (this.g == 2 && f < this.d) {
                    this.d = f;
                }
            } else if (i == 1 && this.g == 4) {
                a();
            }
        }
    }

    public void a(MotionEvent motionEvent) {
        int historySize = motionEvent.getHistorySize();
        for (int i = 0; i < historySize; i++) {
            a(motionEvent.getActionMasked(), motionEvent.getHistoricalX(0, i), motionEvent.getHistoricalY(0, i));
        }
        a(motionEvent.getActionMasked(), motionEvent.getX(), motionEvent.getY());
    }

    public void a(String str) {
        this.b = str;
    }
}
