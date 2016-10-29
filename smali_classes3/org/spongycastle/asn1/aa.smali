.class public Lorg/spongycastle/asn1/aa;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lorg/spongycastle/asn1/a;


# instance fields
.field private final a:I

.field private final b:Lorg/spongycastle/asn1/v;


# direct methods
.method constructor <init>(ILorg/spongycastle/asn1/v;)V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput p1, p0, Lorg/spongycastle/asn1/aa;->a:I

    .line 14
    iput-object p2, p0, Lorg/spongycastle/asn1/aa;->b:Lorg/spongycastle/asn1/v;

    .line 15
    return-void
.end method


# virtual methods
.method public c()Lorg/spongycastle/asn1/q;
    .locals 3

    .prologue
    .line 33
    :try_start_0
    invoke-virtual {p0}, Lorg/spongycastle/asn1/aa;->g()Lorg/spongycastle/asn1/q;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 35
    :catch_0
    move-exception v0

    .line 37
    new-instance v1, Lorg/spongycastle/asn1/ASN1ParsingException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

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
    .line 26
    new-instance v0, Lorg/spongycastle/asn1/z;

    iget v1, p0, Lorg/spongycastle/asn1/aa;->a:I

    iget-object v2, p0, Lorg/spongycastle/asn1/aa;->b:Lorg/spongycastle/asn1/v;

    invoke-virtual {v2}, Lorg/spongycastle/asn1/v;->b()Lorg/spongycastle/asn1/e;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/spongycastle/asn1/z;-><init>(ILorg/spongycastle/asn1/e;)V

    return-object v0
.end method
