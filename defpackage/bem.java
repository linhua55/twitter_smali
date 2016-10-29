package defpackage;

import android.accounts.AccountManagerFuture;
import android.accounts.AuthenticatorException;
import android.accounts.OperationCanceledException;
import android.content.Context;
import com.twitter.library.client.Session;
import com.twitter.library.platform.notifications.PushRegistration;
import com.twitter.library.provider.ar;
import com.twitter.library.provider.di;
import com.twitter.library.scribe.ScribeDatabaseHelper;
import com.twitter.library.service.aa;
import com.twitter.library.service.ab;
import com.twitter.library.service.v;
import com.twitter.library.service.x;
import com.twitter.library.util.b;
import com.twitter.platform.PlatformContext;
import java.io.IOException;

/* compiled from: Twttr */
/* renamed from: bem */
public class bem extends x {
    public bem(Context context, Session session) {
        super(context, bem.class.getName(), session);
    }

    protected void a_(aa aaVar) {
        boolean booleanValue;
        ab N = N();
        String str = N.e;
        long j = N.c;
        di S = S();
        ScribeDatabaseHelper a = ScribeDatabaseHelper.a(this.p, N.c);
        a(str);
        v.a(this.p, j, str, null, null);
        S.h();
        a.b();
        PlatformContext.f().e().b(j);
        AccountManagerFuture a2 = b.a(str);
        if (a2 != null) {
            try {
                booleanValue = ((Boolean) a2.getResult()).booleanValue();
            } catch (OperationCanceledException e) {
                booleanValue = false;
            } catch (IOException e2) {
                booleanValue = false;
            } catch (AuthenticatorException e3) {
                booleanValue = false;
            }
        } else {
            booleanValue = false;
        }
        ar a3 = ar.a(this.p);
        a3.e(str);
        a3.d(str);
        aaVar.a(booleanValue);
    }

    protected void a(String str) {
        PushRegistration.f(this.p, str);
    }
}
