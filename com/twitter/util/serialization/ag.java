package com.twitter.util.serialization;

import com.twitter.util.j;
import com.twitter.util.object.ObjectUtils;
import java.io.IOException;
import java.util.List;

/* compiled from: Twttr */
final class ag extends k<B> {
    final /* synthetic */ List a;

    ag(List list) {
        this.a = list;
        if (j.e()) {
            int size = this.a.size();
            for (int i = 1; i < size; i++) {
                l lVar = (l) ObjectUtils.a(this.a.get(i));
                for (int i2 = 0; i2 < i; i2++) {
                    ((l) this.a.get(i2)).a.isAssignableFrom(lVar.a);
                }
            }
        }
    }

    protected void a(q qVar, B b) throws IOException {
        int size = this.a.size();
        for (int i = 0; i < size; i++) {
            l lVar = (l) ObjectUtils.a(this.a.get(i));
            if (b.getClass().equals(lVar.a)) {
                qVar.e(i).a(lVar.a.cast(b), lVar.b);
                return;
            }
        }
        throw new SerializationException("Serializer not defined for base class serialization for : " + b.getClass().getSimpleName());
    }

    protected B b(p pVar, int i) throws IOException, ClassNotFoundException {
        int c = pVar.o() == 1 ? pVar.c() : pVar.e();
        if (c <= this.a.size()) {
            return ObjectUtils.a(((l) this.a.get(c)).b.c(pVar));
        }
        throw new SerializationException("Invalid type found in base class deserialization: " + c);
    }
}
