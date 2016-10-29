.class public Lci;
.super Lcm;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcm",
        "<",
        "Lcom/facebook/common/references/a",
        "<",
        "Lfm;",
        ">;",
        "Lfp;",
        ">;"
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# instance fields
.field private final b:Landroid/content/res/Resources;

.field private final c:Ldb;

.field private d:Lbm;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbm",
            "<",
            "Lcom/facebook/datasource/d",
            "<",
            "Lcom/facebook/common/references/a",
            "<",
            "Lfm;",
            ">;>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    const-class v0, Lci;

    sput-object v0, Lci;->a:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;Lcom/facebook/drawee/components/a;Ldb;Ljava/util/concurrent/Executor;Lbm;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources;",
            "Lcom/facebook/drawee/components/a;",
            "Ldb;",
            "Ljava/util/concurrent/Executor;",
            "Lbm",
            "<",
            "Lcom/facebook/datasource/d",
            "<",
            "Lcom/facebook/common/references/a",
            "<",
            "Lfm;",
            ">;>;>;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 63
    invoke-direct {p0, p2, p4, p6, p7}, Lcm;-><init>(Lcom/facebook/drawee/components/a;Ljava/util/concurrent/Executor;Ljava/lang/String;Ljava/lang/Object;)V

    .line 64
    iput-object p1, p0, Lci;->b:Landroid/content/res/Resources;

    .line 65
    iput-object p3, p0, Lci;->c:Ldb;

    .line 66
    invoke-direct {p0, p5}, Lci;->a(Lbm;)V

    .line 67
    return-void
.end method

.method private a(Lbm;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbm",
            "<",
            "Lcom/facebook/datasource/d",
            "<",
            "Lcom/facebook/common/references/a",
            "<",
            "Lfm;",
            ">;>;>;)V"
        }
    .end annotation

    .prologue
    .line 86
    iput-object p1, p0, Lci;->d:Lbm;

    .line 87
    return-void
.end method


# virtual methods
.method protected a(Lcom/facebook/common/references/a;)Landroid/graphics/drawable/Drawable;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/common/references/a",
            "<",
            "Lfm;",
            ">;)",
            "Landroid/graphics/drawable/Drawable;"
        }
    .end annotation

    .prologue
    .line 103
    invoke-static {p1}, Lcom/facebook/common/references/a;->a(Lcom/facebook/common/references/a;)Z

    move-result v0

    invoke-static {v0}, Lbk;->b(Z)V

    .line 104
    invoke-virtual {p1}, Lcom/facebook/common/references/a;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfm;

    .line 105
    instance-of v1, v0, Lfn;

    if-eqz v1, :cond_2

    .line 106
    check-cast v0, Lfn;

    .line 107
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v1, p0, Lci;->b:Landroid/content/res/Resources;

    invoke-virtual {v0}, Lfn;->f()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 110
    invoke-virtual {v0}, Lfn;->h()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lfn;->h()I

    move-result v1

    const/4 v3, -0x1

    if-ne v1, v3, :cond_1

    :cond_0
    move-object v0, v2

    .line 117
    :goto_0
    return-object v0

    .line 114
    :cond_1
    new-instance v1, Lcom/facebook/drawee/drawable/h;

    invoke-virtual {v0}, Lfn;->h()I

    move-result v0

    invoke-direct {v1, v2, v0}, Lcom/facebook/drawee/drawable/h;-><init>(Landroid/graphics/drawable/Drawable;I)V

    move-object v0, v1

    goto :goto_0

    .line 116
    :cond_2
    instance-of v1, v0, Lfk;

    if-eqz v1, :cond_3

    .line 117
    iget-object v1, p0, Lci;->c:Ldb;

    check-cast v0, Lfk;

    invoke-virtual {v0}, Lfk;->f()Lcom/facebook/imagepipeline/animated/base/n;

    move-result-object v0

    invoke-virtual {v1, v0}, Ldb;->a(Lcom/facebook/imagepipeline/animated/base/n;)Lcom/facebook/imagepipeline/animated/base/b;

    move-result-object v0

    goto :goto_0

    .line 120
    :cond_3
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unrecognized image class: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected a()Lcom/facebook/datasource/d;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/datasource/d",
            "<",
            "Lcom/facebook/common/references/a",
            "<",
            "Lfm;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 95
    const/4 v0, 0x2

    invoke-static {v0}, Lbo;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    sget-object v0, Lci;->a:Ljava/lang/Class;

    const-string/jumbo v1, "controller %x: getDataSource"

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lbo;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    .line 98
    :cond_0
    iget-object v0, p0, Lci;->d:Lbm;

    invoke-interface {v0}, Lbm;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/datasource/d;

    return-object v0
