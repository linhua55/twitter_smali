package com.twitter.model.json.common;

import com.bluelinelabs.logansquare.typeconverters.TypeConverter;
import com.twitter.util.object.f;

/* compiled from: Twttr */
public interface d {
    <M> void a(Class<M> cls, TypeConverter<M> typeConverter);

    <M, J extends f<M>> void a(Class<M> cls, Class<J> cls2);

    <M, B extends f<M>, J extends e<M>> void b(Class<B> cls, Class<J> cls2);
}
