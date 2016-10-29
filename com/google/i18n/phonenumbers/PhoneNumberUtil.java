package com.google.i18n.phonenumbers;

import android.support.v7.widget.helper.ItemTouchHelper.Callback;
import com.google.android.exoplayer.util.Util;
import com.google.android.exoplayer.util.extensions.Buffer;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.flags.ModuleDescriptor;
import com.google.i18n.phonenumbers.NumberParseException.ErrorType;
import com.google.i18n.phonenumbers.Phonenumber.PhoneNumber;
import com.google.i18n.phonenumbers.Phonenumber.PhoneNumber.CountryCodeSource;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import java.util.logging.Level;
import java.util.logging.Logger;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import rb;
import rc;
import re;

/* compiled from: Twttr */
public class PhoneNumberUtil {
    private static final Pattern A;
    private static final Pattern B;
    private static PhoneNumberUtil C;
    static final d a;
    static final Pattern b;
    static final Pattern c;
    static final Pattern d;
    static final String e;
    static final Pattern f;
    private static final Logger g;
    private static final Map<Integer, String> h;
    private static final Set<Integer> i;
    private static final Map<Character, Character> j;
    private static final Map<Character, Character> k;
    private static final Map<Character, Character> l;
    private static final Map<Character, Character> m;
    private static final Pattern n;
    private static final String o;
    private static final Pattern p;
    private static final Pattern q;
    private static final Pattern r;
    private static final Pattern s;
    private static final String t;
    private static final String u;
    private static final Pattern v;
    private static final Pattern w;
    private static final Pattern x;
    private static final Pattern y;
    private static final Pattern z;
    private final f D;
    private final Map<Integer, List<String>> E;
    private final Set<String> F;
    private final j G;
    private final Set<String> H;
    private final Set<Integer> I;

    /* compiled from: Twttr */
    public enum PhoneNumberFormat {
        E164,
        INTERNATIONAL,
        NATIONAL,
        RFC3966
    }

    /* compiled from: Twttr */
    public enum PhoneNumberType {
        FIXED_LINE,
        MOBILE,
        FIXED_LINE_OR_MOBILE,
        TOLL_FREE,
        PREMIUM_RATE,
        SHARED_COST,
        VOIP,
        PERSONAL_NUMBER,
        PAGER,
        UAN,
        VOICEMAIL,
        UNKNOWN
    }

    /* compiled from: Twttr */
    public enum ValidationResult {
        IS_POSSIBLE,
        INVALID_COUNTRY_CODE,
        TOO_SHORT,
        TOO_LONG
    }

