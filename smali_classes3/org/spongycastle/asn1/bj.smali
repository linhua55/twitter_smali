.class public Lorg/spongycastle/asn1/bj;
.super Lorg/spongycastle/asn1/o;
.source "Twttr"


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lorg/spongycastle/asn1/o;-><init>(Ljava/io/OutputStream;)V

    .line 16
    return-void
.end method


# virtual methods
.method public a(Lorg/spongycastle/asn1/d;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 22
    if-eqz p1, :cond_0

    .line 24
    invoke-interface {p1}, Lorg/spongycastle/asn1/d;->c()Lorg/spongycastle/asn1/q;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/asn1/q;->i()Lorg/spongycastle/asn1/q;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/spongycastle/asn1/q;->a(Lorg/spongycastle/asn1/o;)V

    .line 30
    return-void

    .line 28
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "null object detected"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
