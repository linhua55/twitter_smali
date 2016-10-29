package defpackage;

import android.content.Context;
import android.os.Bundle;
import bbu;
import com.twitter.library.client.Session;
import com.twitter.library.client.l;
import com.twitter.library.network.an;
import com.twitter.library.scribe.TwitterScribeLog;
import com.twitter.library.service.aa;
import com.twitter.library.service.ab;
import com.twitter.library.service.x;
import com.twitter.util.al;
import java.util.Arrays;

/* compiled from: Twttr */
/* renamed from: bof */
public class bof extends x {
    public bpc a;
    String b;

    public bof(Context context, Session session) {
        this(context, new ab(session), new bpc());
    }

    public bof(Context context, ab abVar) {
        this(context, abVar, new bpc());
    }

    public bof(Context context, ab abVar, bpc bpc) {
        super(context, bof.class.getName(), abVar);
        this.a = bpc;
    }

    protected void a_(aa aaVar) {
        Object[] objArr;
        Object[] objArr2;
        Object obj;
        long b = al.b();
        if (this.a.b != null) {
            objArr = this.a.b;
        } else {
            String[] strArr = new String[0];
        }
        if (this.a.c != null) {
            objArr2 = this.a.c;
        } else {
            String[] strArr2 = new String[0];
        }
        long[] jArr = this.a.a != null ? this.a.a : new long[0];
        if (objArr.length > 0 || objArr2.length > 0) {
            obj = 1;
        } else {
            obj = null;
        }
        int length = objArr.length;
        int length2 = objArr2.length;
        int length3 = jArr.length;
        boolean z = this.a.h;
        int a = an.a((length + length2) + length3, 100);
        this.a.i = 0;
        int i = 0;
        while (i < a) {
            int i2;
            int i3 = 100;
            this.a.f = i == 0 ? "-1" : null;
            bpb bpb = new bpb(this.p, N());
            bpb.a.a(this.a);
            if (length3 > 0) {
                int length4 = jArr.length - length3;
                int min = Math.min(length4 + 100, jArr.length);
                bpb.a(Arrays.copyOfRange(jArr, length4, min), z);
                i3 = 100 - (min - length4);
                length3 -= min - length4;
            }
            if (i3 <= 0 || length <= 0) {
                i2 = i3;
                i3 = length;
            } else {
                length4 = objArr.length - length;
                min = Math.min(length4 + i3, objArr.length);
                bpb.a.a((String[]) Arrays.copyOfRange(objArr, length4, min));
                i2 = i3 - (min - length4);
                i3 = length - (min - length4);
            }
            if (i2 <= 0 || length2 <= 0) {
                i2 = length2;
            } else {
                length = objArr2.length - length2;
                length4 = Math.min(i2 + length, objArr2.length);
                bpb.a.b((String[]) Arrays.copyOfRange(objArr2, length, length4));
                i2 = length2 - (length4 - length);
            }
            aa P = bpb.P();
            aaVar.a(P);
            Bundle bundle = new Bundle();
            bundle.putInt("page", i);
            bundle.putInt("pages", a);
            if (P.b()) {
                length4 = bpb.a.a();
                bpc bpc = this.a;
                bpc.i += length4;
                bundle.putInt("inserted_count", length4);
                bundle.putInt("result_code", P.d());
                bundle.putInt("num_users", bpb.a.b());
            }
            b(bundle);
            i++;
            length = i3;
            length2 = i2;
        }
        if (obj != null && this.b != null) {
            bbu.a(((TwitterScribeLog) new TwitterScribeLog(N().c).b(new String[]{this.b, "import_addressbook::import:done"})).a(al.b() - b));
            new l(this.p, N().e).a().a("addressbook_import_done", true).apply();
        }
    }
}