    static {
        a = new h();
        g = Logger.getLogger(PhoneNumberUtil.class.getName());
        Map hashMap = new HashMap();
        hashMap.put(Integer.valueOf(52), "1");
        hashMap.put(Integer.valueOf(54), "9");
        h = Collections.unmodifiableMap(hashMap);
        Set hashSet = new HashSet();
        hashSet.add(Integer.valueOf(52));
        hashSet.add(Integer.valueOf(54));
        hashSet.add(Integer.valueOf(55));
        i = Collections.unmodifiableSet(hashSet);
        Map hashMap2 = new HashMap();
        hashMap2.put(Character.valueOf('0'), Character.valueOf('0'));
        hashMap2.put(Character.valueOf('1'), Character.valueOf('1'));
        hashMap2.put(Character.valueOf('2'), Character.valueOf('2'));
        hashMap2.put(Character.valueOf('3'), Character.valueOf('3'));
        hashMap2.put(Character.valueOf('4'), Character.valueOf('4'));
        hashMap2.put(Character.valueOf('5'), Character.valueOf('5'));
        hashMap2.put(Character.valueOf('6'), Character.valueOf('6'));
        hashMap2.put(Character.valueOf('7'), Character.valueOf('7'));
        hashMap2.put(Character.valueOf('8'), Character.valueOf('8'));
        hashMap2.put(Character.valueOf('9'), Character.valueOf('9'));
        hashMap = new HashMap(40);
        hashMap.put(Character.valueOf('A'), Character.valueOf('2'));
        hashMap.put(Character.valueOf('B'), Character.valueOf('2'));
        hashMap.put(Character.valueOf('C'), Character.valueOf('2'));
        hashMap.put(Character.valueOf('D'), Character.valueOf('3'));
        hashMap.put(Character.valueOf('E'), Character.valueOf('3'));
        hashMap.put(Character.valueOf('F'), Character.valueOf('3'));
        hashMap.put(Character.valueOf('G'), Character.valueOf('4'));
        hashMap.put(Character.valueOf('H'), Character.valueOf('4'));
        hashMap.put(Character.valueOf('I'), Character.valueOf('4'));
        hashMap.put(Character.valueOf('J'), Character.valueOf('5'));
        hashMap.put(Character.valueOf('K'), Character.valueOf('5'));
        hashMap.put(Character.valueOf('L'), Character.valueOf('5'));
        hashMap.put(Character.valueOf('M'), Character.valueOf('6'));
        hashMap.put(Character.valueOf('N'), Character.valueOf('6'));
        hashMap.put(Character.valueOf('O'), Character.valueOf('6'));
        hashMap.put(Character.valueOf('P'), Character.valueOf('7'));
        hashMap.put(Character.valueOf('Q'), Character.valueOf('7'));
        hashMap.put(Character.valueOf('R'), Character.valueOf('7'));
        hashMap.put(Character.valueOf('S'), Character.valueOf('7'));
        hashMap.put(Character.valueOf('T'), Character.valueOf('8'));
        hashMap.put(Character.valueOf('U'), Character.valueOf('8'));
        hashMap.put(Character.valueOf('V'), Character.valueOf('8'));
        hashMap.put(Character.valueOf('W'), Character.valueOf('9'));
        hashMap.put(Character.valueOf('X'), Character.valueOf('9'));
        hashMap.put(Character.valueOf('Y'), Character.valueOf('9'));
        hashMap.put(Character.valueOf('Z'), Character.valueOf('9'));
        k = Collections.unmodifiableMap(hashMap);
        hashMap = new HashMap(100);
        hashMap.putAll(k);
        hashMap.putAll(hashMap2);
        l = Collections.unmodifiableMap(hashMap);
        hashMap = new HashMap();
        hashMap.putAll(hashMap2);
        hashMap.put(Character.valueOf('+'), Character.valueOf('+'));
        hashMap.put(Character.valueOf('*'), Character.valueOf('*'));
        j = Collections.unmodifiableMap(hashMap);
        Map hashMap3 = new HashMap();
        for (Character charValue : k.keySet()) {
            char charValue2 = charValue.charValue();
            hashMap3.put(Character.valueOf(Character.toLowerCase(charValue2)), Character.valueOf(charValue2));
            hashMap3.put(Character.valueOf(charValue2), Character.valueOf(charValue2));
        }
        hashMap3.putAll(hashMap2);
        hashMap3.put(Character.valueOf('-'), Character.valueOf('-'));
        hashMap3.put(Character.valueOf('\uff0d'), Character.valueOf('-'));
        hashMap3.put(Character.valueOf('\u2010'), Character.valueOf('-'));
        hashMap3.put(Character.valueOf('\u2011'), Character.valueOf('-'));
        hashMap3.put(Character.valueOf('\u2012'), Character.valueOf('-'));
        hashMap3.put(Character.valueOf('\u2013'), Character.valueOf('-'));
        hashMap3.put(Character.valueOf('\u2014'), Character.valueOf('-'));
        hashMap3.put(Character.valueOf('\u2015'), Character.valueOf('-'));
        hashMap3.put(Character.valueOf('\u2212'), Character.valueOf('-'));
        hashMap3.put(Character.valueOf('/'), Character.valueOf('/'));
        hashMap3.put(Character.valueOf('\uff0f'), Character.valueOf('/'));
        hashMap3.put(Character.valueOf(' '), Character.valueOf(' '));
        hashMap3.put(Character.valueOf('\u3000'), Character.valueOf(' '));
        hashMap3.put(Character.valueOf('\u2060'), Character.valueOf(' '));
        hashMap3.put(Character.valueOf('.'), Character.valueOf('.'));
        hashMap3.put(Character.valueOf('\uff0e'), Character.valueOf('.'));
        m = Collections.unmodifiableMap(hashMap3);
        n = Pattern.compile("[\\d]+(?:[~\u2053\u223c\uff5e][\\d]+)?");
        String valueOf = String.valueOf(Arrays.toString(k.keySet().toArray()).replaceAll("[, \\[\\]]", TtmlNode.ANONYMOUS_REGION_ID));
        String valueOf2 = String.valueOf(Arrays.toString(k.keySet().toArray()).toLowerCase().replaceAll("[, \\[\\]]", TtmlNode.ANONYMOUS_REGION_ID));
        if (valueOf2.length() != 0) {
            valueOf2 = valueOf.concat(valueOf2);
        } else {
            valueOf2 = new String(valueOf);
        }
        o = valueOf2;
        b = Pattern.compile("[+\uff0b]+");
        p = Pattern.compile("[-x\u2010-\u2015\u2212\u30fc\uff0d-\uff0f \u00a0\u00ad\u200b\u2060\u3000()\uff08\uff09\uff3b\uff3d.\\[\\]/~\u2053\u223c\uff5e]+");
        q = Pattern.compile("(\\p{Nd})");
        r = Pattern.compile("[+\uff0b\\p{Nd}]");
        c = Pattern.compile("[\\\\/] *x");
        d = Pattern.compile("[[\\P{N}&&\\P{L}]&&[^#]]+$");
        s = Pattern.compile("(?:.*?[A-Za-z]){3}.*");
        valueOf2 = String.valueOf(String.valueOf("\\p{Nd}{2}|[+\uff0b]*+(?:[-x\u2010-\u2015\u2212\u30fc\uff0d-\uff0f \u00a0\u00ad\u200b\u2060\u3000()\uff08\uff09\uff3b\uff3d.\\[\\]/~\u2053\u223c\uff5e*]*\\p{Nd}){3,}[-x\u2010-\u2015\u2212\u30fc\uff0d-\uff0f \u00a0\u00ad\u200b\u2060\u3000()\uff08\uff09\uff3b\uff3d.\\[\\]/~\u2053\u223c\uff5e*"));
        valueOf = String.valueOf(String.valueOf(o));
        String valueOf3 = String.valueOf(String.valueOf("\\p{Nd}"));
        t = new StringBuilder(((valueOf2.length() + 2) + valueOf.length()) + valueOf3.length()).append(valueOf2).append(valueOf).append(valueOf3).append("]*").toString();
        valueOf = "x\uff58#\uff03~\uff5e";
        valueOf3 = ",";
        valueOf2 = String.valueOf(valueOf);
        u = i(valueOf2.length() != 0 ? valueOf3.concat(valueOf2) : new String(valueOf3));
        e = i(valueOf);
        valueOf2 = String.valueOf(String.valueOf(u));
        v = Pattern.compile(new StringBuilder(valueOf2.length() + 5).append("(?:").append(valueOf2).append(")$").toString(), 66);
        valueOf2 = String.valueOf(String.valueOf(t));
        valueOf = String.valueOf(String.valueOf(u));
        w = Pattern.compile(new StringBuilder((valueOf2.length() + 5) + valueOf.length()).append(valueOf2).append("(?:").append(valueOf).append(")?").toString(), 66);
        f = Pattern.compile("(\\D+)");
        x = Pattern.compile("(\\$\\d)");
        y = Pattern.compile("\\$NP");
        z = Pattern.compile("\\$FG");
        A = Pattern.compile("\\$CC");
        B = Pattern.compile("\\(?\\$1\\)?");
        C = null;
    }

