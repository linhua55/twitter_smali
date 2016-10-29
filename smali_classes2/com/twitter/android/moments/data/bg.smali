.class public Lcom/twitter/android/moments/data/bg;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lcom/twitter/android/moments/ui/guide/az;


# instance fields
.field private final a:Laiu;

.field private final b:Lcom/twitter/android/moments/data/bo;

.field private final c:Lrx/t;

.field private final d:Lrx/t;

.field private e:Lrx/ap;

.field private f:Lcrc;


# direct methods
.method public constructor <init>(Laiu;Lcom/twitter/android/moments/data/bo;)V
    .locals 2

    .prologue
    .line 37
    invoke-static {}, Ldls;->d()Lrx/t;

    move-result-object v0

    invoke-static {}, Ldiz;->a()Lrx/t;

    move-result-object v1

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/twitter/android/moments/data/bg;-><init>(Laiu;Lcom/twitter/android/moments/data/bo;Lrx/t;Lrx/t;)V

    .line 38
    return-void
.end method

.method public constructor <init>(Laiu;Lcom/twitter/android/moments/data/bo;Lrx/t;Lrx/t;)V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/twitter/android/moments/data/bg;->a:Laiu;

    .line 44
    iput-object p2, p0, Lcom/twitter/android/moments/data/bg;->b:Lcom/twitter/android/moments/data/bo;

    .line 45
    iput-object p3, p0, Lcom/twitter/android/moments/data/bg;->c:Lrx/t;

    .line 46
    iput-object p4, p0, Lcom/twitter/android/moments/data/bg;->d:Lrx/t;

    .line 47
    return-void
.end method

.method static synthetic a(Lcom/twitter/android/moments/data/bg;)Laiu;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/twitter/android/moments/data/bg;->a:Laiu;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 81
    iget-object v0, p0, Lcom/twitter/android/moments/data/bg;->e:Lrx/ap;

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/twitter/android/moments/data/bg;->e:Lrx/ap;

    invoke-interface {v0}, Lrx/ap;->R_()V

    .line 83
    iput-object v1, p0, Lcom/twitter/android/moments/data/bg;->e:Lrx/ap;

    .line 85
    :cond_0
    iput-object v1, p0, Lcom/twitter/android/moments/data/bg;->f:Lcrc;

    .line 86
    iget-object v0, p0, Lcom/twitter/android/moments/data/bg;->a:Laiu;

    invoke-virtual {v0}, Laiu;->a()V

    .line 87
    return-void
.end method

.method public a(Lcrc;)V
    .locals 2

    .prologue
    .line 50
    iget-object v0, p0, Lcom/twitter/android/moments/data/bg;->f:Lcrc;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcrc;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/twitter/android/moments/data/bg;->f:Lcrc;

    iget-object v1, v1, Lcrc;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 75
    :goto_0
    return-void

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/moments/data/bg;->b:Lcom/twitter/android/moments/data/bo;

    iget-object v1, p1, Lcrc;->b:Ljava/lang/String;

    .line 60
    invoke-interface {v0, v1}, Lcom/twitter/android/moments/data/bo;->a(Ljava/lang/String;)Lcrc;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/twitter/util/object/g;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcrc;

    .line 62
    invoke-virtual {p0}, Lcom/twitter/android/moments/data/bg;->a()V

    .line 63
    iget-object v1, p0, Lcom/twitter/android/moments/data/bg;->a:Laiu;

    invoke-virtual {v1, v0}, Laiu;->a(Lcrc;)V

    .line 65
    iget-object v0, p0, Lcom/twitter/android/moments/data/bg;->b:Lcom/twitter/android/moments/data/bo;

    iget-object v1, p1, Lcrc;->b:Ljava/lang/String;

    .line 66
    invoke-interface {v0, v1}, Lcom/twitter/android/moments/data/bo;->b(Ljava/lang/String;)Lrx/o;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/moments/data/bg;->c:Lrx/t;

    .line 67
    invoke-virtual {v0, v1}, Lrx/o;->b(Lrx/t;)Lrx/o;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/moments/data/bg;->d:Lrx/t;

    .line 68
    invoke-virtual {v0, v1}, Lrx/o;->a(Lrx/t;)Lrx/o;

    move-result-object v0

    new-instance v1, Lcom/twitter/android/moments/data/bh;

    invoke-direct {v1, p0}, Lcom/twitter/android/moments/data/bh;-><init>(Lcom/twitter/android/moments/data/bg;)V

    .line 69
    invoke-virtual {v0, v1}, Lrx/o;->c(Ldjf;)Lrx/ap;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/moments/data/bg;->e:Lrx/ap;

    goto :goto_0
.end method

.method public b()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    .line 92
    iget-object v0, p0, Lcom/twitter/android/moments/data/bg;->a:Laiu;

    invoke-virtual {v0}, Laiu;->b()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
