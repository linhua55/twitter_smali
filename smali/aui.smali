.class public Laui;
.super Lauf;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Lauc;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Lauf",
        "<TA;>;"
    }
.end annotation


# instance fields
.field private final c:I

.field private final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Laum",
            "<TR;>;>;"
        }
    .end annotation
.end field

.field private final e:Lauk;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lauk",
            "<TR;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Landroid/app/Activity;Ljava/lang/Class;ILauk;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Landroid/app/Activity;",
            ":",
            "Lcom/twitter/app/common/util/t;",
            ">(TC;",
            "Ljava/lang/Class",
            "<*>;I",
            "Lauk",
            "<TR;>;)V"
        }
    .end annotation

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Lauf;-><init>(Landroid/app/Activity;Ljava/lang/Class;)V

    .line 29
    invoke-static {}, Lcom/twitter/util/collection/MutableList;->a()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Laui;->d:Ljava/util/List;

    .line 42
    const v0, 0xffff

    if-eq p3, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/twitter/util/h;->b(Z)Z

    .line 43
    iput p3, p0, Laui;->c:I

    .line 44
    iput-object p4, p0, Laui;->e:Lauk;

    .line 45
    check-cast p1, Lcom/twitter/app/common/util/t;

    new-instance v0, Lauj;

    invoke-direct {v0, p0}, Lauj;-><init>(Laui;)V

    invoke-interface {p1, p3, v0}, Lcom/twitter/app/common/util/t;->a(ILcom/twitter/app/common/util/w;)V

    .line 51
    return-void

    .line 42
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(ILandroid/content/Intent;)V
    .locals 3

    .prologue
    .line 85
    iget-object v0, p0, Laui;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 86
    iget-object v0, p0, Laui;->e:Lauk;

    invoke-interface {v0, p2}, Lauk;->b(Landroid/content/Intent;)Ljava/lang/Object;

    move-result-object v1

    .line 87
    iget-object v0, p0, Laui;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laum;

    .line 88
    invoke-interface {v0, p1, v1}, Laum;->a(ILjava/lang/Object;)V

    goto :goto_0

    .line 91
    :cond_0
    return-void
.end method

.method static synthetic a(Laui;ILandroid/content/Intent;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Laui;->a(ILandroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public a(Laum;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Laum",
            "<TR;>;)V"
        }
    .end annotation

    .prologue
    .line 73
    invoke-static {}, Lcom/twitter/util/h;->a()V

    .line 74
    iget v0, p0, Laui;->c:I

    const v1, 0xffff

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/twitter/util/h;->b(Z)Z

    .line 75
    iget-object v0, p0, Laui;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    return-void

    .line 74
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(Laum;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Laum",
            "<TR;>;)V"
        }
    .end annotation

    .prologue
    .line 80
    invoke-static {}, Lcom/twitter/util/h;->a()V

    .line 81
    iget-object v0, p0, Laui;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 82
    return-void
.end method

.method public c(Lauc;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)V"
        }
    .end annotation

    .prologue
    .line 67
    invoke-static {}, Lcom/twitter/util/h;->a()V

    .line 68
    iget-object v0, p0, Laui;->a:Landroid/app/Activity;

    invoke-virtual {p0, p1}, Laui;->a(Lauc;)Landroid/content/Intent;

    move-result-object v1

    iget v2, p0, Laui;->c:I

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 69
    return-void
.end method