    private static String i(String str) {
        String valueOf = String.valueOf(String.valueOf(";ext=(\\p{Nd}{1,7})|[ \u00a0\\t,]*(?:e?xt(?:ensi(?:o\u0301?|\u00f3))?n?|\uff45?\uff58\uff54\uff4e?|["));
        String valueOf2 = String.valueOf(String.valueOf(str));
        String valueOf3 = String.valueOf(String.valueOf("(\\p{Nd}{1,7})"));
        String valueOf4 = String.valueOf(String.valueOf("\\p{Nd}"));
        return new StringBuilder((((valueOf.length() + 48) + valueOf2.length()) + valueOf3.length()) + valueOf4.length()).append(valueOf).append(valueOf2).append("]|int|anexo|\uff49\uff4e\uff54)").append("[:\\.\uff0e]?[ \u00a0\\t,-]*").append(valueOf3).append("#?|").append("[- ]+(").append(valueOf4).append("{1,5})#").toString();
    }

    PhoneNumberUtil(f fVar, Map<Integer, List<String>> map) {
        this.F = new HashSet(35);
        this.G = new j(100);
        this.H = new HashSet(320);
        this.I = new HashSet();
        this.D = fVar;
        this.E = map;
        for (Entry entry : map.entrySet()) {
            List list = (List) entry.getValue();
            if (list.size() == 1 && "001".equals(list.get(0))) {
                this.I.add(entry.getKey());
            } else {
                this.H.addAll(list);
            }
        }
        if (this.H.remove("001")) {
            g.log(Level.WARNING, "invalid metadata (country calling code was mapped to the non-geo entity as well as specific region(s))");
        }
        this.F.addAll((Collection) map.get(Integer.valueOf(1)));
    }

    static String a(String str) {
        Matcher matcher = r.matcher(str);
        if (!matcher.find()) {
            return TtmlNode.ANONYMOUS_REGION_ID;
        }
        String substring = str.substring(matcher.start());
        Matcher matcher2 = d.matcher(substring);
        if (matcher2.find()) {
            String substring2 = substring.substring(0, matcher2.start());
            Logger logger = g;
            Level level = Level.FINER;
            String str2 = "Stripped trailing characters: ";
            substring = String.valueOf(substring2);
            logger.log(level, substring.length() != 0 ? str2.concat(substring) : new String(str2));
            substring = substring2;
        }
        matcher2 = c.matcher(substring);
        if (matcher2.find()) {
            return substring.substring(0, matcher2.start());
        }
        return substring;
    }

