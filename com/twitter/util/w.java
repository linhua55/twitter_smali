package com.twitter.util;

import java.util.Locale;

/* compiled from: Twttr */
public class w {
    public static String a(String str, boolean z) {
        if (z) {
            return '\u200f' + str;
        }
        return '\u200e' + str;
    }

    public static boolean a() {
        return a(Locale.getDefault());
    }

    public static boolean a(Locale locale) {
        byte directionality = Character.getDirectionality(locale.getDisplayName().charAt(0));
        if (directionality == (byte) 1 || directionality == 2) {
            return true;
        }
        return false;
    }

    public static boolean b(CharSequence charSequence) {
        int length = charSequence.length();
        for (int i = 0; i < length; i++) {
            if (a(charSequence.charAt(i))) {
                return true;
            }
        }
        return false;
    }

    public static boolean a(char c) {
        byte directionality = Character.getDirectionality(c);
        if (directionality == (byte) 1 || directionality == 2) {
            return true;
        }
        return false;
    }

    private static String a(String str) {
        if ("iw".equals(str)) {
            return "he";
        }
        if ("in".equals(str)) {
            return "id";
        }
        if ("yi".equals(str)) {
            return "ji";
        }
        return str;
    }

    public static String b(Locale locale) {
        String a = a(locale.getLanguage());
        if (!"zh".equals(a)) {
            return a;
        }
        CharSequence country = locale.getCountry();
        if (aj.b(country)) {
            return a + "-" + country;
        }
        return a;
    }

    public static String c(Locale locale) {
        CharSequence a = a(locale.getLanguage());
        StringBuilder stringBuilder = new StringBuilder();
        if (aj.b(a)) {
            stringBuilder.append(a);
            a = locale.getCountry();
            if (aj.b(a)) {
                stringBuilder.append("-");
                stringBuilder.append(a);
            }
        }
        return stringBuilder.toString();
    }

    public static boolean d(Locale locale) {
        return aj.b(locale.getLanguage()) && aj.b(locale.getCountry()) && aj.a(locale.getVariant());
    }

    public static String e(Locale locale) {
        return locale.getLanguage() + "_" + locale.getCountry();
    }
}
