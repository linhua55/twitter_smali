package defpackage;

import android.content.Context;
import android.view.ViewGroup;
import com.twitter.library.scribe.TwitterScribeAssociation;
import com.twitter.media.ui.image.MediaImageView;
import java.util.List;
import tv.periscope.chatman.api.ControlMessage;
import tv.periscope.chatman.api.WireMessage;

/* compiled from: Twttr */
/* renamed from: aah */
public class aah {
    public aag a(Context context, aai aai, ViewGroup viewGroup, int i, aao aao, TwitterScribeAssociation twitterScribeAssociation, List<MediaImageView> list) {
        switch (aai.b()) {
            case WireMessage.WIRE_CHAT /*1*/:
                return new aaj(context, viewGroup, i, aao, twitterScribeAssociation, list);
            case WireMessage.WIRE_CONTROL /*2*/:
            case ControlMessage.CONTROL_PRESENCE /*4*/:
                return new aaq(context, viewGroup, i, aao, twitterScribeAssociation, list);
            case WireMessage.WIRE_AUTH /*3*/:
                return new aas(context, viewGroup, i, aao, twitterScribeAssociation, list);
            default:
                throw new IllegalArgumentException("Gallery item type not supported");
        }
    }
}
