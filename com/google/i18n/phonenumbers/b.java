package com.google.i18n.phonenumbers;

import com.google.android.exoplayer.util.Util;
import com.google.android.exoplayer.util.extensions.Buffer;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.flags.ModuleDescriptor;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import rb;
import rc;

/* compiled from: Twttr */
public class b {
    private static final rc l;
    private static final Pattern o;
    private static final Pattern p;
    private static final Pattern q;
    private static final Pattern r;
    private static final Pattern s;
    private List<rb> A;
    private j B;
    private String a;
    private StringBuilder b;
    private String c;
    private StringBuilder d;
    private StringBuilder e;
    private boolean f;
    private boolean g;
    private boolean h;
    private boolean i;
    private final PhoneNumberUtil j;
    private String k;
    private rc m;
    private rc n;
    private int t;
    private int u;
    private int v;
    private StringBuilder w;
    private boolean x;
    private String y;
    private StringBuilder z;

    static {
        l = new rc();
        l.s = "NA";
        o = Pattern.compile("\\[([^\\[\\]])*\\]");
        p = Pattern.compile("\\d(?=[^,}][^,}])");
        q = Pattern.compile("[-x\u2010-\u2015\u2212\u30fc\uff0d-\uff0f \u00a0\u00ad\u200b\u2060\u3000()\uff08\uff09\uff3b\uff3d.\\[\\]/~\u2053\u223c\uff5e]*(\\$\\d[-x\u2010-\u2015\u2212\u30fc\uff0d-\uff0f \u00a0\u00ad\u200b\u2060\u3000()\uff08\uff09\uff3b\uff3d.\\[\\]/~\u2053\u223c\uff5e]*)+");
        r = Pattern.compile("[- ]");
        s = Pattern.compile("\u2008");
    }

    b(String str) {
        this.a = TtmlNode.ANONYMOUS_REGION_ID;
        this.b = new StringBuilder();
        this.c = TtmlNode.ANONYMOUS_REGION_ID;
        this.d = new StringBuilder();
        this.e = new StringBuilder();
        this.f = true;
        this.g = false;
        this.h = false;
        this.i = false;
        this.j = PhoneNumberUtil.a();
        this.t = 0;
        this.u = 0;
        this.v = 0;
        this.w = new StringBuilder();
        this.x = false;
        this.y = TtmlNode.ANONYMOUS_REGION_ID;
        this.z = new StringBuilder();
        this.A = new ArrayList();
        this.B = new j(64);
        this.k = str;
        this.n = a(this.k);
        this.m = this.n;
    }

    private rc a(String str) {
        rc f = this.j.f(this.j.b(this.j.g(str)));
        return f != null ? f : l;
    }

    private boolean d() {
        Iterator it = this.A.iterator();
        while (it.hasNext()) {
            rb rbVar = (rb) it.next();
            String str = rbVar.a;
            if (this.c.equals(str)) {
                return false;
            }
            if (a(rbVar)) {
                this.c = str;
                this.x = r.matcher(rbVar.d).find();
                this.t = 0;
                return true;
            }
            it.remove();
        }
        this.f = false;
        return false;
    }

    private void b(String str) {
        int i;
        int i2 = 0;
        rb[] rbVarArr = (!this.h || this.n.A.length <= 0) ? this.n.z : this.n.A;
        if (this.n.u.equals(TtmlNode.ANONYMOUS_REGION_ID)) {
            i = 0;
        } else {
            i = 1;
        }
        int length = rbVarArr.length;
        while (i2 < length) {
            rb rbVar = rbVarArr[i2];
            if ((i == 0 || this.h || rbVar.e || PhoneNumberUtil.e(rbVar.d)) && c(rbVar.b)) {
                this.A.add(rbVar);
            }
            i2++;
        }
        d(str);
    }

    private boolean c(String str) {
        return q.matcher(str).matches();
    }

    private void d(String str) {
        int length = str.length() - 3;
        Iterator it = this.A.iterator();
        while (it.hasNext()) {
            rb rbVar = (rb) it.next();
            if (rbVar.c.length != 0) {
                if (!this.B.a(rbVar.c[Math.min(length, rbVar.c.length - 1)]).matcher(str).lookingAt()) {
                    it.remove();
                }
            }
        }
    }

