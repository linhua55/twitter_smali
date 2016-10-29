package com.twitter.android.av;

import com.twitter.library.av.c;
import com.twitter.library.av.playback.AVDataSource;
import com.twitter.library.scribe.TwitterScribeItem;
import com.twitter.library.scribe.TwitterScribeLog;
import com.twitter.model.av.Audio;
import com.twitter.model.av.AudioPlaylist;
import java.util.Collections;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;

/* compiled from: Twttr */
public class o extends d {
    static final Set<String> c;
    static final Set<String> d;

    static {
        Set hashSet = new HashSet();
        hashSet.add("playlist_start");
        hashSet.add("click");
        hashSet.add("cta_impression_signup");
        hashSet.add("cta_impression_open");
        hashSet.add("cta_click_signup");
        hashSet.add("cta_click_open");
        c = Collections.unmodifiableSet(hashSet);
        hashSet = new HashSet();
        hashSet.add("close");
        hashSet.add("checkpoint");
        d = Collections.unmodifiableSet(hashSet);
    }

    public o(AVDataSource aVDataSource) {
        super(aVDataSource);
    }

    public boolean a(String str) {
        return c.contains(str);
    }

    public boolean b(String str) {
        return a(str) || d.contains(str);
    }

    public TwitterScribeItem a(c cVar) {
        TwitterScribeItem a = this.a.a(cVar.a, cVar.b);
        TwitterScribeLog.a(this.a.a(), a);
        if (cVar.d instanceof AudioPlaylist) {
            a(((AudioPlaylist) cVar.d).m(), a);
            if (cVar.e instanceof Audio) {
                Audio audio = (Audio) cVar.e;
                a.U = audio.n();
                a.W = audio.c();
            }
            a.V = ((AudioPlaylist) cVar.d).l();
        } else {
            a(cVar.f, a);
        }
        return a;
    }

    protected void a(Map<String, String> map, TwitterScribeItem twitterScribeItem) {
        if (map != null) {
            twitterScribeItem.L = (String) map.get("playlist_url");
            twitterScribeItem.Q = (String) map.get("artist_name");
            twitterScribeItem.R = (String) map.get("integration_partner");
            twitterScribeItem.T = (String) map.get("image_url");
            twitterScribeItem.S = (String) map.get("card_title");
        }
    }
}
