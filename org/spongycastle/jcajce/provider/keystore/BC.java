package org.spongycastle.jcajce.provider.keystore;

import org.spongycastle.jcajce.provider.config.ConfigurableProvider;
import org.spongycastle.jcajce.provider.util.AsymmetricAlgorithmProvider;

/* compiled from: Twttr */
public class BC {

    /* compiled from: Twttr */
    public class Mappings extends AsymmetricAlgorithmProvider {
        public void a(ConfigurableProvider configurableProvider) {
            configurableProvider.a("KeyStore.BKS", "org.spongycastle.jcajce.provider.keystore.bc.BcKeyStoreSpi$Std");
            configurableProvider.a("KeyStore.BKS-V1", "org.spongycastle.jcajce.provider.keystore.bc.BcKeyStoreSpi$Version1");
            configurableProvider.a("KeyStore.BouncyCastle", "org.spongycastle.jcajce.provider.keystore.bc.BcKeyStoreSpi$BouncyCastleStore");
            configurableProvider.a("Alg.Alias.KeyStore.UBER", "BouncyCastle");
            configurableProvider.a("Alg.Alias.KeyStore.BOUNCYCASTLE", "BouncyCastle");
            configurableProvider.a("Alg.Alias.KeyStore.spongycastle", "BouncyCastle");
        }
    }
}
