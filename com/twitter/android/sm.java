package com.twitter.android;

import android.content.Context;
import android.content.Intent;
import android.support.v4.app.Fragment;
import com.twitter.android.events.b;
import com.twitter.android.widget.TopicView$TopicData;
import com.twitter.model.topic.TwitterTopic;
import com.twitter.util.n;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import tv.periscope.chatman.api.WireMessage;

/* compiled from: Twttr */
public class sm {
    private final WeakReference<Fragment> a;

    public sm(Fragment fragment) {
        this.a = new WeakReference(fragment);
    }

    public void a(String str, int i, String str2, String str3, String str4, TopicView$TopicData topicView$TopicData) {
        Fragment fragment = (Fragment) this.a.get();
        if (fragment != null) {
            Context activity = fragment.getActivity();
            if (activity != null) {
                fragment.startActivity(a(activity, str, i, str2, str3, null, str4, false, topicView$TopicData));
            }
        }
    }

    private static Class a(String str, boolean z) {
        Class b = b.b(str);
        if (b != null) {
            return b;
        }
        Object obj = -1;
        switch (str.hashCode()) {
            case 2402104:
                if (str.equals("NONE")) {
                    obj = null;
                    break;
                }
                break;
        }
        switch (obj) {
            case mx.View_android_theme /*0*/:
                return z ? SearchTerminalActivity.class : SearchActivity.class;
            default:
                return SearchActivity.class;
        }
    }

    public static Intent a(Context context, String str, int i, String str2, String str3, String str4, String str5, boolean z, TopicView$TopicData topicView$TopicData, boolean z2, ArrayList<Long> arrayList) {
        String str6;
        boolean z3;
        switch (i) {
            case WireMessage.WIRE_CHAT /*1*/:
            case WireMessage.WIRE_AUTH /*3*/:
                if (z) {
                    str6 = "promoted_trend_click";
                } else {
                    str6 = "trend_click";
                }
                if (i != 1) {
                    z3 = false;
                    break;
                }
                z3 = true;
                break;
            case WireMessage.WIRE_CONTROL /*2*/:
                str6 = "spev";
                z3 = true;
                break;
            default:
                str6 = null;
                z3 = false;
                break;
        }
        String a = b.a(str, i);
        Intent putExtra = new Intent(context, a(a, z3)).putExtra("query_name", str2).putExtra("query", n.b(str3, "UTF8")).putExtra("seed_hashtag", str5).putExtra("event_type", i).putExtra("scribe_context", str4).putExtra("terminal", z3).putExtra("search_button", z3).putExtra("pinnedTweetIds", arrayList).putExtra("q_source", str6);
        putExtra.putExtras(b.a(a, topicView$TopicData));
        if (i == 1) {
            putExtra.putExtra("q_type", z ? 8 : 1);
        }
        if (!TwitterTopic.b(str)) {
            putExtra.putExtra("event_id", str);
        }
        return putExtra;
    }

    public static Intent a(Context context, String str, int i, String str2, String str3, String str4, String str5, boolean z, TopicView$TopicData topicView$TopicData) {
        return a(context, str, i, str2, str3, str4, str5, z, topicView$TopicData, false, null);
    }

    public static Intent a(Context context, String str, int i, String str2, String str3, String str4, String str5, boolean z, TopicView$TopicData topicView$TopicData, ArrayList<Long> arrayList) {
        return a(context, str, i, str2, str3, str4, str5, z, topicView$TopicData, false, arrayList);
    }
}
