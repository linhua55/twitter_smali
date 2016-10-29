.class Lcom/twitter/android/ce;
.super Lcom/twitter/util/object/h;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/util/object/h",
        "<",
        "Lcom/twitter/android/cc;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/twitter/library/scribe/TwitterScribeAssociation;

.field private c:Lcom/twitter/android/by;

.field private d:Lcom/twitter/android/dl;

.field private e:Z

.field private f:Z

.field private g:Z

.field private h:Z

.field private i:Lws;

.field private j:Lcom/twitter/library/card/q;

.field private k:Z

.field private l:Z


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 864
    invoke-direct {p0}, Lcom/twitter/util/object/h;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/twitter/android/ce;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 864
    iget-object v0, p0, Lcom/twitter/android/ce;->a:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic b(Lcom/twitter/android/ce;)Lcom/twitter/android/by;
    .locals 1

    .prologue
    .line 864
    iget-object v0, p0, Lcom/twitter/android/ce;->c:Lcom/twitter/android/by;

    return-object v0
.end method

.method static synthetic c(Lcom/twitter/android/ce;)Lcom/twitter/android/dl;
    .locals 1

    .prologue
    .line 864
    iget-object v0, p0, Lcom/twitter/android/ce;->d:Lcom/twitter/android/dl;

    return-object v0
.end method

.method static synthetic d(Lcom/twitter/android/ce;)Lcom/twitter/library/scribe/TwitterScribeAssociation;
    .locals 1

    .prologue
    .line 864
    iget-object v0, p0, Lcom/twitter/android/ce;->b:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    return-object v0
.end method

.method static synthetic e(Lcom/twitter/android/ce;)Z
    .locals 1

    .prologue
    .line 864
    iget-boolean v0, p0, Lcom/twitter/android/ce;->e:Z

    return v0
.end method

.method static synthetic f(Lcom/twitter/android/ce;)Z
    .locals 1

    .prologue
    .line 864
    iget-boolean v0, p0, Lcom/twitter/android/ce;->f:Z

    return v0
.end method

.method static synthetic g(Lcom/twitter/android/ce;)Lws;
    .locals 1

    .prologue
    .line 864
    iget-object v0, p0, Lcom/twitter/android/ce;->i:Lws;

    return-object v0
.end method

.method static synthetic h(Lcom/twitter/android/ce;)Lcom/twitter/library/card/q;
    .locals 1

    .prologue
    .line 864
    iget-object v0, p0, Lcom/twitter/android/ce;->j:Lcom/twitter/library/card/q;

    return-object v0
.end method

.method static synthetic i(Lcom/twitter/android/ce;)Z
    .locals 1

    .prologue
    .line 864
    iget-boolean v0, p0, Lcom/twitter/android/ce;->k:Z

    return v0
.end method

.method static synthetic j(Lcom/twitter/android/ce;)Z
    .locals 1

    .prologue
    .line 864
    iget-boolean v0, p0, Lcom/twitter/android/ce;->l:Z

    return v0
.end method

.method static synthetic k(Lcom/twitter/android/ce;)Z
    .locals 1

    .prologue
    .line 864
    iget-boolean v0, p0, Lcom/twitter/android/ce;->g:Z

    return v0
.end method

.method static synthetic l(Lcom/twitter/android/ce;)Z
    .locals 1

    .prologue
    .line 864
    iget-boolean v0, p0, Lcom/twitter/android/ce;->h:Z

    return v0
.end method


# virtual methods
.method public a(Landroid/content/Context;)Lcom/twitter/android/ce;
    .locals 0

    .prologue
    .line 880
    iput-object p1, p0, Lcom/twitter/android/ce;->a:Landroid/content/Context;

    .line 881
    return-object p0
.end method

.method public a(Lcom/twitter/android/by;)Lcom/twitter/android/ce;
    .locals 0

    .prologue
    .line 892
    iput-object p1, p0, Lcom/twitter/android/ce;->c:Lcom/twitter/android/by;

    .line 893
    return-object p0
.end method

.method public a(Lcom/twitter/android/dl;)Lcom/twitter/android/ce;
    .locals 0

    .prologue
    .line 898
    iput-object p1, p0, Lcom/twitter/android/ce;->d:Lcom/twitter/android/dl;

    .line 899
    return-object p0
.end method

.method public a(Lcom/twitter/library/card/q;)Lcom/twitter/android/ce;
    .locals 0

    .prologue
    .line 934
    iput-object p1, p0, Lcom/twitter/android/ce;->j:Lcom/twitter/library/card/q;

    .line 935
    return-object p0
.end method

.method public a(Lcom/twitter/library/scribe/TwitterScribeAssociation;)Lcom/twitter/android/ce;
    .locals 0

    .prologue
    .line 886
    iput-object p1, p0, Lcom/twitter/android/ce;->b:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    .line 887
    return-object p0
.end method

.method public a(Lws;)Lcom/twitter/android/ce;
    .locals 0

    .prologue
    .line 928
    iput-object p1, p0, Lcom/twitter/android/ce;->i:Lws;

    .line 929
    return-object p0
.end method

.method public a(Z)Lcom/twitter/android/ce;
    .locals 0

    .prologue
    .line 904
    iput-boolean p1, p0, Lcom/twitter/android/ce;->e:Z

    .line 905
    return-object p0
.end method

.method protected b()Lcom/twitter/android/cc;
    .locals 2

    .prologue
    .line 959
    new-instance v0, Lcom/twitter/android/cc;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/twitter/android/cc;-><init>(Lcom/twitter/android/ce;Lcom/twitter/android/cd;)V

    return-object v0
.end method

.method public b(Z)Lcom/twitter/android/ce;
    .locals 0

    .prologue
    .line 910
    iput-boolean p1, p0, Lcom/twitter/android/ce;->f:Z

    .line 911
    return-object p0
.end method

.method public bq_()Z
    .locals 1

    .prologue
    .line 952
    iget-object v0, p0, Lcom/twitter/android/ce;->a:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/ce;->b:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/ce;->c:Lcom/twitter/android/by;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/ce;->d:Lcom/twitter/android/dl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/ce;->i:Lws;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c(Z)Lcom/twitter/android/ce;
    .locals 0

    .prologue
    .line 916
    iput-boolean p1, p0, Lcom/twitter/android/ce;->g:Z

    .line 917
    return-object p0
.end method

.method protected synthetic c()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 864
    invoke-virtual {p0}, Lcom/twitter/android/ce;->b()Lcom/twitter/android/cc;

    move-result-object v0

    return-object v0
.end method

.method public d(Z)Lcom/twitter/android/ce;
    .locals 0

    .prologue
    .line 922
    iput-boolean p1, p0, Lcom/twitter/android/ce;->h:Z

    .line 923
    return-object p0
.end method

.method public e(Z)Lcom/twitter/android/ce;
    .locals 0

    .prologue
    .line 940
    iput-boolean p1, p0, Lcom/twitter/android/ce;->k:Z

    .line 941
    return-object p0
.end method

.method public f(Z)Lcom/twitter/android/ce;
    .locals 0

    .prologue
    .line 946
    iput-boolean p1, p0, Lcom/twitter/android/ce;->l:Z

    .line 947
    return-object p0
.end method
