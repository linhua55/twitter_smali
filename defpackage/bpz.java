package defpackage;

import com.google.android.exoplayer.util.MimeTypes;
import com.twitter.internal.network.HttpOperation;
import com.twitter.internal.network.i;
import com.twitter.library.av.playback.AVDataSource;
import com.twitter.library.av.playback.au;
import com.twitter.library.av.playback.be;
import com.twitter.model.av.AVMediaPlaylist;
import com.twitter.model.av.DynamicAdInfo;
import com.twitter.model.av.MediaEntityPlaylist;
import com.twitter.model.av.Video;
import com.twitter.model.av.u;
import com.twitter.model.core.MediaEntity;
import com.twitter.util.telephony.TelephonyUtil;
import java.util.Map;

/* compiled from: Twttr */
/* renamed from: bpz */
public class bpz extends bqa {
    private final MediaEntity d;

    public bpz(MediaEntity mediaEntity) {
        this(be.a(mediaEntity), mediaEntity);
    }

    bpz(String str, MediaEntity mediaEntity) {
        if (str == null) {
            str = TtmlNode.ANONYMOUS_REGION_ID;
        }
        super(str);
        this.d = mediaEntity;
    }

    protected AVMediaPlaylist a(au auVar, i iVar, HttpOperation httpOperation, Map<String, String> map, DynamicAdInfo dynamicAdInfo) {
        AVDataSource c = auVar.c();
        return new MediaEntityPlaylist(TelephonyUtil.i().e().b, (Video) new u().a(String.valueOf(this.d.c)).b(MimeTypes.BASE_TYPE_VIDEO).b(true).c(b()).a(true).c(c.d()).q(), null, null);
    }
}
