.class public Lcl;
.super Ljava/lang/Object;
.source "Twttr"


# instance fields
.field private a:Landroid/content/res/Resources;

.field private b:Lcom/facebook/drawee/components/a;

.field private c:Ldb;

.field private d:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Lcom/facebook/drawee/components/a;Ldb;Ljava/util/concurrent/Executor;)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcl;->a:Landroid/content/res/Resources;

    .line 39
    iput-object p2, p0, Lcl;->b:Lcom/facebook/drawee/components/a;

    .line 40
    iput-object p3, p0, Lcl;->c:Ldb;

    .line 41
    iput-object p4, p0, Lcl;->d:Ljava/util/concurrent/Executor;

    .line 42
    return-void
.end method


# virtual methods
.method public a(Lbm;Ljava/lang/String;Ljava/lang/Object;)Lci;
    .locals 8
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
            ")",
            "Lci;"
        }
    .end annotation

    .prologue
    .line 48
    new-instance v0, Lci;

    iget-object v1, p0, Lcl;->a:Landroid/content/res/Resources;

    iget-object v2, p0, Lcl;->b:Lcom/facebook/drawee/components/a;

    iget-object v3, p0, Lcl;->c:Ldb;

    iget-object v4, p0, Lcl;->d:Ljava/util/concurrent/Executor;

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-direct/range {v0 .. v7}, Lci;-><init>(Landroid/content/res/Resources;Lcom/facebook/drawee/components/a;Ldb;Ljava/util/concurrent/Executor;Lbm;Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method
