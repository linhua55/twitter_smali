package org.spongycastle.jcajce.spec;

import java.security.spec.AlgorithmParameterSpec;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

/* compiled from: Twttr */
public class SkeinParameterSpec implements AlgorithmParameterSpec {
    private Map a;

    /* compiled from: Twttr */
    public class Builder {
        private Map a;

        public Builder() {
            this.a = new HashMap();
        }
    }

    public SkeinParameterSpec() {
        this(new HashMap());
    }

    private SkeinParameterSpec(Map map) {
        this.a = Collections.unmodifiableMap(map);
    }

    public Map a() {
        return this.a;
    }
}
