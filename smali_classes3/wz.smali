.class public abstract Lwz;
.super Lcom/twitter/util/object/h;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Lcom/twitter/model/dms/b;",
        "H:",
        "Lxa;",
        "B:",
        "Lwz",
        "<TE;TH;TB;>;>",
        "Lcom/twitter/util/object/h",
        "<",
        "Lwy;",
        ">;"
    }
.end annotation


# instance fields
.field a:Lxa;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TH;"
        }
    .end annotation
.end field

.field b:Lcom/twitter/model/dms/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field

.field private c:Lbnt;

.field private d:Lbnt;

.field private e:Landroid/content/Context;

.field private f:Lcom/twitter/android/dl;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/twitter/util/object/h;-><init>()V

    return-void
.end method

.method static synthetic a(Lwz;)Lbnt;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lwz;->c:Lbnt;

    return-object v0
.end method

.method static synthetic b(Lwz;)Lbnt;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lwz;->d:Lbnt;

    return-object v0
.end method

.method static synthetic c(Lwz;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lwz;->e:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic d(Lwz;)Lcom/twitter/android/dl;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lwz;->f:Lcom/twitter/android/dl;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Context;)Lwz;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")TB;"
        }
    .end annotation

    .prologue
    .line 112
    iput-object p1, p0, Lwz;->e:Landroid/content/Context;

    .line 113
    invoke-static {p0}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lwz;

    return-object v0
.end method

.method public a(Lbnt;)Lwz;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbnt;",
            ")TB;"
        }
    .end annotation

    .prologue
    .line 100
    iput-object p1, p0, Lwz;->c:Lbnt;

    .line 101
    invoke-static {p0}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lwz;

    return-object v0
.end method

.method public a(Lcom/twitter/android/dl;)Lwz;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/android/dl;",
            ")TB;"
        }
    .end annotation

    .prologue
    .line 118
    iput-object p1, p0, Lwz;->f:Lcom/twitter/android/dl;

    .line 119
    invoke-static {p0}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lwz;

    return-object v0
.end method

.method public a(Lcom/twitter/model/dms/b;)Lwz;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)TB;"
        }
    .end annotation

    .prologue
    .line 94
    iput-object p1, p0, Lwz;->b:Lcom/twitter/model/dms/b;

    .line 95
    invoke-static {p0}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lwz;

    return-object v0
.end method

.method public a(Lxa;)Lwz;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TH;)TB;"
        }
    .end annotation

    .prologue
    .line 124
    iput-object p1, p0, Lwz;->a:Lxa;

    .line 125
    invoke-static {p0}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lwz;

    return-object v0
.end method

.method public b(Lbnt;)Lwz;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbnt;",
            ")TB;"
        }
    .end annotation

    .prologue
    .line 106
    iput-object p1, p0, Lwz;->d:Lbnt;

    .line 107
    invoke-static {p0}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lwz;

    return-object v0
.end method

.method public bq_()Z
    .locals 1

    .prologue
    .line 130
    invoke-super {p0}, Lcom/twitter/util/object/h;->bq_()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lwz;->b:Lcom/twitter/model/dms/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lwz;->c:Lbnt;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lwz;->e:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lwz;->f:Lcom/twitter/android/dl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lwz;->a:Lxa;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
