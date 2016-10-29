package com.twitter.android.events;

import android.os.Bundle;
import com.twitter.android.events.sports.cricket.CricketLandingActivity;
import com.twitter.android.events.sports.nba.NBALandingActivity;
import com.twitter.android.events.sports.soccer.SoccerLandingActivity;
import com.twitter.android.mx;
import com.twitter.android.widget.TopicView$TopicData;
import com.twitter.config.c;
import com.twitter.library.api.search.d;
import com.twitter.util.aj;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;
import tv.periscope.chatman.api.WireMessage;

/* compiled from: Twttr */
public class b {
    public static final Set<String> a;

    static {
        a = Collections.unmodifiableSet(new HashSet(Arrays.asList(new String[]{"SPORTSCRICKETWC", "SPORTSSOCCER", "SPORTSNBA"})));
    }

    public static void a(d dVar) {
        if (dVar != null) {
            if (c.a("ip_android_cricket_v2_2755", "cricket_experience")) {
                dVar.a("cricket");
            }
            if (c.a("ip_android_soccer_v1_3046", "soccer_bucket")) {
                dVar.a("soccer");
            }
            if (com.twitter.config.d.a("nba_finals_timeline_android_game_enabled")) {
                dVar.a("basketball");
            }
        }
    }

    public static boolean a(String str) {
        return a.contains(str);
    }

    public static boolean a(String str, String str2) {
        if (str == null) {
            return false;
        }
        boolean z = true;
        switch (str.hashCode()) {
            case -1843726999:
                if (str.equals("SOCCER")) {
                    z = true;
                    break;
                }
                break;
            case 1212242117:
                if (str.equals("BASKETBALL")) {
                    z = true;
                    break;
                }
                break;
            case 1750282193:
                if (str.equals("CRICKET")) {
                    z = false;
                    break;
                }
                break;
        }
        switch (z) {
            case mx.View_android_theme /*0*/:
                if (aj.a((CharSequence) str2)) {
                    return false;
                }
                if ("LEAGUE".equals(str2.toUpperCase())) {
                    return com.twitter.config.d.a("cricket_experience_league_enabled");
                }
                if ("GAME".equals(str2.toUpperCase())) {
                    return com.twitter.config.d.a("cricket_experience_game_enabled");
                }
                return false;
            case WireMessage.WIRE_CHAT /*1*/:
                if (aj.a((CharSequence) str2)) {
                    return false;
                }
                if ("LEAGUE".equals(str2.toUpperCase())) {
                    return com.twitter.config.d.a("soccer_experience_league_enabled");
                }
                if ("GAME".equals(str2.toUpperCase())) {
                    return com.twitter.config.d.a("soccer_experience_game_enabled");
                }
                return false;
            case WireMessage.WIRE_CONTROL /*2*/:
                if (aj.a((CharSequence) str2)) {
                    return false;
                }
                if ("LEAGUE".equals(str2.toUpperCase())) {
                    return com.twitter.config.d.a("nba_finals_timeline_android_league_enabled");
                }
                if ("GAME".equals(str2.toUpperCase())) {
                    return com.twitter.config.d.a("nba_finals_timeline_android_game_enabled");
                }
                return false;
            default:
                return false;
        }
    }

    public static Bundle a(String str, TopicView$TopicData topicView$TopicData) {
        Bundle bundle = new Bundle();
        boolean z = true;
        switch (str.hashCode()) {
            case -1843726999:
                if (str.equals("SOCCER")) {
                    z = false;
                    break;
                }
                break;
            case 1212242117:
                if (str.equals("BASKETBALL")) {
                    z = true;
                    break;
                }
                break;
            case 1750282193:
                if (str.equals("CRICKET")) {
                    z = true;
                    break;
                }
                break;
        }
        switch (z) {
            case mx.View_android_theme /*0*/:
            case WireMessage.WIRE_CHAT /*1*/:
            case WireMessage.WIRE_CONTROL /*2*/:
                bundle.putBoolean("search_takeover", false);
                bundle.putParcelable("topic_data", topicView$TopicData);
                bundle.putString("event_subtype", str);
                break;
        }
        return bundle;
    }

    public static Class b(String str) {
        Object obj = -1;
        switch (str.hashCode()) {
            case -1843726999:
                if (str.equals("SOCCER")) {
                    obj = 1;
                    break;
                }
                break;
            case 1212242117:
                if (str.equals("BASKETBALL")) {
                    obj = 2;
                    break;
                }
                break;
            case 1750282193:
                if (str.equals("CRICKET")) {
                    obj = null;
                    break;
                }
                break;
        }
        switch (obj) {
            case mx.View_android_theme /*0*/:
                return CricketLandingActivity.class;
            case WireMessage.WIRE_CHAT /*1*/:
                return SoccerLandingActivity.class;
            case WireMessage.WIRE_CONTROL /*2*/:
                return NBALandingActivity.class;
            default:
                return null;
        }
    }

    public static String a(String str, int i) {
        if (2 == i) {
            if (c(str) && com.twitter.config.d.a("cricket_experience_enabled")) {
                return "CRICKET";
            }
            if (d(str) && com.twitter.config.d.a("soccer_experience_enabled")) {
                return "SOCCER";
            }
            if (e(str) && com.twitter.config.d.a("nba_finals_timeline_android_game_enabled")) {
                return "BASKETBALL";
            }
        }
        return "NONE";
    }

    public static boolean c(String str) {
        return str != null && str.toUpperCase().startsWith("CRICKET");
    }

    public static boolean d(String str) {
        return str != null && str.toUpperCase().startsWith("SOCCER");
    }

    public static boolean e(String str) {
        return str != null && str.toUpperCase().startsWith("BASKETBALL");
    }

    public static boolean f(String str) {
        return c(str) || e(str) || d(str);
    }
}
