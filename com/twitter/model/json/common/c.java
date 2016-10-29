package com.twitter.model.json.common;

import com.bluelinelabs.logansquare.typeconverters.TypeConverter;
import com.twitter.util.object.f;

/* compiled from: Twttr */
public class c implements d {
    public <M> void a(Class<M> cls, TypeConverter<M> typeConverter) {
        g.a(cls, typeConverter);
    }

    public <M, J extends f<M>> void a(Class<M> cls, Class<J> cls2) {
        g.a(cls, cls2);
    }

    public <M, B extends f<M>, J extends e<M>> void b(Class<B> cls, Class<J> cls2) {
        g.b(cls, cls2);
    }
}
