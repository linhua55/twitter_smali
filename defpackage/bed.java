package defpackage;

import android.content.Context;
import android.util.Base64;
import com.twitter.internal.android.service.d;
import com.twitter.internal.network.HttpOperation;
import com.twitter.internal.network.HttpOperation.RequestMethod;
import com.twitter.library.api.as;
import com.twitter.library.network.a;
import com.twitter.library.network.an;
import com.twitter.library.network.w;
import com.twitter.library.service.aa;
import com.twitter.library.service.x;
import java.util.ArrayList;
import java.util.List;
import org.apache.http.message.BasicNameValuePair;

/* compiled from: Twttr */
/* renamed from: bed */
public class bed extends x {
    protected final d a;
    private final as b;
    private String c;

    public bed(Context context) {
        super(context, bed.class.getName());
        this.b = as.a(53);
        this.a = new d();
    }

    public d m() {
        return this.a;
    }

    protected void a_(aa aaVar) {
        String a = a.a(w.c);
        a = Base64.encodeToString((a + ":" + a.a(w.d)).getBytes(), 10);
        CharSequence a2 = an.a(this.q.a, new Object[]{"oauth2", "token"});
        List arrayList = new ArrayList();
        arrayList.add(new BasicNameValuePair("grant_type", "client_credentials"));
        HttpOperation a3 = a(this.p, a2).a(RequestMethod.b).a(this.b).a(arrayList).a(this.a).a();
        an.a(a3, "Authorization", "Basic " + a);
        if (a3.c().k()) {
            this.c = (String) this.b.b();
        }
        aaVar.a(a3);
    }

    public String a() {
        return this.c;
    }
}