    static boolean b(String str) {
        if (str.length() < 2) {
            return false;
        }
        return w.matcher(str).matches();
    }

    static String c(String str) {
        if (s.matcher(str).matches()) {
            return a(str, l, true);
        }
        return d(str);
    }

    static void a(StringBuilder stringBuilder) {
        stringBuilder.replace(0, stringBuilder.length(), c(stringBuilder.toString()));
    }

    public static String d(String str) {
        return a(str, false).toString();
    }

    static StringBuilder a(String str, boolean z) {
        StringBuilder stringBuilder = new StringBuilder(str.length());
        for (char c : str.toCharArray()) {
            int digit = Character.digit(c, 10);
            if (digit != -1) {
                stringBuilder.append(digit);
            } else if (z) {
                stringBuilder.append(c);
            }
        }
        return stringBuilder;
    }

    private static String a(String str, Map<Character, Character> map, boolean z) {
        StringBuilder stringBuilder = new StringBuilder(str.length());
        for (int i = 0; i < str.length(); i++) {
            char charAt = str.charAt(i);
            Character ch = (Character) map.get(Character.valueOf(Character.toUpperCase(charAt)));
            if (ch != null) {
                stringBuilder.append(ch);
            } else if (!z) {
                stringBuilder.append(charAt);
            }
        }
        return stringBuilder.toString();
    }

    static synchronized void a(PhoneNumberUtil phoneNumberUtil) {
        synchronized (PhoneNumberUtil.class) {
            C = phoneNumberUtil;
        }
    }

    public static synchronized PhoneNumberUtil a() {
        PhoneNumberUtil phoneNumberUtil;
        synchronized (PhoneNumberUtil.class) {
            if (C == null) {
                a(a(a));
            }
            phoneNumberUtil = C;
        }
        return phoneNumberUtil;
    }

    public static PhoneNumberUtil a(f fVar) {
        if (fVar != null) {
            return new PhoneNumberUtil(fVar, c.a());
        }
        throw new IllegalArgumentException("metadataSource could not be null.");
    }

    public static PhoneNumberUtil a(d dVar) {
        if (dVar != null) {
            return a(new g(dVar));
        }
        throw new IllegalArgumentException("metadataLoader could not be null.");
    }

    static boolean e(String str) {
        return str.length() == 0 || B.matcher(str).matches();
    }

    private boolean j(String str) {
        return str != null && this.H.contains(str);
    }

    private boolean c(int i) {
        return this.E.containsKey(Integer.valueOf(i));
    }

    public String a(PhoneNumber phoneNumber, PhoneNumberFormat phoneNumberFormat) {
        if (phoneNumber.d() == 0 && phoneNumber.k()) {
            String l = phoneNumber.l();
            if (l.length() > 0) {
                return l;
            }
        }
        StringBuilder stringBuilder = new StringBuilder(20);
        a(phoneNumber, phoneNumberFormat, stringBuilder);
        return stringBuilder.toString();
    }

    public void a(PhoneNumber phoneNumber, PhoneNumberFormat phoneNumberFormat, StringBuilder stringBuilder) {
        stringBuilder.setLength(0);
        int b = phoneNumber.b();
        String a = a(phoneNumber);
        if (phoneNumberFormat == PhoneNumberFormat.E164) {
            stringBuilder.append(a);
            a(b, PhoneNumberFormat.E164, stringBuilder);
        } else if (c(b)) {
            rc a2 = a(b, b(b));
            stringBuilder.append(a(a, a2, phoneNumberFormat));
            a(phoneNumber, a2, phoneNumberFormat, stringBuilder);
            a(b, phoneNumberFormat, stringBuilder);
        } else {
            stringBuilder.append(a);
        }
    }

    private rc a(int i, String str) {
        return "001".equals(str) ? a(i) : f(str);
    }

    public String a(PhoneNumber phoneNumber) {
        StringBuilder stringBuilder = new StringBuilder();
        if (phoneNumber.h()) {
            char[] cArr = new char[phoneNumber.j()];
            Arrays.fill(cArr, '0');
            stringBuilder.append(new String(cArr));
        }
        stringBuilder.append(phoneNumber.d());
        return stringBuilder.toString();
    }

    private void a(int i, PhoneNumberFormat phoneNumberFormat, StringBuilder stringBuilder) {
        switch (i.b[phoneNumberFormat.ordinal()]) {
            case ModuleDescriptor.MODULE_VERSION /*1*/:
                stringBuilder.insert(0, i).insert(0, '+');
            case Buffer.FLAG_DECODE_ONLY /*2*/:
                stringBuilder.insert(0, " ").insert(0, i).insert(0, '+');
            case Util.TYPE_OTHER /*3*/:
                stringBuilder.insert(0, "-").insert(0, i).insert(0, '+').insert(0, "tel:");
            default:
        }
    }

