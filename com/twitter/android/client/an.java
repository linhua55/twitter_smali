package com.twitter.android.client;

import android.app.AlertDialog;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.widget.CheckBox;
import bbu;
import bdj;
import com.google.android.exoplayer.util.Util;
import com.google.android.exoplayer.util.extensions.Buffer;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.flags.ModuleDescriptor;
import com.twitter.library.scribe.TwitterScribeLog;

/* compiled from: Twttr */
final class an implements OnClickListener {
    final /* synthetic */ o a;
    final /* synthetic */ bdj b;
    final /* synthetic */ long c;

    an(o oVar, bdj bdj, long j) {
        this.a = oVar;
        this.b = bdj;
        this.c = j;
    }

    public void onClick(DialogInterface dialogInterface, int i) {
        if (-1 == i) {
            if (((CheckBox) ((AlertDialog) dialogInterface).findViewById(2131952375)).isChecked()) {
                switch (this.a.b()) {
                    case ModuleDescriptor.MODULE_VERSION /*1*/:
                        this.b.a(false, true);
                        bbu.a(new TwitterScribeLog(this.c).b(new String[]{"tweet:accept_data:accept::impression"}));
                        break;
                    case Buffer.FLAG_DECODE_ONLY /*2*/:
                        this.b.d(false, true);
                        break;
                    case Util.TYPE_OTHER /*3*/:
                        this.b.b(false, true);
                        break;
                }
            }
            this.a.a();
            if (this.a.b() == 1) {
                bbu.a(new TwitterScribeLog(this.c).b(new String[]{"tweet:accept_data:redirect::impression"}));
            }
        } else if (this.a.b() == 1) {
            bbu.a(new TwitterScribeLog(this.c).b(new String[]{"tweet:accept_data:close::impression"}));
        }
    }
}
