package com.caverock.androidsvg;

import com.google.android.exoplayer.text.CaptionStyleCompat;
import com.google.android.exoplayer.util.Util;
import com.google.android.exoplayer.util.extensions.Buffer;
import java.util.ArrayList;
import java.util.List;

/* compiled from: Twttr */
class f {
    private static /* synthetic */ int[] e;
    public Combinator a;
    public String b;
    public List<a> c;
    public List<String> d;

    static /* synthetic */ int[] a() {
        int[] iArr = e;
        if (iArr == null) {
            iArr = new int[AttribOp.values().length];
            try {
                iArr[AttribOp.DASHMATCH.ordinal()] = 4;
            } catch (NoSuchFieldError e) {
            }
            try {
                iArr[AttribOp.EQUALS.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                iArr[AttribOp.EXISTS.ordinal()] = 1;
            } catch (NoSuchFieldError e3) {
            }
            try {
                iArr[AttribOp.INCLUDES.ordinal()] = 3;
            } catch (NoSuchFieldError e4) {
            }
            e = iArr;
        }
        return iArr;
    }

    public f(Combinator combinator, String str) {
        this.a = null;
        this.b = null;
        this.c = null;
        this.d = null;
        if (combinator == null) {
            combinator = Combinator.DESCENDANT;
        }
        this.a = combinator;
        this.b = str;
    }

    public void a(String str, AttribOp attribOp, String str2) {
        if (this.c == null) {
            this.c = new ArrayList();
        }
        this.c.add(new a(str, attribOp, str2));
    }

    public void a(String str) {
        if (this.d == null) {
            this.d = new ArrayList();
        }
        this.d.add(str);
    }

    public String toString() {
        StringBuilder stringBuilder = new StringBuilder();
        if (this.a == Combinator.CHILD) {
            stringBuilder.append("> ");
        } else if (this.a == Combinator.FOLLOWS) {
            stringBuilder.append("+ ");
        }
        stringBuilder.append(this.b == null ? "*" : this.b);
        if (this.c != null) {
            for (a aVar : this.c) {
                stringBuilder.append('[').append(aVar.a);
                switch (a()[aVar.b.ordinal()]) {
                    case Buffer.FLAG_DECODE_ONLY /*2*/:
                        stringBuilder.append('=').append(aVar.c);
                        break;
                    case Util.TYPE_OTHER /*3*/:
                        stringBuilder.append("~=").append(aVar.c);
                        break;
                    case CaptionStyleCompat.EDGE_TYPE_DEPRESSED /*4*/:
                        stringBuilder.append("|=").append(aVar.c);
                        break;
                    default:
                        break;
                }
                stringBuilder.append(']');
            }
        }
        if (this.d != null) {
            for (String append : this.d) {
                stringBuilder.append(':').append(append);
            }
        }
        return stringBuilder.toString();
    }
}
