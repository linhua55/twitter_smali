package com.facebook.imagepipeline.producers;

import android.net.Uri;
import android.util.Base64;
import com.facebook.imagepipeline.memory.ab;
import com.facebook.imagepipeline.request.ImageRequest;
import defpackage.bc;
import defpackage.bx;
import gj;
import java.io.ByteArrayInputStream;
import java.io.IOException;

/* compiled from: Twttr */
public class p extends at {
    public p(ab abVar) {
        super(bc.a(), abVar);
    }

    protected gj a(ImageRequest imageRequest) throws IOException {
        byte[] a = a(imageRequest.b().toString());
        return a(new ByteArrayInputStream(a), a.length);
    }

    protected String a() {
        return "DataFetchProducer";
    }

    static byte[] a(String str) {
        bx.a(str.substring(0, 5).equals("data:"));
        int indexOf = str.indexOf(44);
        String substring = str.substring(indexOf + 1, str.length());
        if (b(str.substring(0, indexOf))) {
            return Base64.decode(substring, 0);
        }
        return Uri.decode(substring).getBytes();
    }

    static boolean b(String str) {
        if (!str.contains(";")) {
            return false;
        }
        String[] split = str.split(";");
        return split[split.length - 1].equals("base64");
    }
}
