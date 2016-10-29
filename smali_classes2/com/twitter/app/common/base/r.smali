.class public final Lcom/twitter/app/common/base/r;
.super Lcom/twitter/util/object/h;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/util/object/h",
        "<",
        "Lcom/twitter/app/common/base/SnackbarData;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Landroid/content/Intent;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/twitter/util/object/h;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/twitter/app/common/base/r;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/twitter/app/common/base/r;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/twitter/app/common/base/r;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/twitter/app/common/base/r;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/twitter/app/common/base/r;)Landroid/content/Intent;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/twitter/app/common/base/r;->c:Landroid/content/Intent;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Intent;)Lcom/twitter/app/common/base/r;
    .locals 0

    .prologue
    .line 82
    iput-object p1, p0, Lcom/twitter/app/common/base/r;->c:Landroid/content/Intent;

    .line 83
    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/twitter/app/common/base/r;
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Lcom/twitter/app/common/base/r;->a:Ljava/lang/String;

    .line 71
    return-object p0
.end method

.method public b(Ljava/lang/String;)Lcom/twitter/app/common/base/r;
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lcom/twitter/app/common/base/r;->b:Ljava/lang/String;

    .line 77
    return-object p0
.end method

.method public bq_()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 88
    iget-object v0, p0, Lcom/twitter/app/common/base/r;->a:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/twitter/app/common/base/r;->b:Ljava/lang/String;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    iget-object v3, p0, Lcom/twitter/app/common/base/r;->c:Landroid/content/Intent;

    if-nez v3, :cond_1

    move v3, v1

    :goto_1
    if-ne v0, v3, :cond_2

    :goto_2
    return v1

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v3, v2

    goto :goto_1

    :cond_2
    move v1, v2

    goto :goto_2
.end method

.method protected synthetic c()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 57
    invoke-virtual {p0}, Lcom/twitter/app/common/base/r;->e()Lcom/twitter/app/common/base/SnackbarData;

    move-result-object v0

    return-object v0
.end method

.method protected e()Lcom/twitter/app/common/base/SnackbarData;
    .locals 2

    .prologue
    .line 65
    new-instance v0, Lcom/twitter/app/common/base/SnackbarData;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/twitter/app/common/base/SnackbarData;-><init>(Lcom/twitter/app/common/base/r;Lcom/twitter/app/common/base/q;)V

    return-object v0
.end method