    private String a(String str, rc rcVar, PhoneNumberFormat phoneNumberFormat) {
        return a(str, rcVar, phoneNumberFormat, null);
    }

    private String a(String str, rc rcVar, PhoneNumberFormat phoneNumberFormat, String str2) {
        rb[] rbVarArr = (rcVar.A.length == 0 || phoneNumberFormat == PhoneNumberFormat.NATIONAL) ? rcVar.z : rcVar.A;
        rb a = a(rbVarArr, str);
        if (a == null) {
            return str;
        }
        return a(str, a, phoneNumberFormat, str2);
    }

    rb a(rb[] rbVarArr, String str) {
        for (rb rbVar : rbVarArr) {
            int length = rbVar.c.length;
            if ((length == 0 || this.G.a(rbVar.c[length - 1]).matcher(str).lookingAt()) && this.G.a(rbVar.a).matcher(str).matches()) {
                return rbVar;
            }
        }
        return null;
    }

    private String a(String str, rb rbVar, PhoneNumberFormat phoneNumberFormat, String str2) {
        CharSequence replaceAll;
        Object obj = rbVar.b;
        Matcher matcher = this.G.a(rbVar.a).matcher(str);
        String str3 = TtmlNode.ANONYMOUS_REGION_ID;
        if (phoneNumberFormat != PhoneNumberFormat.NATIONAL || str2 == null || str2.length() <= 0 || rbVar.f.length() <= 0) {
            str3 = rbVar.d;
            if (phoneNumberFormat != PhoneNumberFormat.NATIONAL || str3 == null || str3.length() <= 0) {
                replaceAll = matcher.replaceAll(obj);
            } else {
                replaceAll = matcher.replaceAll(x.matcher(obj).replaceFirst(str3));
            }
        } else {
            replaceAll = matcher.replaceAll(x.matcher(obj).replaceFirst(A.matcher(rbVar.f).replaceFirst(str2)));
        }
        if (phoneNumberFormat != PhoneNumberFormat.RFC3966) {
            return replaceAll;
        }
        matcher = p.matcher(replaceAll);
        if (matcher.lookingAt()) {
            replaceAll = matcher.replaceFirst(TtmlNode.ANONYMOUS_REGION_ID);
        }
        return matcher.reset(replaceAll).replaceAll("-");
    }

    private void a(PhoneNumber phoneNumber, rc rcVar, PhoneNumberFormat phoneNumberFormat, StringBuilder stringBuilder) {
        if (phoneNumber.e() && phoneNumber.f().length() > 0) {
            if (phoneNumberFormat == PhoneNumberFormat.RFC3966) {
                stringBuilder.append(";ext=").append(phoneNumber.f());
            } else if (rcVar.v.equals(TtmlNode.ANONYMOUS_REGION_ID)) {
                stringBuilder.append(" ext. ").append(phoneNumber.f());
            } else {
                stringBuilder.append(rcVar.v).append(phoneNumber.f());
            }
        }
    }

    private PhoneNumberType a(String str, rc rcVar) {
        if (!b(str, rcVar.a)) {
            return PhoneNumberType.UNKNOWN;
        }
        if (b(str, rcVar.e)) {
            return PhoneNumberType.PREMIUM_RATE;
        }
        if (b(str, rcVar.d)) {
            return PhoneNumberType.TOLL_FREE;
        }
        if (b(str, rcVar.f)) {
            return PhoneNumberType.SHARED_COST;
        }
        if (b(str, rcVar.h)) {
            return PhoneNumberType.VOIP;
        }
        if (b(str, rcVar.g)) {
            return PhoneNumberType.PERSONAL_NUMBER;
        }
        if (b(str, rcVar.i)) {
            return PhoneNumberType.PAGER;
        }
        if (b(str, rcVar.j)) {
            return PhoneNumberType.UAN;
        }
        if (b(str, rcVar.l)) {
            return PhoneNumberType.VOICEMAIL;
        }
        if (b(str, rcVar.b)) {
            if (rcVar.y) {
                return PhoneNumberType.FIXED_LINE_OR_MOBILE;
            }
            if (b(str, rcVar.c)) {
                return PhoneNumberType.FIXED_LINE_OR_MOBILE;
            }
            return PhoneNumberType.FIXED_LINE;
        } else if (rcVar.y || !b(str, rcVar.c)) {
            return PhoneNumberType.UNKNOWN;
        } else {
            return PhoneNumberType.MOBILE;
        }
    }

    rc f(String str) {
        if (j(str)) {
            return this.D.a(str);
        }
        return null;
    }

    rc a(int i) {
        if (this.E.containsKey(Integer.valueOf(i))) {
            return this.D.a(i);
        }
        return null;
    }

