package defpackage;

import com.twitter.model.topic.TwitterTopic;
import com.twitter.model.topic.i;
import com.twitter.util.object.ObjectUtils;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* compiled from: Twttr */
/* renamed from: cpj */
public class cpj {
    public static void a(List<TwitterTopic> list, List<TwitterTopic> list2) {
        Map hashMap = new HashMap(list.size());
        for (TwitterTopic twitterTopic : list) {
            hashMap.put(twitterTopic.bg_(), twitterTopic);
        }
        for (TwitterTopic twitterTopic2 : list2) {
            TwitterTopic twitterTopic3 = (TwitterTopic) hashMap.get(twitterTopic2.bg_());
            ((i) twitterTopic2.a(3)).g = cpj.b(twitterTopic3, twitterTopic2);
            twitterTopic2.a(!cpj.a(twitterTopic3, twitterTopic2));
        }
    }

    public static boolean a(TwitterTopic twitterTopic, TwitterTopic twitterTopic2) {
        int b = cpj.b(twitterTopic, twitterTopic2);
        boolean a = cpj.a(b, 8);
        boolean a2 = cpj.a(b, 4);
        boolean a3 = cpj.a(b, 2);
        boolean a4 = cpj.a(b, 1);
        boolean a5 = cpj.a(b, 16);
        if (a || a5) {
            return true;
        }
        if (a2 && (a3 || a4)) {
            return true;
        }
        if (twitterTopic2.g() == null && a3 && a4) {
            return true;
        }
        return false;
    }

    private static boolean a(int i, int i2) {
        return i2 == (i & i2);
    }

    private static int b(TwitterTopic twitterTopic, TwitterTopic twitterTopic2) {
        int i = 0;
        i iVar = (i) twitterTopic2.a(i.class);
        if (twitterTopic == null) {
            return 8;
        }
        i iVar2 = (i) twitterTopic.a(i.class);
        if (!ObjectUtils.a(twitterTopic.g(), twitterTopic2.g())) {
            i = 4;
        }
        if (!ObjectUtils.a(twitterTopic.e(), twitterTopic2.e())) {
            i |= 8;
        }
        if (iVar2 != null) {
            return iVar2.a(iVar) | i;
        }
        return iVar != null ? iVar.a(iVar2) | i : i;
    }

    public static boolean b(List<TwitterTopic> list, List<TwitterTopic> list2) {
        int size = list.size();
        int size2 = list2.size();
        if ((size2 == 0 && size > 0) || size2 > size) {
            return true;
        }
        for (int i = 0; i < size2; i++) {
            if (cpj.a((TwitterTopic) list.get(i), (TwitterTopic) list2.get(i))) {
                return true;
            }
        }
        return false;
    }
}
