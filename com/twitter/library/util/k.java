package com.twitter.library.util;

import android.database.Cursor;
import defpackage.bub;
import java.nio.ByteBuffer;
import java.util.Map;
import java.util.Set;

/* compiled from: Twttr */
public interface k {
    Cursor a();

    bub a(Map<String, ByteBuffer> map);

    Map<String, ByteBuffer> a(Cursor cursor);

    void a(Map<String, ByteBuffer> map, o oVar);

    void a(Map<String, ByteBuffer> map, o oVar, boolean z);

    void a(Set<Long> set, o oVar);

    boolean b();

    void c();
}
