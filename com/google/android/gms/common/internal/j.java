package com.google.android.gms.common.internal;

import com.google.android.exoplayer.util.Util;
import com.google.android.exoplayer.util.extensions.Buffer;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.flags.ModuleDescriptor;
import java.util.Arrays;

public abstract class j {
    public static final j a;
    public static final j b;
    public static final j c;
    public static final j d;
    public static final j e;
    public static final j f;
    public static final j g;
    public static final j h;
    public static final j i;
    public static final j j;
    public static final j k;
    public static final j l;
    public static final j m;
    public static final j n;
    public static final j o;

    static {
        a = a((CharSequence) "\t\n\u000b\f\r \u0085\u1680\u2028\u2029\u205f\u3000\u00a0\u180e\u202f").a(a('\u2000', '\u200a'));
        b = a((CharSequence) "\t\n\u000b\f\r \u0085\u1680\u2028\u2029\u205f\u3000").a(a('\u2000', '\u2006')).a(a('\u2008', '\u200a'));
        c = a('\u0000', '\u007f');
        j a = a('0', '9');
        j jVar = a;
        for (char c : "\u0660\u06f0\u07c0\u0966\u09e6\u0a66\u0ae6\u0b66\u0be6\u0c66\u0ce6\u0d66\u0e50\u0ed0\u0f20\u1040\u1090\u17e0\u1810\u1946\u19d0\u1b50\u1bb0\u1c40\u1c50\ua620\ua8d0\ua900\uaa50\uff10".toCharArray()) {
            jVar = jVar.a(a(c, (char) (c + 9)));
        }
        d = jVar;
        e = a('\t', '\r').a(a('\u001c', ' ')).a(a('\u1680')).a(a('\u180e')).a(a('\u2000', '\u2006')).a(a('\u2008', '\u200b')).a(a('\u2028', '\u2029')).a(a('\u205f')).a(a('\u3000'));
        f = new k();
        g = new q();
        h = new r();
        i = new s();
        j = new t();
        k = a('\u0000', '\u001f').a(a('\u007f', '\u009f'));
        l = a('\u0000', ' ').a(a('\u007f', '\u00a0')).a(a('\u00ad')).a(a('\u0600', '\u0603')).a(a((CharSequence) "\u06dd\u070f\u1680\u17b4\u17b5\u180e")).a(a('\u2000', '\u200f')).a(a('\u2028', '\u202f')).a(a('\u205f', '\u2064')).a(a('\u206a', '\u206f')).a(a('\u3000')).a(a('\ud800', '\uf8ff')).a(a((CharSequence) "\ufeff\ufff9\ufffa\ufffb"));
        m = a('\u0000', '\u04f9').a(a('\u05be')).a(a('\u05d0', '\u05ea')).a(a('\u05f3')).a(a('\u05f4')).a(a('\u0600', '\u06ff')).a(a('\u0750', '\u077f')).a(a('\u0e00', '\u0e7f')).a(a('\u1e00', '\u20af')).a(a('\u2100', '\u213a')).a(a('\ufb50', '\ufdff')).a(a('\ufe70', '\ufeff')).a(a('\uff61', '\uffdc'));
        n = new u();
        o = new l();
    }

    public static j a(char c) {
        return new m(c);
    }

    public static j a(char c, char c2) {
        bm.b(c2 >= c);
        return new p(c, c2);
    }

    public static j a(CharSequence charSequence) {
        switch (charSequence.length()) {
            case Util.TYPE_DASH /*0*/:
                return o;
            case ModuleDescriptor.MODULE_VERSION /*1*/:
                return a(charSequence.charAt(0));
            case Buffer.FLAG_DECODE_ONLY /*2*/:
                return new n(charSequence.charAt(0), charSequence.charAt(1));
            default:
                char[] toCharArray = charSequence.toString().toCharArray();
                Arrays.sort(toCharArray);
                return new o(toCharArray);
        }
    }

    public j a(j jVar) {
        return new v(Arrays.asList(new j[]{this, (j) bm.a(jVar)}));
    }

    public abstract boolean b(char c);

    public boolean b(CharSequence charSequence) {
        for (int length = charSequence.length() - 1; length >= 0; length--) {
            if (!b(charSequence.charAt(length))) {
                return false;
            }
        }
        return true;
    }
}
