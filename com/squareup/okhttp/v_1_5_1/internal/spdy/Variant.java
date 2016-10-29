package com.squareup.okhttp.v_1_5_1.internal.spdy;

import com.squareup.okhttp.v_1_5_1.Protocol;
import com.squareup.okhttp.v_1_5_1.internal.okio.BufferedSink;
import com.squareup.okhttp.v_1_5_1.internal.okio.BufferedSource;

/* compiled from: Twttr */
interface Variant {
    Protocol getProtocol();

    int maxFrameSize();

    FrameReader newReader(BufferedSource bufferedSource, boolean z);

    FrameWriter newWriter(BufferedSink bufferedSink, boolean z);
}