    boolean a(String str, re reVar) {
        return this.G.a(reVar.b).matcher(str).matches();
    }

    boolean b(String str, re reVar) {
        return a(str, reVar) && this.G.a(reVar.a).matcher(str).matches();
    }

    public boolean b(PhoneNumber phoneNumber) {
        return a(phoneNumber, c(phoneNumber));
    }

    public boolean a(PhoneNumber phoneNumber, String str) {
        int b = phoneNumber.b();
        rc a = a(b, str);
        if (a == null) {
            return false;
        }
        if (("001".equals(str) || b == k(str)) && a(a(phoneNumber), a) != PhoneNumberType.UNKNOWN) {
            return true;
        }
        return false;
    }

    public String c(PhoneNumber phoneNumber) {
        int b = phoneNumber.b();
        List list = (List) this.E.get(Integer.valueOf(b));
        if (list == null) {
            String a = a(phoneNumber);
            Logger logger = g;
            Level level = Level.INFO;
            a = String.valueOf(String.valueOf(a));
            logger.log(level, new StringBuilder(a.length() + 54).append("Missing/invalid country_code (").append(b).append(") for number ").append(a).toString());
            return null;
        } else if (list.size() == 1) {
            return (String) list.get(0);
        } else {
            return a(phoneNumber, list);
        }
    }

    private String a(PhoneNumber phoneNumber, List<String> list) {
        String a = a(phoneNumber);
        for (String str : list) {
            rc f = f(str);
            if (f.C.equals(TtmlNode.ANONYMOUS_REGION_ID)) {
                if (a(a, f) != PhoneNumberType.UNKNOWN) {
                    return str;
                }
            } else if (this.G.a(f.C).matcher(a).lookingAt()) {
                return str;
            }
        }
        return null;
    }

    public String b(int i) {
        List list = (List) this.E.get(Integer.valueOf(i));
        return list == null ? "ZZ" : (String) list.get(0);
    }

    public int g(String str) {
        if (j(str)) {
            return k(str);
        }
        Logger logger = g;
        Level level = Level.WARNING;
        if (str == null) {
            str = "null";
        }
        String valueOf = String.valueOf(String.valueOf(str));
        logger.log(level, new StringBuilder(valueOf.length() + 43).append("Invalid or missing region code (").append(valueOf).append(") provided.").toString());
        return 0;
    }

    private int k(String str) {
        rc f = f(str);
        if (f != null) {
            return f.r;
        }
        String str2 = "Invalid region code: ";
        String valueOf = String.valueOf(str);
        throw new IllegalArgumentException(valueOf.length() != 0 ? str2.concat(valueOf) : new String(str2));
    }

    private ValidationResult a(Pattern pattern, String str) {
        Matcher matcher = pattern.matcher(str);
        if (matcher.matches()) {
            return ValidationResult.IS_POSSIBLE;
        }
        if (matcher.lookingAt()) {
            return ValidationResult.TOO_LONG;
        }
        return ValidationResult.TOO_SHORT;
    }

    private boolean a(rc rcVar, String str) {
        return a(this.G.a(rcVar.a.b), str) == ValidationResult.TOO_SHORT;
    }

    public b h(String str) {
        return new b(str);
    }

    int a(StringBuilder stringBuilder, StringBuilder stringBuilder2) {
        if (stringBuilder.length() == 0 || stringBuilder.charAt(0) == '0') {
            return 0;
        }
        int length = stringBuilder.length();
        int i = 1;
        while (i <= 3 && i <= length) {
            int parseInt = Integer.parseInt(stringBuilder.substring(0, i));
            if (this.E.containsKey(Integer.valueOf(parseInt))) {
                stringBuilder2.append(stringBuilder.substring(i));
                return parseInt;
            }
            i++;
        }
        return 0;
    }

