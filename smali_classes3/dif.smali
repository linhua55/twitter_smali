.class public Ldif;
.super Lorg/spongycastle/asn1/k;
.source "Twttr"


# instance fields
.field private a:Ldid;

.field private b:Lorg/spongycastle/asn1/ao;


# direct methods
.method public constructor <init>(Ldid;Lorg/spongycastle/asn1/d;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 54
    invoke-direct {p0}, Lorg/spongycastle/asn1/k;-><init>()V

    .line 55
    new-instance v0, Lorg/spongycastle/asn1/ao;

    invoke-direct {v0, p2}, Lorg/spongycastle/asn1/ao;-><init>(Lorg/spongycastle/asn1/d;)V

    iput-object v0, p0, Ldif;->b:Lorg/spongycastle/asn1/ao;

    .line 56
    iput-object p1, p0, Ldif;->a:Ldid;

    .line 57
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/asn1/r;)V
    .locals 3

    .prologue
    .line 69
    invoke-direct {p0}, Lorg/spongycastle/asn1/k;-><init>()V

    .line 70
    invoke-virtual {p1}, Lorg/spongycastle/asn1/r;->g()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 72
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Bad sequence size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lorg/spongycastle/asn1/r;->g()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 76
    :cond_0
    invoke-virtual {p1}, Lorg/spongycastle/asn1/r;->e()Ljava/util/Enumeration;

    move-result-object v0

    .line 78
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ldid;->a(Ljava/lang/Object;)Ldid;

    move-result-object v1

    iput-object v1, p0, Ldif;->a:Ldid;

    .line 79
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/ao;->a(Ljava/lang/Object;)Lorg/spongycastle/asn1/ao;

    move-result-object v0

    iput-object v0, p0, Ldif;->b:Lorg/spongycastle/asn1/ao;

    .line 80
    return-void
.end method

.method public static a(Ljava/lang/Object;)Ldif;
    .locals 2

    .prologue
    .line 38
    instance-of v0, p0, Ldif;

    if-eqz v0, :cond_0

    .line 40
    check-cast p0, Ldif;

    .line 47
    :goto_0
    return-object p0

    .line 42
    :cond_0
    if-eqz p0, :cond_1

    .line 44
    new-instance v0, Ldif;

    invoke-static {p0}, Lorg/spongycastle/asn1/r;->a(Ljava/lang/Object;)Lorg/spongycastle/asn1/r;

    move-result-object v1

    invoke-direct {v0, v1}, Ldif;-><init>(Lorg/spongycastle/asn1/r;)V

    move-object p0, v0

    goto :goto_0

    .line 47
    :cond_1
    const/4 p0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a()Ldid;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Ldif;->a:Ldid;

    return-object v0
.end method

.method public b()Lorg/spongycastle/asn1/q;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 107
    new-instance v0, Lorg/spongycastle/asn1/h;

    iget-object v1, p0, Ldif;->b:Lorg/spongycastle/asn1/ao;

    invoke-virtual {v1}, Lorg/spongycastle/asn1/ao;->d()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/h;-><init>([B)V

    .line 109
    invoke-virtual {v0}, Lorg/spongycastle/asn1/h;->d()Lorg/spongycastle/asn1/q;

    move-result-object v0

    return-object v0
.end method

.method public c()Lorg/spongycastle/asn1/q;
    .locals 2

    .prologue
    .line 149
    new-instance v0, Lorg/spongycastle/asn1/e;

    invoke-direct {v0}, Lorg/spongycastle/asn1/e;-><init>()V

    .line 151
    iget-object v1, p0, Ldif;->a:Ldid;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/e;->a(Lorg/spongycastle/asn1/d;)V

    .line 152
    iget-object v1, p0, Ldif;->b:Lorg/spongycastle/asn1/ao;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/e;->a(Lorg/spongycastle/asn1/d;)V

    .line 154
    new-instance v1, Lorg/spongycastle/asn1/ba;

    invoke-direct {v1, v0}, Lorg/spongycastle/asn1/ba;-><init>(Lorg/spongycastle/asn1/e;)V

    return-object v1
.end method