    private boolean a(rb rbVar) {
        CharSequence charSequence = rbVar.a;
        if (charSequence.indexOf(124) != -1) {
            return false;
        }
        String replaceAll = p.matcher(o.matcher(charSequence).replaceAll("\\\\d")).replaceAll("\\\\d");
        this.b.setLength(0);
        replaceAll = a(replaceAll, rbVar.b);
        if (replaceAll.length() <= 0) {
            return false;
        }
        this.b.append(replaceAll);
        return true;
    }

    private String a(String str, String str2) {
        Matcher matcher = this.B.a(str).matcher("999999999999999");
        matcher.find();
        String group = matcher.group();
        if (group.length() < this.z.length()) {
            return TtmlNode.ANONYMOUS_REGION_ID;
        }
        return group.replaceAll(str, str2).replaceAll("9", "\u2008");
    }

    public void a() {
        this.a = TtmlNode.ANONYMOUS_REGION_ID;
        this.d.setLength(0);
        this.e.setLength(0);
        this.b.setLength(0);
        this.t = 0;
        this.c = TtmlNode.ANONYMOUS_REGION_ID;
        this.w.setLength(0);
        this.y = TtmlNode.ANONYMOUS_REGION_ID;
        this.z.setLength(0);
        this.f = true;
        this.g = false;
        this.v = 0;
        this.u = 0;
        this.h = false;
        this.i = false;
        this.A.clear();
        this.x = false;
        if (!this.n.equals(this.m)) {
            this.n = a(this.k);
        }
    }

    public String a(char c) {
        this.a = a(c, false);
        return this.a;
    }

    public String b(char c) {
        this.a = a(c, true);
        return this.a;
    }

    private String a(char c, boolean z) {
        this.d.append(c);
        if (z) {
            this.u = this.d.length();
        }
        if (c(c)) {
            c = b(c, z);
        } else {
            this.f = false;
            this.g = true;
        }
        if (this.f) {
            switch (this.e.length()) {
                case Util.TYPE_DASH /*0*/:
                case ModuleDescriptor.MODULE_VERSION /*1*/:
                case Buffer.FLAG_DECODE_ONLY /*2*/:
                    return this.d.toString();
                case Util.TYPE_OTHER /*3*/:
                    if (k()) {
                        this.i = true;
                        break;
                    }
                    this.y = j();
                    return g();
            }
            String valueOf;
            String valueOf2;
            if (this.i) {
                if (l()) {
                    this.i = false;
                }
                valueOf = String.valueOf(String.valueOf(this.w));
                valueOf2 = String.valueOf(String.valueOf(this.z.toString()));
                return new StringBuilder((valueOf.length() + 0) + valueOf2.length()).append(valueOf).append(valueOf2).toString();
            } else if (this.A.size() <= 0) {
                return g();
            } else {
                valueOf2 = d(c);
                valueOf = b();
                if (valueOf.length() > 0) {
                    return valueOf;
                }
                d(this.z.toString());
                if (d()) {
                    return h();
                }
                return this.f ? e(valueOf2) : this.d.toString();
            }
        } else if (this.g) {
            return this.d.toString();
        } else {
            if (k()) {
                if (l()) {
                    return e();
                }
            } else if (f()) {
                this.w.append(' ');
                return e();
            }
            return this.d.toString();
        }
    }

    private String e() {
        this.f = true;
        this.i = false;
        this.A.clear();
        this.t = 0;
        this.b.setLength(0);
        this.c = TtmlNode.ANONYMOUS_REGION_ID;
        return g();
    }

    private boolean f() {
        if (this.y.length() > 0) {
            this.z.insert(0, this.y);
            this.w.setLength(this.w.lastIndexOf(this.y));
        }
        if (this.y.equals(j())) {
            return false;
        }
        return true;
    }

    private boolean c(char c) {
        if (Character.isDigit(c)) {
            return true;
        }
        return this.d.length() == 1 && PhoneNumberUtil.b.matcher(Character.toString(c)).matches();
    }

    String b() {
        for (rb rbVar : this.A) {
            Matcher matcher = this.B.a(rbVar.a).matcher(this.z);
            if (matcher.matches()) {
                this.x = r.matcher(rbVar.d).find();
                return e(matcher.replaceAll(rbVar.b));
            }
        }
        return TtmlNode.ANONYMOUS_REGION_ID;
    }

    public int c() {
        int i = 0;
        if (!this.f) {
            return this.u;
        }
        int i2 = 0;
        while (i2 < this.v && i < this.a.length()) {
            if (this.e.charAt(i2) == this.a.charAt(i)) {
                i2++;
            }
            i++;
        }
        return i;
    }