    int a(String str, rc rcVar, StringBuilder stringBuilder, boolean z, PhoneNumber phoneNumber) throws NumberParseException {
        if (str.length() == 0) {
            return 0;
        }
        StringBuilder stringBuilder2 = new StringBuilder(str);
        String str2 = "NonMatch";
        if (rcVar != null) {
            str2 = rcVar.s;
        }
        CountryCodeSource a = a(stringBuilder2, str2);
        if (z) {
            phoneNumber.a(a);
        }
        int i;
        if (a == CountryCodeSource.FROM_DEFAULT_COUNTRY) {
            if (rcVar != null) {
                i = rcVar.r;
                String valueOf = String.valueOf(i);
                String stringBuilder3 = stringBuilder2.toString();
                if (stringBuilder3.startsWith(valueOf)) {
                    StringBuilder stringBuilder4 = new StringBuilder(stringBuilder3.substring(valueOf.length()));
                    re reVar = rcVar.a;
                    Pattern a2 = this.G.a(reVar.a);
                    a(stringBuilder4, rcVar, null);
                    Pattern a3 = this.G.a(reVar.b);
                    if ((!a2.matcher(stringBuilder2).matches() && a2.matcher(stringBuilder4).matches()) || a(a3, stringBuilder2.toString()) == ValidationResult.TOO_LONG) {
                        stringBuilder.append(stringBuilder4);
                        if (z) {
                            phoneNumber.a(CountryCodeSource.FROM_NUMBER_WITHOUT_PLUS_SIGN);
                        }
                        phoneNumber.a(i);
                        return i;
                    }
                }
            }
            phoneNumber.a(0);
            return 0;
        } else if (stringBuilder2.length() <= 2) {
            throw new NumberParseException(ErrorType.TOO_SHORT_AFTER_IDD, "Phone number had an IDD, but after this was not long enough to be a viable phone number.");
        } else {
            i = a(stringBuilder2, stringBuilder);
            if (i != 0) {
                phoneNumber.a(i);
                return i;
            }
            throw new NumberParseException(ErrorType.INVALID_COUNTRY_CODE, "Country calling code supplied was not recognised.");
        }
    }

    private boolean a(Pattern pattern, StringBuilder stringBuilder) {
        Matcher matcher = pattern.matcher(stringBuilder);
        if (!matcher.lookingAt()) {
            return false;
        }
        int end = matcher.end();
        Matcher matcher2 = q.matcher(stringBuilder.substring(end));
        if (matcher2.find() && d(matcher2.group(1)).equals("0")) {
            return false;
        }
        stringBuilder.delete(0, end);
        return true;
    }

    CountryCodeSource a(StringBuilder stringBuilder, String str) {
        if (stringBuilder.length() == 0) {
            return CountryCodeSource.FROM_DEFAULT_COUNTRY;
        }
        Matcher matcher = b.matcher(stringBuilder);
        if (matcher.lookingAt()) {
            stringBuilder.delete(0, matcher.end());
            a(stringBuilder);
            return CountryCodeSource.FROM_NUMBER_WITH_PLUS_SIGN;
        }
        Pattern a = this.G.a(str);
        a(stringBuilder);
        return a(a, stringBuilder) ? CountryCodeSource.FROM_NUMBER_WITH_IDD : CountryCodeSource.FROM_DEFAULT_COUNTRY;
    }

    boolean a(StringBuilder stringBuilder, rc rcVar, StringBuilder stringBuilder2) {
        int length = stringBuilder.length();
        String str = rcVar.w;
        if (length == 0 || str.length() == 0) {
            return false;
        }
        Matcher matcher = this.G.a(str).matcher(stringBuilder);
        if (!matcher.lookingAt()) {
            return false;
        }
        Pattern a = this.G.a(rcVar.a.a);
        boolean matches = a.matcher(stringBuilder).matches();
        int groupCount = matcher.groupCount();
        String str2 = rcVar.x;
        if (str2 != null && str2.length() != 0 && matcher.group(groupCount) != null) {
            StringBuilder stringBuilder3 = new StringBuilder(stringBuilder);
            stringBuilder3.replace(0, length, matcher.replaceFirst(str2));
            if (matches && !a.matcher(stringBuilder3.toString()).matches()) {
                return false;
            }
            if (stringBuilder2 != null && groupCount > 1) {
                stringBuilder2.append(matcher.group(1));
            }
            stringBuilder.replace(0, stringBuilder.length(), stringBuilder3.toString());
            return true;
        } else if (matches && !a.matcher(stringBuilder.substring(matcher.end())).matches()) {
            return false;
        } else {
            if (!(stringBuilder2 == null || groupCount <= 0 || matcher.group(groupCount) == null)) {
                stringBuilder2.append(matcher.group(1));
            }
            stringBuilder.delete(0, matcher.end());
            return true;
        }
    }

    String b(StringBuilder stringBuilder) {
        Matcher matcher = v.matcher(stringBuilder);
        if (matcher.find() && b(stringBuilder.substring(0, matcher.start()))) {
            int groupCount = matcher.groupCount();
            for (int i = 1; i <= groupCount; i++) {
                if (matcher.group(i) != null) {
                    String group = matcher.group(i);
                    stringBuilder.delete(matcher.start(), stringBuilder.length());
                    return group;
                }
            }
        }
        return TtmlNode.ANONYMOUS_REGION_ID;
    }

    private boolean b(String str, String str2) {
        if (j(str2) || (str != null && str.length() != 0 && b.matcher(str).lookingAt())) {
            return true;
        }
        return false;
    }

    public PhoneNumber a(String str, String str2) throws NumberParseException {
        PhoneNumber phoneNumber = new PhoneNumber();
        a(str, str2, phoneNumber);
        return phoneNumber;
    }

