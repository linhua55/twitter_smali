package defpackage;

import android.annotation.SuppressLint;
import bxv;
import cjw;
import com.twitter.internal.android.service.AsyncOperation;
import com.twitter.library.service.ac;
import com.twitter.util.collection.CollectionUtils;
import com.twitter.util.collection.n;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* compiled from: Twttr */
/* renamed from: bxw */
class bxw extends ac<Void, AsyncOperation<Void, List<cjw>>> {
    final /* synthetic */ n a;
    final /* synthetic */ bxv b;

    bxw(bxv bxv, n nVar) {
        this.b = bxv;
        this.a = nVar;
    }

    @SuppressLint({"UseSparseArrays"})
    public void a(AsyncOperation<Void, List<cjw>> asyncOperation) {
        List<cjw> list = (List) asyncOperation.l().b();
        if (CollectionUtils.b(list)) {
            bxv.a(this.b, (List) this.a.q(), new HashMap());
            return;
        }
        Map hashMap = new HashMap(list.size());
        for (cjw cjw : list) {
            this.a.d(Long.valueOf(cjw.h));
            hashMap.put(Long.valueOf(cjw.h), cjw);
        }
        if (this.a.h()) {
            bxv.a(this.b, hashMap);
        } else {
            bxv.a(this.b, (List) this.a.q(), hashMap);
        }
    }
}