.end method

.method protected a(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 142
    instance-of v0, p1, Lce;

    if-eqz v0, :cond_0

    .line 143
    check-cast p1, Lce;

    invoke-interface {p1}, Lce;->a()V

    .line 145
    :cond_0
    return-void
.end method

.method public a(Lbm;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbm",
            "<",
            "Lcom/facebook/datasource/d",
            "<",
            "Lcom/facebook/common/references/a",
            "<",
            "Lfm;",
            ">;>;>;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 81
    invoke-super {p0, p2, p3}, Lcm;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 82
    invoke-direct {p0, p1}, Lci;->a(Lbm;)V

    .line 83
    return-void
.end method

.method protected synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 43
    check-cast p1, Lcom/facebook/common/references/a;

    invoke-virtual {p0, p1}, Lci;->d(Lcom/facebook/common/references/a;)V

    return-void
.end method

.method protected synthetic b(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 43
    check-cast p1, Lcom/facebook/common/references/a;

    invoke-virtual {p0, p1}, Lci;->c(Lcom/facebook/common/references/a;)I

    move-result v0

    return v0
.end method

.method protected b(Lcom/facebook/common/references/a;)Lfp;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/common/references/a",
            "<",
            "Lfm;",
            ">;)",
            "Lfp;"
        }
    .end annotation

    .prologue
    .line 126
    invoke-static {p1}, Lcom/facebook/common/references/a;->a(Lcom/facebook/common/references/a;)Z

    move-result v0

    invoke-static {v0}, Lbk;->b(Z)V

    .line 127
    invoke-virtual {p1}, Lcom/facebook/common/references/a;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfp;

    return-object v0
.end method

.method protected c(Lcom/facebook/common/references/a;)I
    .locals 1
    .param p1    # Lcom/facebook/common/references/a;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/common/references/a",
            "<",
            "Lfm;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 132
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/facebook/common/references/a;->e()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected synthetic c(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 43
    check-cast p1, Lcom/facebook/common/references/a;

    invoke-virtual {p0, p1}, Lci;->b(Lcom/facebook/common/references/a;)Lfp;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic d(Ljava/lang/Object;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 43
    check-cast p1, Lcom/facebook/common/references/a;

    invoke-virtual {p0, p1}, Lci;->a(Lcom/facebook/common/references/a;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method protected d(Lcom/facebook/common/references/a;)V
    .locals 0
    .param p1    # Lcom/facebook/common/references/a;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/common/references/a",
            "<",
            "Lfm;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 137
    invoke-static {p1}, Lcom/facebook/common/references/a;->c(Lcom/facebook/common/references/a;)V

    .line 138
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 149
    invoke-static {p0}, Lbg;->a(Ljava/lang/Object;)Lbi;

    move-result-object v0

    const-string/jumbo v1, "super"

    invoke-super {p0}, Lcm;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lbi;->a(Ljava/lang/String;Ljava/lang/Object;)Lbi;

    move-result-object v0

    const-string/jumbo v1, "dataSourceSupplier"

    iget-object v2, p0, Lci;->d:Lbm;

    invoke-virtual {v0, v1, v2}, Lbi;->a(Ljava/lang/String;Ljava/lang/Object;)Lbi;

    move-result-object v0

    invoke-virtual {v0}, Lbi;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
