package defpackage;

import android.content.Context;
import android.os.AsyncTask;
import com.google.android.gms.common.GooglePlayServicesNotAvailableException;
import com.google.android.gms.common.GooglePlayServicesRepairableException;

/* renamed from: ol */
final class ol extends AsyncTask<Void, Void, Integer> {
    final /* synthetic */ Context a;
    final /* synthetic */ om b;

    ol(Context context, om omVar) {
        this.a = context;
        this.b = omVar;
    }

    protected Integer a(Void... voidArr) {
        try {
            ok.a(this.a);
            return Integer.valueOf(0);
        } catch (GooglePlayServicesRepairableException e) {
            return Integer.valueOf(e.a());
        } catch (GooglePlayServicesNotAvailableException e2) {
            return Integer.valueOf(e2.errorCode);
        }
    }

    protected void a(Integer num) {
        if (num.intValue() == 0) {
            this.b.a();
            return;
        }
        this.b.a(num.intValue(), ok.a.a(this.a, num.intValue(), "pi"));
    }

    protected /* synthetic */ Object doInBackground(Object[] objArr) {
        return a((Void[]) objArr);
    }

    protected /* synthetic */ void onPostExecute(Object obj) {
        a((Integer) obj);
    }
}
