package com.twitter.android.util;

import android.content.Context;
import com.google.i18n.phonenumbers.PhoneNumberUtil;
import com.google.i18n.phonenumbers.Phonenumber.PhoneNumber;
import com.twitter.android.br;
import com.twitter.util.aj;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.Locale;

/* compiled from: Twttr */
public final class o {
    public static List<br> a() {
        Locale[] availableLocales = Locale.getAvailableLocales();
        if (availableLocales == null) {
            return new ArrayList();
        }
        Collection hashSet = new HashSet();
        PhoneNumberUtil a = PhoneNumberUtil.a();
        for (Locale locale : availableLocales) {
            if (a(locale)) {
                int g = a.g(locale.getCountry());
                if (g > 0) {
                    hashSet.add(new br(locale.getDisplayCountry(), g));
                }
            }
        }
        List<br> arrayList = new ArrayList(hashSet);
        Collections.sort(arrayList);
        return arrayList;
    }

    private static boolean a(Locale locale) {
        return aj.b(locale.getLanguage()) && aj.b(locale.getCountry()) && aj.a(locale.getVariant());
    }

    public static br a(Context context) {
        int g;
        am a = aq.a(context);
        PhoneNumberUtil a2 = PhoneNumberUtil.a();
        PhoneNumber g2 = a.g();
        Locale locale = context.getResources().getConfiguration().locale;
        boolean a3 = a(locale);
        if (a3) {
            g = a2.g(locale.getCountry());
        } else {
            g = -1;
        }
        if (g2 != null) {
            int b = g2.b();
            if (a3 && b == g) {
                return new br(locale.getDisplayCountry(), b);
            }
            return a(b);
        } else if (a3) {
            return new br(locale.getDisplayCountry(), g);
        } else {
            return b();
        }
    }

    public static br a(int i) {
        String b = PhoneNumberUtil.a().b(i);
        Locale[] availableLocales = Locale.getAvailableLocales();
        if (availableLocales != null) {
            for (Locale locale : availableLocales) {
                if (locale.getCountry().equals(b)) {
                    return new br(locale.getDisplayCountry(), i);
                }
            }
        }
        return b();
    }

    public static br b() {
        return new br(Locale.US.getDisplayCountry(), 1);
    }
}
