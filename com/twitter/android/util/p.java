package com.twitter.android.util;

import android.annotation.TargetApi;
import android.content.res.Resources;
import android.os.Build.VERSION;
import android.text.format.DateUtils;
import android.widget.TextView;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Locale;

/* compiled from: Twttr */
public class p {
    private final DateFormat a;
    private final DateFormat b;
    private final DateFormat c;
    private final Locale d;

    public p() {
        this(Locale.getDefault());
    }

    public p(Locale locale) {
        this.d = locale;
        this.a = DateFormat.getTimeInstance(3, this.d);
        this.b = DateFormat.getDateTimeInstance(0, 3, this.d);
        this.c = DateFormat.getDateTimeInstance(3, 3, this.d);
    }

    public void a(TextView textView, long j, boolean z) {
        Resources resources = textView.getResources();
        if (DateUtils.isToday(j)) {
            int i;
            if (z) {
                i = 2131363949;
            } else {
                i = 2131363948;
            }
            textView.setText(resources.getString(i, new Object[]{this.a.format(Long.valueOf(j))}));
        } else if (DateUtils.isToday(j - 86400000)) {
            textView.setText(resources.getString(z ? 2131363952 : 2131363951, new Object[]{this.a.format(Long.valueOf(j))}));
        } else if (DateUtils.isToday(j + 86400000)) {
            textView.setText(resources.getString(z ? 2131364207 : 2131364206, new Object[]{this.a.format(Long.valueOf(j))}));
        } else {
            textView.setText(this.b.format(Long.valueOf(j)));
        }
    }

    public void a(TextView textView, long j) {
        if (VERSION.SDK_INT >= 18) {
            c(textView, j);
        } else {
            b(textView, j);
        }
    }

    private void b(TextView textView, long j) {
        if (DateUtils.isToday(j)) {
            textView.setText(this.a.format(Long.valueOf(j)));
        } else {
            textView.setText(this.c.format(Long.valueOf(j)));
        }
    }

    @TargetApi(18)
    private void c(TextView textView, long j) {
        textView.setText(new SimpleDateFormat(android.text.format.DateFormat.getBestDateTimePattern(this.d, "MMM dd jj:mm"), this.d).format(Long.valueOf(j)));
    }
}
