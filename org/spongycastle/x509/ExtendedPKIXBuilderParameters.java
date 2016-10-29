package org.spongycastle.x509;

import java.security.InvalidAlgorithmParameterException;
import java.security.cert.PKIXBuilderParameters;
import java.security.cert.PKIXParameters;
import java.security.cert.X509CertSelector;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;
import org.spongycastle.util.Selector;

/* compiled from: Twttr */
public class ExtendedPKIXBuilderParameters extends ExtendedPKIXParameters {
    private int a;
    private Set b;

    public Set a() {
        return Collections.unmodifiableSet(this.b);
    }

    public ExtendedPKIXBuilderParameters(Set set, Selector selector) throws InvalidAlgorithmParameterException {
        super(set);
        this.a = 5;
        this.b = Collections.EMPTY_SET;
        a(selector);
    }

    public int b() {
        return this.a;
    }

    protected void a(PKIXParameters pKIXParameters) {
        super.a(pKIXParameters);
        if (pKIXParameters instanceof ExtendedPKIXBuilderParameters) {
            ExtendedPKIXBuilderParameters extendedPKIXBuilderParameters = (ExtendedPKIXBuilderParameters) pKIXParameters;
            this.a = extendedPKIXBuilderParameters.a;
            this.b = new HashSet(extendedPKIXBuilderParameters.b);
        }
        if (pKIXParameters instanceof PKIXBuilderParameters) {
            this.a = ((PKIXBuilderParameters) pKIXParameters).getMaxPathLength();
        }
    }

    public Object clone() {
        try {
            ExtendedPKIXBuilderParameters extendedPKIXBuilderParameters = new ExtendedPKIXBuilderParameters(getTrustAnchors(), h());
            extendedPKIXBuilderParameters.a(this);
            return extendedPKIXBuilderParameters;
        } catch (Exception e) {
            throw new RuntimeException(e.getMessage());
        }
    }

    public static ExtendedPKIXParameters b(PKIXParameters pKIXParameters) {
        try {
            ExtendedPKIXParameters extendedPKIXBuilderParameters = new ExtendedPKIXBuilderParameters(pKIXParameters.getTrustAnchors(), X509CertStoreSelector.a((X509CertSelector) pKIXParameters.getTargetCertConstraints()));
            extendedPKIXBuilderParameters.a(pKIXParameters);
            return extendedPKIXBuilderParameters;
        } catch (Exception e) {
            throw new RuntimeException(e.getMessage());
        }
    }
}
