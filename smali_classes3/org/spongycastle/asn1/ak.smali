.class public Lorg/spongycastle/asn1/ak;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lorg/spongycastle/asn1/x;


# instance fields
.field private a:Z

.field private b:I

.field private c:Lorg/spongycastle/asn1/v;


# direct methods
.method constructor <init>(ZILorg/spongycastle/asn1/v;)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-boolean p1, p0, Lorg/spongycastle/asn1/ak;->a:Z

    .line 18
    iput p2, p0, Lorg/spongycastle/asn1/ak;->b:I

    .line 19
    iput-object p3, p0, Lorg/spongycastle/asn1/ak;->c:Lorg/spongycastle/asn1/v;

    .line 20
    return-void
.end method


# virtual methods
.method public c()Lorg/spongycastle/asn1/q;
    .locals 2

    .prologue
    .line 59
    :try_start_0
    invoke-virtual {p0}, Lorg/spongycastle/asn1/ak;->g()Lorg/spongycastle/asn1/q;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 61
    :catch_0
    move-exception v0

    .line 63
    new-instance v1, Lorg/spongycastle/asn1/ASN1ParsingException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/spongycastle/asn1/ASN1ParsingException;-><init>(Ljava/lang/String;)V

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
    .line 52
    iget-object v0, p0, Lorg/spongycastle/asn1/ak;->c:Lorg/spongycastle/asn1/v;

    iget-boolean v1, p0, Lorg/spongycastle/asn1/ak;->a:Z

    iget v2, p0, Lorg/spongycastle/asn1/ak;->b:I

    invoke-virtual {v0, v1, v2}, Lorg/spongycastle/asn1/v;->a(ZI)Lorg/spongycastle/asn1/q;

    move-result-object v0

    return-object v0
.end method
