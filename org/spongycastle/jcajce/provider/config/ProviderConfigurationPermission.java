package org.spongycastle.jcajce.provider.config;

import java.security.BasicPermission;
import java.security.Permission;
import java.util.StringTokenizer;
import org.spongycastle.util.Strings;

/* compiled from: Twttr */
public class ProviderConfigurationPermission extends BasicPermission {
    private final String actions;
    private final int permissionMask;

    public ProviderConfigurationPermission(String str, String str2) {
        super(str, str2);
        this.actions = str2;
        this.permissionMask = a(str2);
    }

    private int a(String str) {
        StringTokenizer stringTokenizer = new StringTokenizer(Strings.c(str), " ,");
        int i = 0;
        while (stringTokenizer.hasMoreTokens()) {
            String nextToken = stringTokenizer.nextToken();
            if (nextToken.equals("threadlocalecimplicitlyca")) {
                i |= 1;
            } else if (nextToken.equals("ecimplicitlyca")) {
                i |= 2;
            } else if (nextToken.equals("threadlocaldhdefaultparams")) {
                i |= 4;
            } else if (nextToken.equals("dhdefaultparams")) {
                i |= 8;
            } else if (nextToken.equals("all")) {
                i |= 15;
            }
        }
        if (i != 0) {
            return i;
        }
        throw new IllegalArgumentException("unknown permissions passed to mask");
    }

    public String getActions() {
        return this.actions;
    }

    public boolean implies(Permission permission) {
        if (!(permission instanceof ProviderConfigurationPermission) || !getName().equals(permission.getName())) {
            return false;
        }
        ProviderConfigurationPermission providerConfigurationPermission = (ProviderConfigurationPermission) permission;
        if ((this.permissionMask & providerConfigurationPermission.permissionMask) == providerConfigurationPermission.permissionMask) {
            return true;
        }
        return false;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof ProviderConfigurationPermission)) {
            return false;
        }
        ProviderConfigurationPermission providerConfigurationPermission = (ProviderConfigurationPermission) obj;
        if (this.permissionMask == providerConfigurationPermission.permissionMask && getName().equals(providerConfigurationPermission.getName())) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return getName().hashCode() + this.permissionMask;
    }
}
