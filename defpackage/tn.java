package defpackage;

/* compiled from: Twttr */
/* renamed from: tn */
public abstract class tn extends to<String> {
    public /* synthetic */ Object b(CharSequence charSequence, int i) {
        return c(charSequence, i);
    }

    public String c(CharSequence charSequence, int i) {
        tp a_ = a_(charSequence, i);
        return (a_ != null ? charSequence.subSequence(a_.a, a_.b).toString() : "").trim();
    }
}
