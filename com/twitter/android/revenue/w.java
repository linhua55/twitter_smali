package com.twitter.android.revenue;

import defpackage.cmb;
import java.util.HashMap;
import java.util.Map;

/* compiled from: Twttr */
public class w {
    private static final Map<String, Integer> a;
    private static final Map<String, Integer> b;
    private static final Map<String, Integer> c;

    static {
        a = new HashMap();
        b = new HashMap();
        c = new HashMap();
        b.put("play", Integer.valueOf(2131362375));
        b.put("shop", Integer.valueOf(2131362383));
        b.put("book", Integer.valueOf(2131362353));
        b.put("connect", Integer.valueOf(2131362357));
        b.put("order", Integer.valueOf(2131362371));
        b.put("open", Integer.valueOf(2131361898));
        b.put("install", Integer.valueOf(2131361896));
        a.put("play", Integer.valueOf(2131362377));
        a.put("shop", Integer.valueOf(2131362385));
        a.put("book", Integer.valueOf(2131362355));
        a.put("connect", Integer.valueOf(2131362358));
        a.put("order", Integer.valueOf(2131362373));
        a.put("open", Integer.valueOf(2131362370));
        a.put("install", Integer.valueOf(2131362822));
        c.put("cta_learn_more", Integer.valueOf(2131362366));
        c.put("cta_read_more", Integer.valueOf(2131362380));
        c.put("cta_book_now", Integer.valueOf(2131362354));
        c.put("cta_visit_now", Integer.valueOf(2131362391));
        c.put("cta_view_now", Integer.valueOf(2131362389));
        c.put("cta_shop_now", Integer.valueOf(2131362384));
        c.put("cta_play_now", Integer.valueOf(2131362376));
        c.put("cta_bet_now", Integer.valueOf(2131362352));
        c.put("cta_donate", Integer.valueOf(2131362359));
        c.put("cta_apply_here", Integer.valueOf(2131362351));
        c.put("cta_quote_here", Integer.valueOf(2131362379));
        c.put("cta_order_now", Integer.valueOf(2131362372));
        c.put("cta_book_tickets", Integer.valueOf(2131362356));
        c.put("cta_enroll_now", Integer.valueOf(2131362360));
        c.put("cta_find_a_card", Integer.valueOf(2131362361));
        c.put("cta_get_a_quote", Integer.valueOf(2131362362));
        c.put("cta_get_tickets", Integer.valueOf(2131362365));
        c.put("cta_locate_a_dealer", Integer.valueOf(2131362367));
        c.put("cta_order_online", Integer.valueOf(2131362374));
        c.put("cta_preorder_now", Integer.valueOf(2131362378));
        c.put("cta_schedule_now", Integer.valueOf(2131362382));
        c.put("cta_sign_up_now", Integer.valueOf(2131362386));
        c.put("cta_subscribe", Integer.valueOf(2131362387));
        c.put("cta_register_now", Integer.valueOf(2131362381));
    }

    public static int a(cmb cmb) {
        for (String str : cmb.a()) {
            Integer num = (Integer) c.get(str);
            if (num != null) {
                return num.intValue();
            }
        }
        return 2131362380;
    }

    public static int a(String str) {
        Integer num = (Integer) b.get(str);
        if (num != null) {
            return num.intValue();
        }
        return 2131361896;
    }

    public static int b(String str) {
        Integer num = (Integer) a.get(str);
        if (num != null) {
            return num.intValue();
        }
        return 2131362822;
    }
}
