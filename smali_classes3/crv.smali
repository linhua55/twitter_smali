.class public final Lcrv;
.super Lcom/twitter/util/object/h;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/util/object/h",
        "<",
        "Lcrt;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/twitter/util/object/h;-><init>()V

    return-void
.end method

.method static synthetic a(Lcrv;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcrv;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcrv;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcrv;->b:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcrv;
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lcrv;->a:Ljava/lang/String;

    .line 45
    return-object p0
.end method

.method public b(Ljava/lang/String;)Lcrv;
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lcrv;->b:Ljava/lang/String;

    .line 51
    return-object p0
.end method

.method public bq_()Z
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcrv;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/twitter/util/aj;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcrv;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/twitter/util/aj;->b(Ljava/lang/CharSequence;)Z

    move-result v0

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
    .line 36
    invoke-virtual {p0}, Lcrv;->e()Lcrt;

    move-result-object v0

    return-object v0
.end method

.method protected e()Lcrt;
    .locals 2

    .prologue
    .line 62
    new-instance v0, Lcrt;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcrt;-><init>(Lcrv;Lcru;)V

    return-object v0
.end method
