package com.twitter.util;

import java.io.IOException;
import java.io.InputStream;
import java.io.ObjectInputStream;
import java.io.ObjectStreamClass;
import java.util.Map;

/* compiled from: Twttr */
final class l extends ObjectInputStream {
    final /* synthetic */ Map a;

    l(InputStream inputStream, Map map) {
        this.a = map;
        super(inputStream);
    }

    protected Class<?> resolveClass(ObjectStreamClass objectStreamClass) throws IOException, ClassNotFoundException {
        Class<?> cls = (Class) this.a.get(Long.valueOf(objectStreamClass.getSerialVersionUID()));
        return cls != null ? cls : super.resolveClass(objectStreamClass);
    }
}
