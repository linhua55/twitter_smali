package com.twitter.util.serialization;

import android.graphics.RectF;
import android.net.Uri;
import android.util.SparseArray;
import java.io.IOException;

/* compiled from: Twttr */
public class a {
    public static final n<RectF> a;
    public static final n<Uri> b;

    static {
        a = new b();
        b = new c();
    }

    public static <T> void a(q qVar, SparseArray<T> sparseArray, n<T> nVar) throws IOException {
        if (!m.a(qVar, sparseArray)) {
            int size = sparseArray.size();
            qVar.e(size);
            for (int i = 0; i < size; i++) {
                int keyAt = sparseArray.keyAt(i);
                qVar.e(keyAt);
                qVar.a(sparseArray.get(keyAt), nVar);
            }
        }
    }

    public static <T> SparseArray<T> a(p pVar, n<T> nVar) throws IOException, ClassNotFoundException {
        if (m.a(pVar)) {
            return null;
        }
        int e = pVar.e();
        SparseArray<T> sparseArray = new SparseArray(e);
        for (int i = 0; i < e; i++) {
            sparseArray.put(pVar.e(), pVar.a(nVar));
        }
        return sparseArray;
    }
}
