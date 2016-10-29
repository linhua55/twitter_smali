.class public Lamv;
.super Lamu;
.source "Twttr"


# instance fields
.field public final a:Lcom/twitter/model/moments/viewmodels/m;


# direct methods
.method public constructor <init>(Lcom/twitter/model/moments/viewmodels/m;)V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lamu;-><init>()V

    .line 11
    iput-object p1, p0, Lamv;->a:Lcom/twitter/model/moments/viewmodels/m;

    .line 12
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lamv;->a:Lcom/twitter/model/moments/viewmodels/m;

    invoke-virtual {v0}, Lcom/twitter/model/moments/viewmodels/m;->a()Lcom/twitter/model/moments/viewmodels/MomentPage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/model/moments/viewmodels/MomentPage;->i()Lcom/twitter/model/moments/ak;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/model/moments/ak;->hashCode()I

    move-result v0

    return v0
.end method
