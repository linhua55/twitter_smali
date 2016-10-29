package io.fabric.sdk.android;

import io.fabric.sdk.android.services.common.af;
import io.fabric.sdk.android.services.concurrency.Priority;
import io.fabric.sdk.android.services.concurrency.UnmetDependencyException;
import io.fabric.sdk.android.services.concurrency.l;

/* compiled from: Twttr */
class o<Result> extends l<Void, Void, Result> {
    final p<Result> a;

    public o(p<Result> pVar) {
        this.a = pVar;
    }

    protected void a() {
        super.a();
        af a = a("onPreExecute");
        try {
            boolean a_ = this.a.a_();
            a.b();
            if (!a_) {
                a(true);
            }
        } catch (UnmetDependencyException e) {
            throw e;
        } catch (Throwable e2) {
            f.h().e("Fabric", "Failure onPreExecute()", e2);
            a.b();
            a(true);
        } catch (Throwable th) {
            a.b();
            a(true);
        }
    }

    protected Result a(Void... voidArr) {
        af a = a("doInBackground");
        Result result = null;
        if (!e()) {
            result = this.a.f();
        }
        a.b();
        return result;
    }

    protected void a(Result result) {
        this.a.a((Object) result);
        this.a.h.a((Object) result);
    }

    protected void b(Result result) {
        this.a.b((Object) result);
        this.a.h.a(new InitializationException(this.a.b() + " Initialization was cancelled"));
    }

    public Priority b() {
        return Priority.HIGH;
    }

    private af a(String str) {
        af afVar = new af(this.a.b() + "." + str, "KitInitialization");
        afVar.a();
        return afVar;
    }
}
