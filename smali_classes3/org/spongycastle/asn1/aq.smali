.class public Lorg/spongycastle/asn1/aq;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lorg/spongycastle/asn1/bo;
.implements Lorg/spongycastle/asn1/d;


# instance fields
.field private a:Lorg/spongycastle/asn1/v;


# direct methods
.method public constructor <init>(Lorg/spongycastle/asn1/v;)V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lorg/spongycastle/asn1/aq;->a:Lorg/spongycastle/asn1/v;

    .line 16
    return-void
.end method


# virtual methods
.method public c()Lorg/spongycastle/asn1/q;
    .locals 3

    .prologue
    .line 41
    :try_start_0
    invoke-virtual {p0}, Lorg/spongycastle/asn1/aq;->g()Lorg/spongycastle/asn1/q;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    return-object v0

    .line 43
    :catch_0
    move-exception v0

    .line 45
    new-instance v1, Lorg/spongycastle/asn1/ASN1ParsingException;

    const-string/jumbo v2, "unable to get DER object"

    invoke-direct {v1, v2, v0}, Lorg/spongycastle/asn1/ASN1ParsingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 47
    :catch_1
    move-exception v0

    .line 49
    new-instance v1, Lorg/spongycastle/asn1/ASN1ParsingException;

    const-string/jumbo v2, "unable to get DER object"

    invoke-direct {v1, v2, v0}, Lorg/spongycastle/asn1/ASN1ParsingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public g()Lorg/spongycastle/asn1/q;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 29
    :try_start_0
    new-instance v0, Lorg/spongycastle/asn1/ap;

    iget-object v1, p0, Lorg/spongycastle/asn1/aq;->a:Lorg/spongycastle/asn1/v;

    invoke-virtual {v1}, Lorg/spongycastle/asn1/v;->b()Lorg/spongycastle/asn1/e;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/ap;-><init>(Lorg/spongycastle/asn1/e;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 31
    :catch_0
    move-exception v0

    .line 33
    new-instance v1, Lorg/spongycastle/asn1/ASN1Exception;

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/spongycastle/asn1/ASN1Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
