package defpackage;

import android.content.Intent;
import apf;
import com.google.android.exoplayer.MediaFormat;
import com.twitter.android.nn;
import com.twitter.model.core.Tweet;
import tv.periscope.chatman.api.WireMessage;

/* compiled from: Twttr */
/* renamed from: aqz */
public class aqz implements apk<Intent> {
    private final apf<nn> a;
    private aqc b;

    public aqz(apf<nn> apf_com_twitter_android_nn) {
        this.a = apf_com_twitter_android_nn;
        this.a.a(this);
    }

    public void a(aqc aqc) {
        this.b = aqc;
    }

    public void a(Tweet tweet) {
        this.a.c(new nn().a(tweet));
    }

    public void a(int i, Intent intent) {
        switch (i) {
            case MediaFormat.NO_VALUE /*-1*/:
            case WireMessage.WIRE_CHAT /*1*/:
            case WireMessage.WIRE_CONTROL /*2*/:
            case WireMessage.WIRE_AUTH /*3*/:
                if (this.b != null) {
                    this.b.a();
                }
            default:
        }
    }
}
