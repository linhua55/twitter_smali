package defpackage;

import com.twitter.internal.network.HttpOperation;
import com.twitter.internal.network.i;
import com.twitter.library.av.playback.au;
import com.twitter.model.av.AVMediaPlaylist;
import com.twitter.model.av.DynamicAdInfo;
import com.twitter.model.av.VinePlaylist;
import java.util.Map;

/* compiled from: Twttr */
/* renamed from: bqi */
public class bqi extends bqa {
    private final String d;
    private final long e;

    public bqi(String str, String str2, long j) {
        super(str);
        this.d = str2;
        this.e = j;
    }

    protected AVMediaPlaylist a(au auVar, i iVar, HttpOperation httpOperation, Map<String, String> map, DynamicAdInfo dynamicAdInfo) {
        return new VinePlaylist(b(), this.d, this.e);
    }
}
