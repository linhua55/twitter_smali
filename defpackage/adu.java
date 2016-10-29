package defpackage;

import com.twitter.library.scribe.MomentScribeDetails.Metadata;
import com.twitter.library.scribe.n;
import com.twitter.model.moments.viewmodels.MomentPage;
import com.twitter.model.moments.viewmodels.MomentPage.Type;
import com.twitter.model.moments.viewmodels.MomentTweetStreamingVideoPage;
import com.twitter.model.moments.viewmodels.a;
import com.twitter.model.moments.viewmodels.q;
import tv.periscope.chatman.api.ControlMessage;
import tv.periscope.chatman.api.WireMessage;

/* compiled from: Twttr */
/* renamed from: adu */
public class adu {
    public static Metadata a(MomentPage momentPage, a aVar) {
        int i;
        int i2;
        long j;
        n nVar = new n();
        if (momentPage.d() == Type.c) {
            switch (adv.a[((MomentTweetStreamingVideoPage) momentPage).a.ordinal()]) {
                case WireMessage.WIRE_CHAT /*1*/:
                    i = 6;
                    break;
                case WireMessage.WIRE_CONTROL /*2*/:
                    i = 0;
                    break;
                case WireMessage.WIRE_AUTH /*3*/:
                    i = 3;
                    break;
                case ControlMessage.CONTROL_PRESENCE /*4*/:
                    i = 4;
                    break;
                default:
                    throw new IllegalStateException("Unknown video type");
            }
            i2 = i;
            j = -1;
        } else if (momentPage.d() == Type.b) {
            i2 = 1;
            j = ((q) momentPage).a;
        } else if (momentPage.d() == Type.d) {
            i2 = 5;
            j = -1;
        } else {
            i2 = 2;
            j = -1;
        }
        nVar.a(i2);
        if (j > 0) {
            nVar.a(j);
        }
        if (aVar != null && aVar.b() > 0) {
            i = aVar.d().indexOf(momentPage);
            if (i >= 0) {
                nVar.b(i);
                nVar.c(aVar.b());
            }
        }
        return (Metadata) nVar.q();
    }
}
