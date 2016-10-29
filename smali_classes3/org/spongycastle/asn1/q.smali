.class public abstract Lorg/spongycastle/asn1/q;
.super Lorg/spongycastle/asn1/k;
.source "Twttr"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lorg/spongycastle/asn1/k;-><init>()V

    .line 14
    return-void
.end method

.method public static b([B)Lorg/spongycastle/asn1/q;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 26
    new-instance v0, Lorg/spongycastle/asn1/h;

    invoke-direct {v0, p0}, Lorg/spongycastle/asn1/h;-><init>([B)V

    .line 30
    :try_start_0
    invoke-virtual {v0}, Lorg/spongycastle/asn1/h;->d()Lorg/spongycastle/asn1/q;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 32
    :catch_0
    move-exception v0

    .line 34
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "cannot recognise object in stream"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method abstract a(Lorg/spongycastle/asn1/o;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method abstract a()Z
.end method

.method abstract a(Lorg/spongycastle/asn1/q;)Z
.end method

.method abstract b()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public c()Lorg/spongycastle/asn1/q;
    .locals 0

    .prologue
    .line 50
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 40
    if-ne p0, p1, :cond_1

    .line 45
    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v1, p1, Lorg/spongycastle/asn1/d;

    if-eqz v1, :cond_2

    check-cast p1, Lorg/spongycastle/asn1/d;

    invoke-interface {p1}, Lorg/spongycastle/asn1/d;->c()Lorg/spongycastle/asn1/q;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/spongycastle/asn1/q;->a(Lorg/spongycastle/asn1/q;)Z

    move-result v1

    if-nez v1, :cond_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method h()Lorg/spongycastle/asn1/q;
    .locals 0

    .prologue
    .line 60
    return-object p0
.end method

.method public abstract hashCode()I
.end method

.method i()Lorg/spongycastle/asn1/q;
    .locals 0

    .prologue
    .line 70
    return-object p0
.end method
