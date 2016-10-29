.class public Lcj;
.super Lcp;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcp",
        "<",
        "Lcj;",
        "Lcom/facebook/imagepipeline/request/ImageRequest;",
        "Lcom/facebook/common/references/a",
        "<",
        "Lfm;",
        ">;",
        "Lfp;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Let;

.field private final b:Lcl;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcl;Let;Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcl;",
            "Let;",
            "Ljava/util/Set",
            "<",
            "Lct;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 45
    invoke-direct {p0, p1, p4}, Lcp;-><init>(Landroid/content/Context;Ljava/util/Set;)V

    .line 46
    iput-object p3, p0, Lcj;->a:Let;

    .line 47
    iput-object p2, p0, Lcj;->b:Lcl;

    .line 48
    return-void
.end method


# virtual methods
.method protected a()Lci;
    .locals 4

    .prologue
    .line 57
    invoke-virtual {p0}, Lcj;->g()Lcx;

    move-result-object v0

    .line 59
    instance-of v1, v0, Lci;

    if-eqz v1, :cond_0

    .line 60
    check-cast v0, Lci;

    .line 61
    invoke-virtual {p0}, Lcj;->l()Lbm;

    move-result-object v1

    invoke-static {}, Lcj;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcj;->e()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lci;->a(Lbm;Ljava/lang/String;Ljava/lang/Object;)V

    .line 71
    :goto_0
    return-object v0

    .line 66
    :cond_0
    iget-object v0, p0, Lcj;->b:Lcl;

    invoke-virtual {p0}, Lcj;->l()Lbm;

    move-result-object v1

    invoke-static {}, Lcj;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcj;->e()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcl;->a(Lbm;Ljava/lang/String;Ljava/lang/Object;)Lci;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Landroid/net/Uri;)Lcj;
    .locals 1

    .prologue
    .line 52
    invoke-static {p1}, Lcom/facebook/imagepipeline/request/ImageRequest;->a(Landroid/net/Uri;)Lcom/facebook/imagepipeline/request/ImageRequest;

    move-result-object v0

    invoke-super {p0, v0}, Lcp;->b(Ljava/lang/Object;)Lcp;

    move-result-object v0

    check-cast v0, Lcj;

    return-object v0
.end method

.method protected a(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;Z)Lcom/facebook/datasource/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/request/ImageRequest;",
            "Ljava/lang/Object;",
            "Z)",
            "Lcom/facebook/datasource/d",
            "<",
            "Lcom/facebook/common/references/a",
            "<",
            "Lfm;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 79
    if-eqz p3, :cond_0

    .line 80
    iget-object v0, p0, Lcj;->a:Let;

    invoke-virtual {v0, p1, p2}, Let;->a(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;)Lcom/facebook/datasource/d;

    move-result-object v0

    .line 82
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcj;->a:Let;

    invoke-virtual {v0, p1, p2}, Let;->b(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;)Lcom/facebook/datasource/d;

    move-result-object v0

    goto :goto_0
.end method

.method protected bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;Z)Lcom/facebook/datasource/d;
    .locals 1

    .prologue
    .line 31
    check-cast p1, Lcom/facebook/imagepipeline/request/ImageRequest;

    invoke-virtual {p0, p1, p2, p3}, Lcj;->a(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;Z)Lcom/facebook/datasource/d;

    move-result-object v0

    return-object v0
.end method

.method protected b()Lcj;
    .locals 0

    .prologue
    .line 88
    return-object p0
.end method

.method public synthetic b(Landroid/net/Uri;)Lda;
    .locals 1

    .prologue
    .line 31
    invoke-virtual {p0, p1}, Lcj;->a(Landroid/net/Uri;)Lcj;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic c()Lcp;
    .locals 1

    .prologue
    .line 31
    invoke-virtual {p0}, Lcj;->b()Lcj;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic d()Lcm;
    .locals 1

    .prologue
    .line 31
    invoke-virtual {p0}, Lcj;->a()Lci;

    move-result-object v0

    return-object v0
.end method
