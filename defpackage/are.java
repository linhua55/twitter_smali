package defpackage;

import ark;
import arw;
import cfb;

/* compiled from: Twttr */
/* renamed from: are */
public class are implements arw {
    public void a(ark ark) {
        String v = ark.v();
        cfb.b(v.substring(0, Math.min(v.length(), 23)), "Recorded metric: " + ark);
    }

    public int hashCode() {
        return are.class.getName().hashCode();
    }
}