    public void a(String str, String str2, PhoneNumber phoneNumber) throws NumberParseException {
        a(str, str2, false, true, phoneNumber);
    }

    static void a(String str, PhoneNumber phoneNumber) {
        if (str.length() > 1 && str.charAt(0) == '0') {
            phoneNumber.a(true);
            int i = 1;
            while (i < str.length() - 1 && str.charAt(i) == '0') {
                i++;
            }
            if (i != 1) {
                phoneNumber.b(i);
            }
        }
    }

    private void a(String str, String str2, boolean z, boolean z2, PhoneNumber phoneNumber) throws NumberParseException {
        if (str == null) {
            throw new NumberParseException(ErrorType.NOT_A_NUMBER, "The phone number supplied was null.");
        } else if (str.length() > Callback.DEFAULT_SWIPE_ANIMATION_DURATION) {
            throw new NumberParseException(ErrorType.TOO_LONG, "The string supplied was too long to parse.");
        } else {
            StringBuilder stringBuilder = new StringBuilder();
            a(str, stringBuilder);
            if (!b(stringBuilder.toString())) {
                throw new NumberParseException(ErrorType.NOT_A_NUMBER, "The string supplied did not seem to be a phone number.");
            } else if (!z2 || b(stringBuilder.toString(), str2)) {
                int a;
                if (z) {
                    phoneNumber.b(str);
                }
                String b = b(stringBuilder);
                if (b.length() > 0) {
                    phoneNumber.a(b);
                }
                rc f = f(str2);
                StringBuilder stringBuilder2 = new StringBuilder();
                try {
                    a = a(stringBuilder.toString(), f, stringBuilder2, z, phoneNumber);
                } catch (NumberParseException e) {
                    Matcher matcher = b.matcher(stringBuilder.toString());
                    if (e.a() == ErrorType.INVALID_COUNTRY_CODE && matcher.lookingAt()) {
                        a = a(stringBuilder.substring(matcher.end()), f, stringBuilder2, z, phoneNumber);
                        if (a == 0) {
                            throw new NumberParseException(ErrorType.INVALID_COUNTRY_CODE, "Could not interpret numbers after plus-sign.");
                        }
                    }
                    throw new NumberParseException(e.a(), e.getMessage());
                }
                if (a != 0) {
                    String b2 = b(a);
                    if (!b2.equals(str2)) {
                        f = a(a, b2);
                    }
                } else {
                    a(stringBuilder);
                    stringBuilder2.append(stringBuilder);
                    if (str2 != null) {
                        phoneNumber.a(f.r);
                    } else if (z) {
                        phoneNumber.o();
                    }
                }
                if (stringBuilder2.length() < 2) {
                    throw new NumberParseException(ErrorType.TOO_SHORT_NSN, "The string supplied is too short to be a phone number.");
                }
                if (f != null) {
                    StringBuilder stringBuilder3 = new StringBuilder();
                    StringBuilder stringBuilder4 = new StringBuilder(stringBuilder2);
                    a(stringBuilder4, f, stringBuilder3);
                    if (!a(f, stringBuilder4.toString())) {
                        if (z) {
                            phoneNumber.c(stringBuilder3.toString());
                        }
                        stringBuilder2 = stringBuilder4;
                    }
                }
                a = stringBuilder2.length();
                if (a < 2) {
                    throw new NumberParseException(ErrorType.TOO_SHORT_NSN, "The string supplied is too short to be a phone number.");
                } else if (a > 17) {
                    throw new NumberParseException(ErrorType.TOO_LONG, "The string supplied is too long to be a phone number.");
                } else {
                    a(stringBuilder2.toString(), phoneNumber);
                    phoneNumber.a(Long.parseLong(stringBuilder2.toString()));
                }
            } else {
                throw new NumberParseException(ErrorType.INVALID_COUNTRY_CODE, "Missing or invalid default region.");
            }
        }
    }

    private void a(String str, StringBuilder stringBuilder) {
        int length;
        int indexOf = str.indexOf(";phone-context=");
        if (indexOf > 0) {
            length = ";phone-context=".length() + indexOf;
            if (str.charAt(length) == '+') {
                int indexOf2 = str.indexOf(59, length);
                if (indexOf2 > 0) {
                    stringBuilder.append(str.substring(length, indexOf2));
                } else {
                    stringBuilder.append(str.substring(length));
                }
            }
            length = str.indexOf("tel:");
            stringBuilder.append(str.substring(length >= 0 ? length + "tel:".length() : 0, indexOf));
        } else {
            stringBuilder.append(a(str));
        }
        length = stringBuilder.indexOf(";isub=");
        if (length > 0) {
            stringBuilder.delete(length, stringBuilder.length());
        }
    }
}
