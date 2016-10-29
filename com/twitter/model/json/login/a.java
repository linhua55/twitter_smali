package com.twitter.model.json.login;

import com.twitter.model.json.common.n;
import com.twitter.model.login.OneFactorEligibleFactor.FactorType;
import java.util.Map.Entry;

/* compiled from: Twttr */
public class a extends n<FactorType> {
    public a() {
        super(FactorType.c, new Entry[]{a("sms", FactorType.a), a("email", FactorType.b)});
    }
}
