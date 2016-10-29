package com.facebook.imagepipeline.producers;

import android.media.ExifInterface;
import android.util.Pair;
import com.facebook.common.references.a;
import com.facebook.imageformat.ImageFormat;
import com.facebook.imagepipeline.memory.PooledByteBuffer;
import com.facebook.imagepipeline.memory.ab;
import com.facebook.imagepipeline.memory.ac;
import gj;
import gp;
import gq;
import java.io.IOException;
import java.util.concurrent.Executor;

/* compiled from: Twttr */
public class aq implements bw<gj> {
    private final Executor a;
    private final ab b;

    public aq(Executor executor, ab abVar) {
        this.a = executor;
        this.b = abVar;
    }

    public void a(o<gj> oVar, bx bxVar) {
        o<gj> oVar2 = oVar;
        Runnable arVar = new ar(this, oVar2, bxVar.c(), "LocalExifThumbnailProducer", bxVar.b(), bxVar.a());
        bxVar.a(new as(this, arVar));
        this.a.execute(arVar);
    }

    ExifInterface a(String str) throws IOException {
        return new ExifInterface(str);
    }

    private gj a(PooledByteBuffer pooledByteBuffer, ExifInterface exifInterface) {
        int intValue;
        Pair a = gp.a(new ac(pooledByteBuffer));
        int a2 = a(exifInterface);
        int intValue2 = a != null ? ((Integer) a.first).intValue() : -1;
        if (a != null) {
            intValue = ((Integer) a.second).intValue();
        } else {
            intValue = -1;
        }
        gj gjVar = new gj(a.a(pooledByteBuffer));
        gjVar.a(ImageFormat.JPEG);
        gjVar.c(a2);
        gjVar.b(intValue2);
        gjVar.a(intValue);
        return gjVar;
    }

    private int a(ExifInterface exifInterface) {
        return gq.a(Integer.parseInt(exifInterface.getAttribute("Orientation")));
    }
}
