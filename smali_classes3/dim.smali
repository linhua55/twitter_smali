.class public Ldim;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lorg/spongycastle/crypto/c;


# instance fields
.field a:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-boolean p1, p0, Ldim;->a:Z

    .line 14
    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .prologue
    .line 18
    iget-boolean v0, p0, Ldim;->a:Z

    return v0
.end method
