package com.twitter.library.av;

import com.google.android.exoplayer.chunk.FormatEvaluator.AdaptiveEvaluator;
import com.twitter.config.b;
import com.twitter.config.d;
import com.twitter.library.client.Session;
import com.twitter.model.av.AVMediaPlaylist;
import com.twitter.model.av.Partner;
import com.twitter.util.aj;
import com.twitter.util.q;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* compiled from: Twttr */
public class g {
    static g a;
    final Map<String, String> b;

    static {
        a = new g();
    }

    public static g a() {
        return a;
    }

    g() {
        this.b = new ConcurrentHashMap();
    }

    static String a(Session session, String str) {
        int i = 0;
        if (session != null) {
            if (a(d.b(String.format("audio_configurations_client_user_id_hashing_salt_%s", new Object[]{new Partner(str).a()})))) {
                String format;
                if (session.d()) {
                    format = String.format("%d%s", new Object[]{Long.valueOf(session.g()), format});
                } else {
                    format = String.format("%d%s", new Object[]{Long.valueOf(b.a()), format});
                }
                try {
                    MessageDigest instance = MessageDigest.getInstance("SHA-1");
                    byte[] bytes = format.getBytes(Util.UTF_8);
                    while (i < AdaptiveEvaluator.DEFAULT_MIN_DURATION_FOR_QUALITY_INCREASE_MS) {
                        bytes = instance.digest(bytes);
                        i++;
                    }
                    return q.b(bytes);
                } catch (NoSuchAlgorithmException e) {
                } catch (UnsupportedEncodingException e2) {
                }
            }
        }
        return null;
    }

    static boolean a(String str) {
        return aj.b(str) && str.length() >= 32;
    }

    String a(Session session, AVMediaPlaylist aVMediaPlaylist) {
        return b(session, aVMediaPlaylist.h());
    }

    String b(Session session, String str) {
        if (str == null) {
            return null;
        }
        synchronized (this) {
            if (!this.b.containsKey(str)) {
                this.b.put(str, a(session, str));
            }
        }
        return (String) this.b.get(str);
    }

    public String a(Session session, String str, String str2, AVMediaPlaylist aVMediaPlaylist) {
        if (c()) {
            str = a(str, "audio_configurations_client_user_id_hashing_template", a(session, aVMediaPlaylist));
        }
        if (b()) {
            return a(str, "audio_configurations_client_page_referrer_template", str2);
        }
        return str;
    }

    public String a(Session session, String str, String str2, String str3) {
        if (c()) {
            str = a(str, "audio_configurations_client_user_id_hashing_template", b(session, str3));
        }
        if (b()) {
            return a(str, "audio_configurations_client_page_referrer_template", str2);
        }
        return str;
    }

    static String a(String str, String str2, String str3) {
        Object b = d.b(str2);
        if (!aj.b(b) || !aj.b(str3)) {
            return str;
        }
        if (str.contains(b)) {
            return str.replace(b, str3);
        }
        try {
            return str.replace(URLEncoder.encode(b, Util.UTF_8), str3);
        } catch (UnsupportedEncodingException e) {
            return str;
        }
    }

    static boolean b() {
        return d.a("audio_configurations_client_page_referrer_enabled");
    }

    static boolean c() {
        return d.a("audio_configurations_client_user_id_hashing_enabled");
    }

    public void d() {
        this.b.clear();
    }
}
