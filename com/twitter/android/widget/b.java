package com.twitter.android.widget;

import android.os.Handler;
import com.google.android.exoplayer.text.CaptionStyleCompat;
import com.google.android.exoplayer.util.Util;
import com.google.android.exoplayer.util.extensions.Buffer;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.flags.ModuleDescriptor;
import com.twitter.android.util.AppRatingPromptHelper.AppRatingEvent;

/* compiled from: Twttr */
class b implements e {
    final /* synthetic */ a a;

    b(a aVar) {
        this.a = aVar;
    }

    public void a(int i) {
        AppRatingEvent appRatingEvent;
        new Handler().postDelayed(new c(this, i), 200);
        switch (i) {
            case ModuleDescriptor.MODULE_VERSION /*1*/:
                appRatingEvent = AppRatingEvent.RATE_1_STAR;
                break;
            case Buffer.FLAG_DECODE_ONLY /*2*/:
                appRatingEvent = AppRatingEvent.RATE_2_STAR;
                break;
            case Util.TYPE_OTHER /*3*/:
                appRatingEvent = AppRatingEvent.RATE_3_STAR;
                break;
            case CaptionStyleCompat.EDGE_TYPE_DEPRESSED /*4*/:
                appRatingEvent = AppRatingEvent.RATE_4_STAR;
                break;
            case EbmlReader.TYPE_FLOAT /*5*/:
                appRatingEvent = AppRatingEvent.RATE_5_STAR;
                break;
            default:
                appRatingEvent = null;
                break;
        }
        if (appRatingEvent != null) {
            this.a.a(appRatingEvent);
        }
    }
}
