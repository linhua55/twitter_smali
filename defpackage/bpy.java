package defpackage;

import android.content.Context;
import android.net.Uri.Builder;
import com.twitter.config.d;
import com.twitter.internal.network.HttpOperation;
import com.twitter.internal.network.i;
import com.twitter.library.av.g;
import com.twitter.library.av.model.parser.a;
import com.twitter.library.av.playback.au;
import com.twitter.library.client.bg;
import com.twitter.model.av.AVMediaPlaylist;
import com.twitter.model.av.AudioPlaylist;
import com.twitter.model.av.DynamicAd;
import com.twitter.model.av.DynamicAdInfo;
import com.twitter.util.network.b;
import com.twitter.util.object.e;
import java.util.Locale;
import java.util.Map;

/* compiled from: Twttr */
/* renamed from: bpy */
public class bpy extends bpx {
    protected /* synthetic */ AVMediaPlaylist a(au auVar, i iVar, HttpOperation httpOperation, Map map, DynamicAdInfo dynamicAdInfo) {
        return b(auVar, iVar, httpOperation, map, dynamicAdInfo);
    }

    protected i a(Context context) {
        return new a(context);
    }

    protected AudioPlaylist b(au auVar, i iVar, HttpOperation httpOperation, Map<String, String> map, DynamicAdInfo dynamicAdInfo) {
        a aVar = (a) iVar;
        AudioPlaylist audioPlaylist = (AudioPlaylist) e.b(aVar != null ? aVar.a : null, b(httpOperation));
        audioPlaylist.a(auVar.c().g(), map);
        return audioPlaylist;
    }

    private AudioPlaylist b(HttpOperation httpOperation) {
        int i = (httpOperation == null || httpOperation.l() == null) ? 1 : httpOperation.l().a;
        return new AudioPlaylist(i, bpx.a(httpOperation));
    }

    protected void a(Builder builder, Map<String, String> map, DynamicAd dynamicAd) {
    }

    protected String a(Context context, String str, Map<String, String> map) {
        if (!d.a("audio_configurations_client_user_id_playlist_request_enabled")) {
            return super.a(context, str, (Map) map);
        }
        g a = g.a();
        bg a2 = bg.a();
        return a.a(a2.c(), str, null, AudioPlaylist.a(map));
    }

    protected void a(Context context, Map<String, String> map, b bVar) {
        Locale locale = Locale.getDefault();
        if (locale != null) {
            map.put("locale", locale.toString());
        }
    }
}
