package defpackage;

import android.content.Context;
import com.twitter.internal.network.HttpOperation;
import com.twitter.internal.network.HttpOperation.RequestMethod;
import com.twitter.library.api.t;
import com.twitter.library.api.v;
import com.twitter.library.service.aa;
import com.twitter.library.service.ab;
import com.twitter.library.service.b;
import com.twitter.library.service.c;
import com.twitter.library.service.d;
import com.twitter.library.service.e;
import com.twitter.model.core.cd;
import tv.periscope.chatman.api.WireMessage;

/* compiled from: Twttr */
/* renamed from: ber */
public class ber extends b<t<Void, cd>> {
    public final String a;
    public final String b;
    public final String c;

    protected /* synthetic */ c f() {
        return b();
    }

    public ber(Context context, ab abVar, String str, String str2, String str3) {
        super(context, ber.class.getName(), abVar);
        this.b = str;
        this.c = str2;
        this.a = str3;
    }

    protected d a() {
        e K = K();
        switch (M()) {
            case WireMessage.WIRE_CHAT /*1*/:
                K.a("i");
                K.a(RequestMethod.POST);
                K.a(new Object[]{"account", "change_password"}).a("current_password", this.b).a("password", this.c).a("password_confirmation", this.c);
                break;
            case WireMessage.WIRE_CONTROL /*2*/:
                K.a("1");
                K.a(RequestMethod.POST);
                K.a(new Object[]{"account", "update_email"}).a(NotificationCompatApi21.CATEGORY_EMAIL, this.a).a("password", this.b);
                break;
            default:
                throw new IllegalArgumentException("Invalid/unknown action: " + M());
        }
        return K.a();
    }

    protected t<Void, cd> b() {
        return v.a(null);
    }

    protected void a(HttpOperation httpOperation, aa aaVar, t<Void, cd> tVar) {
        switch (M()) {
            case WireMessage.WIRE_CHAT /*1*/:
                if (!httpOperation.k()) {
                    int[] a = cd.a((cd) tVar.c());
                    if (a.length > 0) {
                        aaVar.c.putSerializable("custom_errors", a);
                    }
                }
            default:
        }
    }
}
