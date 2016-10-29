package com.twitter.library.commerce.model;

import android.content.Context;
import android.support.v7.recyclerview.BuildConfig;
import com.twitter.config.d;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.MissingResourceException;

/* compiled from: Twttr */
public class j {
    private static final Object a;
    private static volatile j b;
    private List<i> c;
    private Map<String, i> d;

    static {
        a = new Object();
    }

    private j(Context context) {
        b(context);
    }

    public static j a(Context context) {
        if (b == null) {
            synchronized (a) {
                if (b == null) {
                    b = new j(context);
                }
            }
        }
        return b;
    }

    public static int a(i iVar, List<i> list) {
        for (int i = 0; i < list.size(); i++) {
            if (((i) list.get(i)).equals(iVar)) {
                return i;
            }
        }
        return -1;
    }

    public int a(String str) {
        return b(str, c());
    }

    private int b(String str, List<i> list) {
        i b = b(str);
        if (b != null) {
            return a(b, (List) list);
        }
        return -1;
    }

    public i b(String str) {
        return (i) this.d.get(str);
    }

    public List<i> a(String[] strArr) {
        List<i> arrayList = new ArrayList();
        for (String b : strArr) {
            i b2 = b(b);
            if (b2 != null) {
                arrayList.add(b2);
            }
        }
        return arrayList;
    }

    private static <T> List<T> b(List<T> list, List<T> list2) {
        Collection hashSet = new HashSet();
        Collection hashSet2 = new HashSet();
        for (T add : list) {
            hashSet.add(add);
        }
        for (T add2 : list2) {
            hashSet2.add(add2);
        }
        hashSet.retainAll(hashSet2);
        return new ArrayList(hashSet);
    }

    public static List<String> a(List<String> list, List<String> list2) {
        return b((List) list, (List) list2);
    }

    public static boolean a(List<String> list) {
        return list != null && list.size() == 1 && "all".equalsIgnoreCase((String) list.get(0));
    }

    public static boolean a(String str, List<String> list) {
        for (String equals : list) {
            if (equals.equals(str)) {
                return true;
            }
        }
        return false;
    }

    private void b(Context context) {
        this.c = new ArrayList();
        this.d = new HashMap();
        for (String locale : Locale.getISOCountries()) {
            String locale2;
            Locale locale3 = new Locale(BuildConfig.VERSION_NAME, locale2);
            try {
                locale2 = locale3.getCountry();
                String iSO3Country = locale3.getISO3Country();
                String trim = locale3.getDisplayCountry().trim();
                if (!this.d.containsKey(locale2)) {
                    i iVar = new i(locale2, iSO3Country, trim);
                    this.c.add(iVar);
                    this.d.put(iVar.a(), iVar);
                }
            } catch (MissingResourceException e) {
            }
        }
        Collections.sort(this.c);
    }

    public static boolean a() {
        return d.a("commerce_international_shipping_enabled");
    }

    public static List<String> b() {
        List c = d.c("commerce_international_shipping_countries");
        List<String> arrayList = new ArrayList();
        for (Object next : c) {
            if (next instanceof String) {
                arrayList.add((String) next);
            }
        }
        return arrayList;
    }

    public List<i> c() {
        return this.c;
    }
}
