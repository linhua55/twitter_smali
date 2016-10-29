package com.twitter.android.util;

import android.widget.TextView;
import com.google.android.exoplayer.util.Util;
import com.google.android.exoplayer.util.extensions.Buffer;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.flags.ModuleDescriptor;
import com.twitter.library.util.ao;
import com.twitter.util.ak;

/* compiled from: Twttr */
public class bn {
    public static void a(TextView textView, int i) {
        float f = ao.a;
        float b = ak.b();
        float f2 = f / b;
        switch (i) {
            case ModuleDescriptor.MODULE_VERSION /*1*/:
                f = (f2 + 2.0f) * b;
                break;
            case Buffer.FLAG_DECODE_ONLY /*2*/:
                f = (f2 - 2.0f) * b;
                break;
            case Util.TYPE_OTHER /*3*/:
                f = (f2 - 4.0f) * b;
                break;
        }
        textView.setTextSize(0, f);
    }
}
