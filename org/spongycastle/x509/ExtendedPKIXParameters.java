package org.spongycastle.x509;

import java.security.InvalidAlgorithmParameterException;
import java.security.cert.CertSelector;
import java.security.cert.CertStore;
import java.security.cert.PKIXParameters;
import java.security.cert.X509CertSelector;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import org.spongycastle.util.Selector;
import org.spongycastle.util.Store;

/* compiled from: Twttr */
public class ExtendedPKIXParameters extends PKIXParameters {
    private List a;
    private Selector b;
    private boolean c;
    private List d;
    private Set e;
    private Set f;
    private Set g;
    private Set h;
    private int i;
    private boolean j;

    public ExtendedPKIXParameters(Set set) throws InvalidAlgorithmParameterException {
        super(set);
        this.i = 0;
        this.j = false;
        this.a = new ArrayList();
        this.d = new ArrayList();
        this.e = new HashSet();
        this.f = new HashSet();
        this.g = new HashSet();
        this.h = new HashSet();
    }

    public static ExtendedPKIXParameters c(PKIXParameters pKIXParameters) {
        try {
            ExtendedPKIXParameters extendedPKIXParameters = new ExtendedPKIXParameters(pKIXParameters.getTrustAnchors());
            extendedPKIXParameters.a(pKIXParameters);
            return extendedPKIXParameters;
        } catch (Exception e) {
            throw new RuntimeException(e.getMessage());
        }
    }

    protected void a(PKIXParameters pKIXParameters) {
        setDate(pKIXParameters.getDate());
        setCertPathCheckers(pKIXParameters.getCertPathCheckers());
        setCertStores(pKIXParameters.getCertStores());
        setAnyPolicyInhibited(pKIXParameters.isAnyPolicyInhibited());
        setExplicitPolicyRequired(pKIXParameters.isExplicitPolicyRequired());
        setPolicyMappingInhibited(pKIXParameters.isPolicyMappingInhibited());
        setRevocationEnabled(pKIXParameters.isRevocationEnabled());
        setInitialPolicies(pKIXParameters.getInitialPolicies());
        setPolicyQualifiersRejected(pKIXParameters.getPolicyQualifiersRejected());
        setSigProvider(pKIXParameters.getSigProvider());
        setTargetCertConstraints(pKIXParameters.getTargetCertConstraints());
        try {
            setTrustAnchors(pKIXParameters.getTrustAnchors());
            if (pKIXParameters instanceof ExtendedPKIXParameters) {
                ExtendedPKIXParameters extendedPKIXParameters = (ExtendedPKIXParameters) pKIXParameters;
                this.i = extendedPKIXParameters.i;
                this.j = extendedPKIXParameters.j;
                this.c = extendedPKIXParameters.c;
                this.b = extendedPKIXParameters.b == null ? null : (Selector) extendedPKIXParameters.b.clone();
                this.a = new ArrayList(extendedPKIXParameters.a);
                this.d = new ArrayList(extendedPKIXParameters.d);
                this.e = new HashSet(extendedPKIXParameters.e);
                this.g = new HashSet(extendedPKIXParameters.g);
                this.f = new HashSet(extendedPKIXParameters.f);
                this.h = new HashSet(extendedPKIXParameters.h);
            }
        } catch (Exception e) {
            throw new RuntimeException(e.getMessage());
        }
    }

    public boolean c() {
        return this.j;
    }

    public int d() {
        return this.i;
    }

    public void setCertStores(List list) {
        if (list != null) {
            for (CertStore addCertStore : list) {
                addCertStore(addCertStore);
            }
        }
    }

    public void a(Store store) {
        if (store != null) {
            this.d.add(store);
        }
    }

    public List e() {
        return Collections.unmodifiableList(this.d);
    }

    public List f() {
        return Collections.unmodifiableList(new ArrayList(this.a));
    }

    public Object clone() {
        try {
            ExtendedPKIXParameters extendedPKIXParameters = new ExtendedPKIXParameters(getTrustAnchors());
            extendedPKIXParameters.a((PKIXParameters) this);
            return extendedPKIXParameters;
        } catch (Exception e) {
            throw new RuntimeException(e.getMessage());
        }
    }

    public boolean g() {
        return this.c;
    }

    public Selector h() {
        if (this.b != null) {
            return (Selector) this.b.clone();
        }
        return null;
    }

    public void a(Selector selector) {
        if (selector != null) {
            this.b = (Selector) selector.clone();
        } else {
            this.b = null;
        }
    }

    public void setTargetCertConstraints(CertSelector certSelector) {
        super.setTargetCertConstraints(certSelector);
        if (certSelector != null) {
            this.b = X509CertStoreSelector.a((X509CertSelector) certSelector);
        } else {
            this.b = null;
        }
    }

    public Set i() {
        return Collections.unmodifiableSet(this.e);
    }

    public Set j() {
        return Collections.unmodifiableSet(this.f);
    }

    public Set k() {
        return Collections.unmodifiableSet(this.g);
    }

    public Set l() {
        return Collections.unmodifiableSet(this.h);
    }
}
