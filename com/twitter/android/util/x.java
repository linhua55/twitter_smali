package com.twitter.android.util;

import android.app.AlertDialog;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.widget.CheckBox;
import bbu;
import bdj;
import com.twitter.library.scribe.TwitterScribeLog;

/* compiled from: Twttr */
abstract class x implements OnClickListener {
    private final bdj a;
    private final long b;

    x(bdj bdj, long j) {
        this.a = bdj;
        this.b = j;
    }

    public void onClick(DialogInterface dialogInterface, int i) {
        if (-1 == i) {
            if (((CheckBox) ((AlertDialog) dialogInterface).findViewById(2131952375)).isChecked()) {
                this.a.c(false, true);
            }
            bbu.a(new TwitterScribeLog(this.b).b(new String[]{"tweet:accept_data:redirect::impression"}));
            a();
            return;
        }
        bbu.a(new TwitterScribeLog(this.b).b(new String[]{"tweet:accept_data:close::impression"}));
        b();
    }

    public void a() {
    }

    public void b() {
    }
}
