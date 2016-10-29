package com.squareup.okhttp.internal.framed;

import com.squareup.okhttp.Protocol;
import okio.i;
import okio.j;

/* compiled from: Twttr */
public interface Variant {
    Protocol getProtocol();

    FrameReader newReader(j jVar, boolean z);

    FrameWriter newWriter(i iVar, boolean z);
}
