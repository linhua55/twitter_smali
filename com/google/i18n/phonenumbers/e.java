package com.google.i18n.phonenumbers;

import com.google.i18n.phonenumbers.repackaged.com.google.protobuf.nano.a;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;
import java.util.logging.Logger;
import rc;

/* compiled from: Twttr */
class e {
    private static final Logger a;
    private static final Map<Integer, rc> b;
    private static final Map<String, rc> c;
    private static final Set<Integer> d;
    private static final Set<String> e;

    static {
        a = Logger.getLogger(e.class.getName());
        b = Collections.synchronizedMap(new HashMap());
        c = Collections.synchronizedMap(new HashMap());
        d = a.a();
        e = l.a();
    }

    private e() {
    }

    static a a(ObjectInputStream objectInputStream, int i) throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        byte[] bArr = new byte[i];
        while (true) {
            int read = objectInputStream.read(bArr, 0, i);
            if (read != -1) {
                byteArrayOutputStream.write(bArr, 0, read);
            } else {
                byteArrayOutputStream.flush();
                return a.a(byteArrayOutputStream.toByteArray());
            }
        }
    }
}