    private String e(String str) {
        int length = this.w.length();
        if (!this.x || length <= 0 || this.w.charAt(length - 1) == ' ') {
            String valueOf = String.valueOf(String.valueOf(this.w));
            String valueOf2 = String.valueOf(String.valueOf(str));
            return new StringBuilder((valueOf.length() + 0) + valueOf2.length()).append(valueOf).append(valueOf2).toString();
        }
        valueOf = String.valueOf(String.valueOf(new String(this.w)));
        valueOf2 = String.valueOf(String.valueOf(str));
        return new StringBuilder((valueOf.length() + 1) + valueOf2.length()).append(valueOf).append(' ').append(valueOf2).toString();
    }

    private String g() {
        if (this.z.length() < 3) {
            return e(this.z.toString());
        }
        b(this.z.toString());
        String b = b();
        if (b.length() > 0) {
            return b;
        }
        return d() ? h() : this.d.toString();
    }

    private String h() {
        int length = this.z.length();
        if (length <= 0) {
            return this.w.toString();
        }
        String str = TtmlNode.ANONYMOUS_REGION_ID;
        for (int i = 0; i < length; i++) {
            str = d(this.z.charAt(i));
        }
        return this.f ? e(str) : this.d.toString();
    }

    private boolean i() {
        return this.n.r == 1 && this.z.charAt(0) == '1' && this.z.charAt(1) != '0' && this.z.charAt(1) != '1';
    }

    private String j() {
        int i = 1;
        if (i()) {
            this.w.append('1').append(' ');
            this.h = true;
        } else {
            if (!this.n.w.equals(TtmlNode.ANONYMOUS_REGION_ID)) {
                Matcher matcher = this.B.a(this.n.w).matcher(this.z);
                if (matcher.lookingAt() && matcher.end() > 0) {
                    this.h = true;
                    i = matcher.end();
                    this.w.append(this.z.substring(0, i));
                }
            }
            i = 0;
        }
        String substring = this.z.substring(0, i);
        this.z.delete(0, i);
        return substring;
    }

    private boolean k() {
        j jVar = this.B;
        String valueOf = String.valueOf("\\+|");
        String valueOf2 = String.valueOf(this.n.s);
        if (valueOf2.length() != 0) {
            valueOf2 = valueOf.concat(valueOf2);
        } else {
            valueOf2 = new String(valueOf);
        }
        Matcher matcher = jVar.a(valueOf2).matcher(this.e);
        if (!matcher.lookingAt()) {
            return false;
        }
        this.h = true;
        int end = matcher.end();
        this.z.setLength(0);
        this.z.append(this.e.substring(end));
        this.w.setLength(0);
        this.w.append(this.e.substring(0, end));
        if (this.e.charAt(0) != '+') {
            this.w.append(' ');
        }
        return true;
    }

    private boolean l() {
        if (this.z.length() == 0) {
            return false;
        }
        StringBuilder stringBuilder = new StringBuilder();
        int a = this.j.a(this.z, stringBuilder);
        if (a == 0) {
            return false;
        }
        this.z.setLength(0);
        this.z.append(stringBuilder);
        String b = this.j.b(a);
        if ("001".equals(b)) {
            this.n = this.j.a(a);
        } else if (!b.equals(this.k)) {
            this.n = a(b);
        }
        this.w.append(Integer.toString(a)).append(' ');
        this.y = TtmlNode.ANONYMOUS_REGION_ID;
        return true;
    }

    private char b(char c, boolean z) {
        if (c == '+') {
            this.e.append(c);
        } else {
            c = Character.forDigit(Character.digit(c, 10), 10);
            this.e.append(c);
            this.z.append(c);
        }
        if (z) {
            this.v = this.e.length();
        }
        return c;
    }

    private String d(char c) {
        Matcher matcher = s.matcher(this.b);
        if (matcher.find(this.t)) {
            String replaceFirst = matcher.replaceFirst(Character.toString(c));
            this.b.replace(0, replaceFirst.length(), replaceFirst);
            this.t = matcher.start();
            return this.b.substring(0, this.t + 1);
        }
        if (this.A.size() == 1) {
            this.f = false;
        }
        this.c = TtmlNode.ANONYMOUS_REGION_ID;
        return this.d.toString();
    }
}
