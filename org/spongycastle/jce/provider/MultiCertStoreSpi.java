package org.spongycastle.jce.provider;

import java.security.cert.CRLSelector;
import java.security.cert.CertSelector;
import java.security.cert.CertStore;
import java.security.cert.CertStoreException;
import java.security.cert.CertStoreSpi;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import org.spongycastle.jce.MultiCertStoreParameters;

/* compiled from: Twttr */
public class MultiCertStoreSpi extends CertStoreSpi {
    private MultiCertStoreParameters a;

    public Collection engineGetCertificates(CertSelector certSelector) throws CertStoreException {
        Collection arrayList;
        boolean b = this.a.b();
        if (b) {
            arrayList = new ArrayList();
        } else {
            Object obj = Collections.EMPTY_LIST;
        }
        for (CertStore certificates : this.a.a()) {
            Collection certificates2 = certificates.getCertificates(certSelector);
            if (b) {
                arrayList.addAll(certificates2);
            } else if (!certificates2.isEmpty()) {
                return certificates2;
            }
        }
        return arrayList;
    }

    public Collection engineGetCRLs(CRLSelector cRLSelector) throws CertStoreException {
        Collection arrayList;
        boolean b = this.a.b();
        if (b) {
            arrayList = new ArrayList();
        } else {
            Object obj = Collections.EMPTY_LIST;
        }
        for (CertStore cRLs : this.a.a()) {
            Collection cRLs2 = cRLs.getCRLs(cRLSelector);
            if (b) {
                arrayList.addAll(cRLs2);
            } else if (!cRLs2.isEmpty()) {
                return cRLs2;
            }
        }
        return arrayList;
    }
}
