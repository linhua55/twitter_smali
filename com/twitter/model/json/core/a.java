package com.twitter.model.json.core;

import com.twitter.model.core.MediaEntity.Type;
import com.twitter.model.json.common.n;
import java.util.Map.Entry;

/* compiled from: Twttr */
public class a extends n<Type> {
    public a() {
        super(Type.a, new Entry[]{a("photo", Type.b), a("animated_gif", Type.c), a("video", Type.d)});
    }
}
