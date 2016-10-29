.class public Lorg/spongycastle/jcajce/provider/asymmetric/util/b;
.super Ljava/lang/Object;
.source "Twttr"


# direct methods
.method public static a(Ldhz;)[B
    .locals 1

    .prologue
    .line 65
    :try_start_0
    const-string/jumbo v0, "DER"

    invoke-virtual {p0, v0}, Ldhz;->a(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 69
    :goto_0
    return-object v0

    .line 67
    :catch_0
    move-exception v0

    .line 69
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Ldid;Lorg/spongycastle/asn1/d;)[B
    .locals 1

    .prologue
    .line 15
    :try_start_0
    new-instance v0, Ldif;

    invoke-direct {v0, p0, p1}, Ldif;-><init>(Ldid;Lorg/spongycastle/asn1/d;)V

    invoke-static {v0}, Lorg/spongycastle/jcajce/provider/asymmetric/util/b;->a(Ldif;)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 19
    :goto_0
    return-object v0

    .line 17
    :catch_0
    move-exception v0

    .line 19
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Ldif;)[B
    .locals 1

    .prologue
    .line 39
    :try_start_0
    const-string/jumbo v0, "DER"

    invoke-virtual {p0, v0}, Ldif;->a(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 43
    :goto_0
    return-object v0

    .line 41
    :catch_0
    move-exception v0

    .line 43
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b(Ldid;Lorg/spongycastle/asn1/d;)[B
    .locals 2

    .prologue
    .line 51
    :try_start_0
    new-instance v0, Ldhz;

    invoke-interface {p1}, Lorg/spongycastle/asn1/d;->c()Lorg/spongycastle/asn1/q;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Ldhz;-><init>(Ldid;Lorg/spongycastle/asn1/d;)V

    .line 53
    invoke-static {v0}, Lorg/spongycastle/jcajce/provider/asymmetric/util/b;->a(Ldhz;)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 57
    :goto_0
    return-object v0

    .line 55
    :catch_0
    move-exception v0

    .line 57
    const/4 v0, 0x0

    goto :goto_0
.end method
