.class public Lorg/spongycastle/crypto/b;
.super Ljava/lang/Object;
.source "Twttr"


# instance fields
.field private a:Ldim;

.field private b:Ldim;


# direct methods
.method public constructor <init>(Ldim;Ldim;)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lorg/spongycastle/crypto/b;->a:Ldim;

    .line 24
    iput-object p2, p0, Lorg/spongycastle/crypto/b;->b:Ldim;

    .line 25
    return-void
.end method


# virtual methods
.method public a()Ldim;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lorg/spongycastle/crypto/b;->a:Ldim;

    return-object v0
.end method

.method public b()Ldim;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lorg/spongycastle/crypto/b;->b:Ldim;

    return-object v0
.end method
