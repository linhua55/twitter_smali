package defpackage;

import cgu;
import chd;
import com.twitter.library.provider.LocalContactInfo;
import com.twitter.library.util.e;
import sw;

/* compiled from: Twttr */
/* renamed from: so */
public class so implements sw<String, LocalContactInfo> {
    private final e a;

    public so(e eVar) {
        this.a = eVar;
    }

    public void a(String str, sx<String, LocalContactInfo> sxVar) {
        sxVar.a(str, a(str));
    }

    public cgu<LocalContactInfo> a(String str) {
        return new chd(this.a.a(st.a(str)));
    }

    public void a() {
    }
}
