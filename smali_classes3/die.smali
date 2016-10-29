.class public Ldie;
.super Lorg/spongycastle/asn1/k;
.source "Twttr"


# instance fields
.field private a:[B

.field private b:Ldid;


# direct methods
.method public constructor <init>(Ldid;[B)V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Lorg/spongycastle/asn1/k;-><init>()V

    .line 54
    iput-object p2, p0, Ldie;->a:[B

    .line 55
    iput-object p1, p0, Ldie;->b:Ldid;

    .line 56
    return-void
.end method


# virtual methods
.method public c()Lorg/spongycastle/asn1/q;
    .locals 3

    .prologue
    .line 79
    new-instance v0, Lorg/spongycastle/asn1/e;

    invoke-direct {v0}, Lorg/spongycastle/asn1/e;-><init>()V

    .line 81
    iget-object v1, p0, Ldie;->b:Ldid;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/e;->a(Lorg/spongycastle/asn1/d;)V

    .line 82
    new-instance v1, Lorg/spongycastle/asn1/aw;

    iget-object v2, p0, Ldie;->a:[B

    invoke-direct {v1, v2}, Lorg/spongycastle/asn1/aw;-><init>([B)V

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/e;->a(Lorg/spongycastle/asn1/d;)V

    .line 84
    new-instance v1, Lorg/spongycastle/asn1/ba;

    invoke-direct {v1, v0}, Lorg/spongycastle/asn1/ba;-><init>(Lorg/spongycastle/asn1/e;)V

    return-object v1
.end method
