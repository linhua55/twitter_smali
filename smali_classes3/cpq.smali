.class public final Lcpq;
.super Lcom/twitter/util/object/h;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/util/object/h",
        "<",
        "Lcpo;",
        ">;"
    }
.end annotation


# instance fields
.field a:Lcps;

.field b:Lcpf;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 185
    invoke-direct {p0}, Lcom/twitter/util/object/h;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcpf;)Lcpq;
    .locals 0

    .prologue
    .line 198
    iput-object p1, p0, Lcpq;->b:Lcpf;

    .line 199
    return-object p0
.end method

.method public a(Lcps;)Lcpq;
    .locals 0

    .prologue
    .line 192
    iput-object p1, p0, Lcpq;->a:Lcps;

    .line 193
    return-object p0
.end method

.method public bq_()Z
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lcpq;->b:Lcpf;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected synthetic c()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 185
    invoke-virtual {p0}, Lcpq;->e()Lcpo;

    move-result-object v0

    return-object v0
.end method

.method protected e()Lcpo;
    .locals 3

    .prologue
    .line 205
    new-instance v1, Lcpo;

    iget-object v0, p0, Lcpq;->b:Lcpf;

    .line 206
    invoke-static {v0}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcpf;

    iget-object v2, p0, Lcpq;->a:Lcps;

    invoke-direct {v1, v0, v2}, Lcpo;-><init>(Lcpf;Lcps;)V

    .line 205
    return-object v1
.end method
