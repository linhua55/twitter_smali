package com.twitter.util.serialization;

import android.content.Context;
import aof;
import com.twitter.util.collection.ac;

/* compiled from: Twttr */
public class SerializationInitializer extends aof<Void> {
    protected void a(Context context, Void voidR) {
        a(3, 2048);
    }

    private static void a(int i, int i2) {
        ac acVar = new ac(i);
        for (int i3 = 0; i3 < i; i3++) {
            acVar.a(new byte[i2]);
        }
        m.a(acVar);
    }
}
