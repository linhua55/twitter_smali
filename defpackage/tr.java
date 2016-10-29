package defpackage;

import android.text.SpannableString;
import android.text.Spanned;
import android.text.TextUtils;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Set;
import tq;

/* compiled from: Twttr */
/* renamed from: tr */
public class tr extends to<tq> {
    private static final Set<Character> a;
    private boolean b;
    private boolean c;

    public tr() {
        this.b = false;
        this.c = false;
    }

    public /* synthetic */ Object b(CharSequence charSequence, int i) {
        return c(charSequence, i);
    }

    static {
        a = new HashSet(Arrays.asList(new Character[]{Character.valueOf(' '), Character.valueOf('\t'), Character.valueOf('\n'), Character.valueOf('.'), Character.valueOf('!'), Character.valueOf('?'), Character.valueOf(','), Character.valueOf(':'), Character.valueOf(';'), Character.valueOf('\''), Character.valueOf('\"'), Character.valueOf('`'), Character.valueOf('/'), Character.valueOf('\\'), Character.valueOf('-'), Character.valueOf('='), Character.valueOf('+'), Character.valueOf('~'), Character.valueOf('$'), Character.valueOf('%'), Character.valueOf('^'), Character.valueOf('&'), Character.valueOf('*'), Character.valueOf('('), Character.valueOf(')'), Character.valueOf('['), Character.valueOf(']'), Character.valueOf('{'), Character.valueOf('}'), Character.valueOf('<'), Character.valueOf('>'), Character.valueOf('|')}));
    }

    public tq c(CharSequence charSequence, int i) {
        tp a_ = a_(charSequence, i);
        if (a_ == null) {
            return null;
        }
        return new tq(charSequence.subSequence(a_.a + 1, a_.b).toString(), charSequence.charAt(a_.a) == '@' ? 1 : 2);
    }

    public tp a_(CharSequence charSequence, int i) {
        int i2 = i - 1;
        while (i2 >= 0) {
            char charAt = charSequence.charAt(i2);
            if (a.contains(Character.valueOf(charAt))) {
                i2 = -1;
                break;
            } else if ((!this.b || charAt != '@') && (!this.c || charAt != '#')) {
                i2--;
            } else if (!(i2 == 0 || a.contains(Character.valueOf(charSequence.charAt(i2 - 1))))) {
                i2 = -1;
            }
        }
        i2 = -1;
        if (i2 < 0) {
            return null;
        }
        int length = charSequence.length();
        while (i < length && !a.contains(Character.valueOf(charSequence.charAt(i)))) {
            i++;
        }
        return new tp(i2, i);
    }

    public CharSequence a(CharSequence charSequence) {
        if (!(charSequence instanceof Spanned)) {
            return charSequence + " ";
        }
        CharSequence spannableString = new SpannableString(charSequence + " ");
        TextUtils.copySpansFrom((Spanned) charSequence, 0, charSequence.length(), Object.class, spannableString, 0);
        return spannableString;
    }

    public tr a(boolean z) {
        this.b = z;
        return this;
    }

    public tr b(boolean z) {
        this.c = z;
        return this;
    }
}
