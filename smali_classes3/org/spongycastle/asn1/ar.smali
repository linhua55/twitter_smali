.class Lorg/spongycastle/asn1/ar;
.super Ljava/lang/Object;
.source "Twttr"


# static fields
.field static final a:Lorg/spongycastle/asn1/r;

.field static final b:Lorg/spongycastle/asn1/t;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 5
    new-instance v0, Lorg/spongycastle/asn1/ba;

    invoke-direct {v0}, Lorg/spongycastle/asn1/ba;-><init>()V

    sput-object v0, Lorg/spongycastle/asn1/ar;->a:Lorg/spongycastle/asn1/r;

    .line 6
    new-instance v0, Lorg/spongycastle/asn1/bc;

    invoke-direct {v0}, Lorg/spongycastle/asn1/bc;-><init>()V

    sput-object v0, Lorg/spongycastle/asn1/ar;->b:Lorg/spongycastle/asn1/t;

    return-void
.end method

.method static a(Lorg/spongycastle/asn1/e;)Lorg/spongycastle/asn1/r;
    .locals 2

    .prologue
    .line 10
    invoke-virtual {p0}, Lorg/spongycastle/asn1/e;->a()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    sget-object v0, Lorg/spongycastle/asn1/ar;->a:Lorg/spongycastle/asn1/r;

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/spongycastle/asn1/bk;

    invoke-direct {v0, p0}, Lorg/spongycastle/asn1/bk;-><init>(Lorg/spongycastle/asn1/e;)V

    goto :goto_0
.end method

.method static b(Lorg/spongycastle/asn1/e;)Lorg/spongycastle/asn1/t;
    .locals 2

    .prologue
    .line 15
    invoke-virtual {p0}, Lorg/spongycastle/asn1/e;->a()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    sget-object v0, Lorg/spongycastle/asn1/ar;->b:Lorg/spongycastle/asn1/t;

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/spongycastle/asn1/bl;

    invoke-direct {v0, p0}, Lorg/spongycastle/asn1/bl;-><init>(Lorg/spongycastle/asn1/e;)V

    goto :goto_0
.end method
