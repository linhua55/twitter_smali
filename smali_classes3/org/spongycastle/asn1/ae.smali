.class public Lorg/spongycastle/asn1/ae;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lorg/spongycastle/asn1/n;


# instance fields
.field private a:Lorg/spongycastle/asn1/v;


# direct methods
.method constructor <init>(Lorg/spongycastle/asn1/v;)V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lorg/spongycastle/asn1/ae;->a:Lorg/spongycastle/asn1/v;

    .line 17
    return-void
.end method


# virtual methods
.method public c()Lorg/spongycastle/asn1/q;
    .locals 4

    .prologue
    .line 34
    :try_start_0
    invoke-virtual {p0}, Lorg/spongycastle/asn1/ae;->g()Lorg/spongycastle/asn1/q;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 36
    :catch_0
    move-exception v0

    .line 38
    new-instance v1, Lorg/spongycastle/asn1/ASN1ParsingException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "IOException converting stream to byte array: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/spongycastle/asn1/ASN1ParsingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public d()Ljava/io/InputStream;
    .locals 2

    .prologue
    .line 21
    new-instance v0, Lorg/spongycastle/asn1/al;

    iget-object v1, p0, Lorg/spongycastle/asn1/ae;->a:Lorg/spongycastle/asn1/v;

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/al;-><init>(Lorg/spongycastle/asn1/v;)V

    return-object v0
.end method

.method public g()Lorg/spongycastle/asn1/q;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 27
    new-instance v0, Lorg/spongycastle/asn1/ac;

    invoke-virtual {p0}, Lorg/spongycastle/asn1/ae;->d()Ljava/io/InputStream;

    move-result-object v1

    invoke-static {v1}, Lorg/spongycastle/util/io/a;->a(Ljava/io/InputStream;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/ac;-><init>([B)V

    return-object v0
.end method
