package com.facebook.imagepipeline.producers;

import gj;
import java.util.Map;
import javax.annotation.Nullable;

/* compiled from: Twttr */
public interface bj<FETCH_STATE extends af> {
    FETCH_STATE a(o<gj> oVar, bx bxVar);

    void a(FETCH_STATE fetch_state, int i);

    void a(FETCH_STATE fetch_state, bk bkVar);

    boolean a(FETCH_STATE fetch_state);

    @Nullable
    Map<String, String> b(FETCH_STATE fetch_state, int i);
}
