.class Lorg/spongycastle/asn1/ad;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Ljava/util/Enumeration;


# instance fields
.field a:I

.field final synthetic b:Lorg/spongycastle/asn1/ac;


# direct methods
.method constructor <init>(Lorg/spongycastle/asn1/ac;)V
    .locals 1

    .prologue
    .line 77
    iput-object p1, p0, Lorg/spongycastle/asn1/ad;->b:Lorg/spongycastle/asn1/ac;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    const/4 v0, 0x0

    iput v0, p0, Lorg/spongycastle/asn1/ad;->a:I

    return-void
.end method


# virtual methods
.method public hasMoreElements()Z
    .locals 2

    .prologue
    .line 82
    iget v0, p0, Lorg/spongycastle/asn1/ad;->a:I

    iget-object v1, p0, Lorg/spongycastle/asn1/ad;->b:Lorg/spongycastle/asn1/ac;

    invoke-static {v1}, Lorg/spongycastle/asn1/ac;->a(Lorg/spongycastle/asn1/ac;)[Lorg/spongycastle/asn1/m;

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public nextElement()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 87
    iget-object v0, p0, Lorg/spongycastle/asn1/ad;->b:Lorg/spongycastle/asn1/ac;

    invoke-static {v0}, Lorg/spongycastle/asn1/ac;->a(Lorg/spongycastle/asn1/ac;)[Lorg/spongycastle/asn1/m;

    move-result-object v0

    iget v1, p0, Lorg/spongycastle/asn1/ad;->a:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/spongycastle/asn1/ad;->a:I

    aget-object v0, v0, v1

    return-object v0
.end method
